
CREATE SCHEMA IF NOT EXISTS `manutencao` DEFAULT CHARACTER SET utf8 ;
USE `manutencao` ;


CREATE TABLE  `manutencao`.`turnos de trabalho` 
(
  `Id_turno` INT NOT NULL,
  `horario_inicio` TIME NOT NULL,
  `horario_fim` TIME NOT NULL,
  `nome_turno` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`Id_turno`)
);



CREATE `manutencao`.`formacao` 
(
  `Id_formacao` INT NOT NULL,
  `nome_formacao` VARCHAR(45) NOT NULL,
  `tipo_formacao` VARCHAR(45) NOT NULL,
  `carga_horaria` TIME NOT NULL,
  `data_formacao` DATE NOT NULL,
  PRIMARY KEY (`Id_formacao`)
);


CREATE `manutencao`.`manutentor` 
(
  `Id_manutentor` INT NOT NULL,
  `matricula` INT NOT NULL,
  `telefone` CHAR(11) NOT NULL,
  `nome` VARCHAR(45) NOT NULL,
  `sobrenome` VARCHAR(45) NOT NULL,
  `cargo` VARCHAR(45) NOT NULL,
  `Id_turno_trabalho` INT NOT NULL,
  `Id_formacao` INT NOT NULL,
  PRIMARY KEY (`Id_manutentor`),
  INDEX `fk_manutentor_turnos de trabalho1_idx` (`Id_turno_trabalho` ASC) VISIBLE,
  INDEX `fk_manutentor_formacao1_idx` (`Id_formacao` ASC) VISIBLE,
  CONSTRAINT `fk_manutentor_turnos de trabalho1`
    FOREIGN KEY (`Id_turno_trabalho`)
    REFERENCES `manutencao`.`turnos de trabalho` (`Id_turno`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_manutentor_formacao1`
    FOREIGN KEY (`Id_formacao`)
    REFERENCES `manutencao`.`formacao` (`Id_formacao`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
);

CREATE TABLE IF NOT EXISTS `manutencao`.`material` (
  `Id_material` INT NOT NULL,
  `descricao` VARCHAR(45) NOT NULL,
  `preco` DECIMAL NOT NULL,
  PRIMARY KEY (`Id_material`)
);

CREATE `manutencao`.`ordem de serviço` (
  `Id_ordem_de_servico` INT NOT NULL,
  `descricao` VARCHAR(45) NOT NULL,
  `data_inicio` DATE NOT NULL,
  `data_termino` DATE NOT NULL,
  `tempo_execucao` TIME NOT NULL,
  `status_os` VARCHAR(45) NOT NULL,
  `tipo_os` VARCHAR(45) NOT NULL,
  `tipo_trabalho` VARCHAR(45) NOT NULL,
  `Id_material` INT NOT NULL,
  PRIMARY KEY (`Id_ordem_de_servico`),
  INDEX `fk_ordem de serviço_material1_idx` (`Id_material` ASC) VISIBLE,
  CONSTRAINT `fk_ordem de serviço_material1`
    FOREIGN KEY (`Id_material`)
    REFERENCES `manutencao`.`material` (`Id_material`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
);

CREATE TABLE IF NOT EXISTS `manutencao`.`ordem em execução` (
  `Id_ordem_em_execução` INT NOT NULL,
  `Id_ordem_de_servico` INT NOT NULL,
  `Id_manutentor` INT NOT NULL,
  PRIMARY KEY (`Id_ordem_em_execução`),
  INDEX `fk_ordens em execução_ordem de serviço1_idx` (`Id_ordem_de_servico` ASC) VISIBLE,
  INDEX `fk_ordem em execução_manutentor1_idx` (`Id_manutentor` ASC) VISIBLE,
  CONSTRAINT `fk_ordens em execução_ordem de serviço1`
    FOREIGN KEY (`Id_ordem_de_servico`)
    REFERENCES `manutencao`.`ordem de serviço` (`Id_ordem_de_servico`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_ordem em execução_manutentor1`
    FOREIGN KEY (`Id_manutentor`)
    REFERENCES `manutencao`.`manutentor` (`Id_manutentor`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
