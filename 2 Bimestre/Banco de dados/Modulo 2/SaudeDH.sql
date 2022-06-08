CREATE DATABASE SaudeDH;
/* CREATE SCHEMA SaudeDH; */

USE SaudeDH;

CREATE TABLE Paciente 
(
     nPacienteID INT AUTO_INCREMENT PRIMARY KEY,
     strNome VARCHAR(25) NOT NULL,
     strSobrenome VARCHAR(30) NOT NULL,
     strCPF CHAR(11) NOT NULL
);

CREATE TABLE Consulta
(
     nConsultaID INT AUTO_INCREMENT PRIMARY KEY,
     nPacienteID INT NOT NULL,
     nMedicoID INT NOT NULL,
     dtConsulta DATE NOT NULL,
     dtHoraConsulta TIME NOT NULL
);

CREATE TABLE Especialidade 
(
	nEspecialidadeID INT AUTO_INCREMENT PRIMARY KEY,
    strNome VARCHAR(50) NOT NULL
);

CREATE TABLE Medico
(
	nMedicoID INT AUTO_INCREMENT PRIMARY KEY,
    strNome VARCHAR(25) NOT NULL,
    strSobrenome VARCHAR(40) NOT NULL,
    strNumeroConselho CHAR(10) NULL
);

ALTER TABLE Medico ADD nEspecialidadeID INT NULL;
ALTER TABLE Medico ADD CONSTRAINT FK_Medico_Especialidade_nEspecialidadeID
FOREIGN KEY (nEspecialidadeID) REFERENCES Especialidade (nEspecialidadeID);

CREATE TABLE Especialidade
(
	nEspecialidadeID INT,
    nMedicoID INT,
    CONSTRAINT PK_EspecialidadeMedico PRIMARY KEY (nEspecialidadeID, nMedicoID),
    CONSTRAINT FK_4 FOREIGN KEY (nEspecialidadeID) REFERENCES Especialidade (nEspecialidadeID),
    CONSTRAINT FK_5 FOREIGN KEY (nMedidoID) REFERENCES Medico (nMedicoID)
    );