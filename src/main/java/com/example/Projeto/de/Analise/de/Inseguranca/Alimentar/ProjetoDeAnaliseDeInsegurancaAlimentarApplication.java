package com.example.Projeto.de.Analise.de.Inseguranca.Alimentar;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.core.io.ClassPathResource;
import org.springframework.jdbc.datasource.init.DataSourceInitializer;
import org.springframework.jdbc.datasource.init.ResourceDatabasePopulator;

import javax.sql.DataSource;

@SpringBootApplication
public class ProjetoDeAnaliseDeInsegurancaAlimentarApplication {

	public static void main(String[] args) {
		SpringApplication.run(ProjetoDeAnaliseDeInsegurancaAlimentarApplication.class, args);
	}
	@Bean
	public DataSourceInitializer dataSourceInitializer(DataSource dataSource) {
		ResourceDatabasePopulator populator = new ResourceDatabasePopulator();
		populator.addScript(new ClassPathResource("data.sql"));
		populator.setContinueOnError(true); // Continua mesmo se houver erros

		DataSourceInitializer initializer = new DataSourceInitializer();
		initializer.setDataSource(dataSource);
		initializer.setDatabasePopulator(populator);
		initializer.setEnabled(true); // Garante que está ativado

		return initializer;
	}
}
