CREATE TABLE Usuario (
      CPF VARCHAR2(11),
      Nome VARCHAR2(20),
      Idade NUMBER,
  
      CONSTRAINT Usuario_pkey PRIMARY KEY (CPF)
);

CREATE TABLE Logradouro (
      CPF_Usuario VARCHAR2(11),
      País VARCHAR2(10),
      CEP VARCHAR2(8),
      Estado VARCHAR2(18),
      Cidade VARCHAR2(30),
      Rua VARCHAR2(30),
      Numero NUMBER,

      CONSTRAINT Logradouro_pkey PRIMARY KEY (CEP),
      CONSTRAINT Logradouro_fkey FOREIGN KEY (CPF_Usuario) REFERENCES Usuario(CPF)
);

CREATE TABLE Contato (
    CPF_Usuario VARCHAR2(11),
    Telefone VARCHAR2(11),
    
    CONSTRAINT Contato_pkey PRIMARY KEY (CPF_Usuario,Telefone),
    CONSTRAINT Contato_fkey FOREIGN KEY (CPF_Usuario) REFERENCES Usuario(CPF)
);

CREATE TABLE Compositor (
      CPF_Compositor VARCHAR2(11),

      CONSTRAINT Compositor_pkey PRIMARY KEY (CPF_Compositor),
      CONSTRAINT Compositor_fkey FOREIGN KEY (CPF_Compositor) REFERENCES Usuario(CPF)
);

CREATE TABLE Musico (
      CPF_Musico VARCHAR2(11),
      Nome_Artistico VARCHAR2(20),

      CONSTRAINT Musico_pkey PRIMARY KEY (CPF_Musico),
      CONSTRAINT Musico_fkey FOREIGN KEY (CPF_Musico) REFERENCES Usuario(CPF)
);

CREATE TABLE Patrocinador (
      CPF_Patrocinador VARCHAR2(11),
      CNPJ VARCHAR2(14),

      CONSTRAINT Patrocinador_pkey PRIMARY KEY (CPF_Patrocinador),
      CONSTRAINT Patrocinador_fkey FOREIGN KEY (CPF_Patrocinador) REFERENCES Usuario(CPF)
);

CREATE TABLE Empresa (
      CNPJ_Empresa VARCHAR2(14),
      Nome_Fantasia VARCHAR2(20),

      CONSTRAINT Empresa_pkey PRIMARY KEY (CNPJ_Empresa)
);

--- ATENÇÃO NESSA TABELA, não faria sentido ter a duração como Data (era melhor refatorar para uma Data Final). Se um Evento fosse durar 1 ano, por exemplo, poderíamos colocar que a Duração seria de 365 dias, considerando essa chave apenas como dias.
CREATE TABLE Evento (
      ID_Evento VARCHAR2(10),
      Localizacao VARCHAR2(15),
      Data_Inicio DATE,
      Data_Fim DATE,
      Nome VARCHAR2(20),

      CONSTRAINT Evento_pkey PRIMARY KEY (ID_Evento)
);

CREATE TABLE Conta (
      Nome_Usuario VARCHAR2(30),
      Senha VARCHAR2(30) NOT NULL,
      Email VARCHAR2(60) UNIQUE,
      CPF_Usuario VARCHAR2(11),

      CONSTRAINT Conta_pkey PRIMARY KEY (Nome_Usuario),
      CONSTRAINT Conta_fkey FOREIGN KEY (CPF_Usuario) REFERENCES Usuario(CPF)
);

CREATE TABLE Musica (
      Nome_Musica VARCHAR2(60),
      CPF_Compositor VARCHAR2(11),
      Genero VARCHAR2(30),
      Ano NUMBER(4,0),

      CONSTRAINT Musica_pkey PRIMARY KEY (Nome_Musica,CPF_Compositor),
      CONSTRAINT Musica_fkey FOREIGN KEY (CPF_Compositor) REFERENCES Compositor(CPF_Compositor),
      
      CHECK (Ano BETWEEN 1500 AND 2023)
);

CREATE TABLE Seguir (
      CPF_Seguido VARCHAR2(11),
      CPF_Seguidor VARCHAR2(11),

      CONSTRAINT Seguir_pkey PRIMARY KEY (CPF_Seguido, CPF_Seguidor),
      
      CONSTRAINT Seguir_fkey1 FOREIGN KEY (CPF_Seguido) REFERENCES Usuario(CPF),
      
      CONSTRAINT Seguir_fkey2 FOREIGN KEY (CPF_Seguidor) REFERENCES Usuario(CPF)
);

CREATE TABLE Comparecer (
      CPF_Usuario VARCHAR2(11),
      ID_Evento VARCHAR2(10),

      CONSTRAINT Comparecer_pkey PRIMARY KEY (CPF_Usuario,ID_Evento),
      
      CONSTRAINT Comparecer_fkey1 FOREIGN KEY (CPF_Usuario) REFERENCES Usuario(CPF),
      
      CONSTRAINT Comparecer_fkey2 FOREIGN KEY (ID_Evento) REFERENCES Evento(ID_Evento)
);

CREATE TABLE Publicar (
      CPF_Patrocinador VARCHAR2(11),
      ID_Evento VARCHAR2(10),
      Data_Publicacao DATE,
      Conteudo VARCHAR2(350),

      CONSTRAINT Publicar_pkey PRIMARY KEY (CPF_Patrocinador, ID_Evento, Data_Publicacao),

      CONSTRAINT Publicar_fkey1 FOREIGN KEY (CPF_Patrocinador) REFERENCES Patrocinador(CPF_Patrocinador),

      CONSTRAINT Publicar_fkey2 FOREIGN KEY (ID_Evento) REFERENCES Evento(ID_Evento)
);

CREATE TABLE Reagir (
      CPF_Usuario VARCHAR2(11),
      CPF_Patrocinador VARCHAR2(11),
      ID_Evento VARCHAR2(10),
      Data_Publicacao DATE,

      CONSTRAINT Reagir_pkey PRIMARY KEY (CPF_Usuario, CPF_Patrocinador, ID_Evento, Data_Publicacao),

      CONSTRAINT Reagir_fkey1 FOREIGN KEY (CPF_Usuario) REFERENCES Usuario(CPF),
      
      CONSTRAINT Reagir_fkey2 FOREIGN KEY (CPF_Patrocinador,ID_Evento,Data_Publicacao) REFERENCES Publicar(CPF_Patrocinador, ID_Evento, Data_Publicacao)
);

CREATE TABLE Apresentar (
      CPF_Musico VARCHAR2(11),
      ID_Evento VARCHAR2(10),
      Nome_Musica VARCHAR2(60),
      CPF_Compositor VARCHAR2(11),

      CONSTRAINT Apresentar_pkey PRIMARY KEY (CPF_Musico, ID_Evento, Nome_Musica, CPF_Compositor),

      CONSTRAINT Apresentar_fkey1 FOREIGN KEY (CPF_Musico) REFERENCES Musico(CPF_Musico),

      CONSTRAINT Apresentar_fkey2 FOREIGN KEY (ID_Evento) REFERENCES Evento(ID_Evento),

      CONSTRAINT Apresentar_fkey3 FOREIGN KEY (Nome_Musica, CPF_Compositor) REFERENCES Musica (Nome_Musica,CPF_Compositor)
);