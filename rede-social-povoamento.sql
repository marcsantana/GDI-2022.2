--Insert infos definidas com CPF
INSERT INTO Usuario 
VALUES ('89547832565','Gabriel Carvalho', 18);
INSERT INTO Logradouro
VALUES ('89547832565', 'Brasil', '54410320', 'PE', 'Jaboatão dos Guararapes', 'Rua Maria Rita Barradas', 36);
INSERT INTO Contato
VALUES ('89547832565', '81993338673');
INSERT INTO Contato
VALUES ('89547832565', '81993238173');
INSERT INTO conta VALUES ('Gabriel', 'Carvalho2565', 'Gabriel565@gmail.com', '89547832565');

 
INSERT INTO Usuario 
VALUES ('65924587136','Francisca Silva', 20);
INSERT INTO Logradouro 
VALUES ('65924587136', 'Brasil', '54350320', 'PE', 'Jaboatão dos Guararapes', 'Rua Santa Terezinha', 45);
INSERT INTO Contato
VALUES ('65924587136', '81993338674');
INSERT INTO Contato
VALUES ('65924587136', '81993238174');
INSERT INTO conta VALUES ('Francisca', 'rancisca7136', 'Francisca136@gmail.com', '65924587136');


INSERT INTO Usuario 
VALUES ('78922398471','José Amargo', 45);
INSERT INTO Logradouro 
VALUES ('78922398471', 'Brasil', '03928040', 'SP', 'São Paulo', 'Rua Mário Tarenghi', 71);
INSERT INTO Contato
VALUES ('78922398471', '81993338675');
INSERT INTO Contato
VALUES ('78922398471', '81993238175');
INSERT INTO conta VALUES ('José', 'sé922398471', 'José471@gmail.com', '78922398471');


INSERT INTO Usuario
VALUES ('00541639874', 'Tomás Nascimento', 37);
INSERT INTO Logradouro 
VALUES ('00541639874', 'Brasil', '04891990', 'SP', 'São Paulo', 'Rua Filomena Belmont', 123);
INSERT INTO Contato
VALUES ('00541639874', '81993338676');
INSERT INTO conta VALUES ('Tomás', 'ascimento541639874', 'Tomás874@gmail.com', '00541639874');


INSERT INTO Usuario
VALUES ('89456918267', 'Marcelo Santana', 65);
INSERT INTO Logradouro 
VALUES ('89456918267', 'Brasil', '30512171', 'MG', 'Belo Horizonte', 'Beco Padre Teixeira', 42);
INSERT INTO Contato
VALUES ('89456918267', '81993338677');
INSERT INTO conta VALUES ('Marcelo', 'Santana18267', 'Marcelo267@gmail.com', '89456918267');



INSERT INTO Usuario
VALUES ('74028498321', 'Ícaro Nunes', 25); 
INSERT INTO Logradouro 
VALUES ('74028498321', 'Brasil', '26250630', 'RJ', 'Nova Iguaçu', 'Rua Marília Barbosa', 223);
INSERT INTO Contato
VALUES ('74028498321', '81993338678');
INSERT INTO conta VALUES ('Ícaro', 'nes8321', 'Ícaro321@gmail.com', '74028498321');


INSERT INTO Usuario
VALUES ('12584970220', 'João Victor', 48);
INSERT INTO Logradouro 
VALUES ('12584970220', 'Brasil', '30620525', 'MG', 'Belo Horizonte', 'Rua Quatro Mil e Seis', 98);
INSERT INTO Contato
VALUES ('12584970220', '81993338679');
INSERT INTO conta VALUES ('João', 'João970220', 'João220@gmail.com', '12584970220');


INSERT INTO Usuario
VALUES ('7418360275', 'Eliab Bernardino', 84); --acho que esse cpf ta menor que o resto
INSERT INTO Logradouro 
VALUES ('7418360275', 'Brasil', '68120991', 'PA', 'Santarém', 'Estrada Santarém-Mujuí', 89);
INSERT INTO Contato
VALUES ('7418360275', '81993338680');
INSERT INTO conta VALUES ('Eliab', 'Bernardino60275', 'Eliab275@gmail.com', '7418360275');


INSERT INTO Usuario
VALUES ('78541036942','Maria Eduarda',52);
INSERT INTO Logradouro 
VALUES ('78541036942', 'Brasil', '58011298', 'PB', 'João Pessoa', 'Rua 15 de Janeiro', 194);
INSERT INTO Contato
VALUES ('78541036942', '81993338681');
INSERT INTO conta VALUES ('Maria', 'duarda6942', 'Maria942@gmail.com', '78541036942');


INSERT INTO Usuario
VALUES ('48759659899','Ana Beatriz',23);
INSERT INTO Logradouro 
VALUES ('48759659899', 'Brasil', '58079252', 'PB', 'João Pessoa', 'Rua Climene Pontes da Costa', 13);
INSERT INTO Contato
VALUES ('48759659899', '81993338682');
INSERT INTO Contato
VALUES ('48759659899', '81993238182');
INSERT INTO conta VALUES ('Ana', 'Ana759659899', 'Ana899@gmail.com', '48759659899');

INSERT INTO Usuario 
VALUES ('71447832565','Amadeo Carvalho', 18);
INSERT INTO Logradouro
VALUES ('71447832565', 'Brasil', '54120320', 'PB', 'Joao Pessoa', 'Rua Rita Barradas', 74);
INSERT INTO Contato
VALUES ('71447832565', '81683338673');
INSERT INTO Contato
VALUES ('71447832565', '81673238173');
INSERT INTO conta VALUES ('Amadeo', 'Carvalho7144', 'Amadeo7144@gmail.com', '71447832565');


INSERT INTO Usuario 
VALUES ('71443532565','Amado Batista', 18);
INSERT INTO Logradouro
VALUES ('71443532565', 'Brasil', '54120320', 'DF', 'Brasilia', 'Rua Maria Barradas', 94);
INSERT INTO Contato
VALUES ('71443532565', '81690338673');
INSERT INTO Contato
VALUES ('71443532565', '81679138173');
INSERT INTO conta VALUES ('Amado', 'Batista2565', 'Amado2565@gmail.com', '71443532565');

-- INSERT Evento ---------------------------------------------------------------------------------------------------
INSERT INTO Evento (LOCALIZACAO, DATA_INICIO, DURACAO, NOME)
VALUES ('São Paulo', '28-Jul-2022', 4, 'Lollapalooza 2022');

INSERT INTO Evento (LOCALIZACAO, DATA_INICIO, DURACAO, NOME)
VALUES ('Rio de Janeiro', '02-Sep-2022', 10, 'Rock In Rio IX');

INSERT INTO Evento (LOCALIZACAO, DATA_INICIO, DURACAO, NOME)
VALUES ('Olinda', '18-Feb-2023', 4, 'Carvalheira 2023');

INSERT INTO Evento (LOCALIZACAO, DATA_INICIO, DURACAO, NOME)
VALUES ('Recife', '17-Feb-2023', 5, 'Carnaval Recife');

INSERT INTO Evento (LOCALIZACAO, DATA_INICIO, DURACAO, NOME)
VALUES ('Londres', '13-Jul-1985', 1, 'Live Aid Londres');

INSERT INTO Evento (LOCALIZACAO, DATA_INICIO, DURACAO, NOME)
VALUES ('Bethel, NY', '15-Aug-1969', 4, 'Woodstock');

INSERT INTO Evento (LOCALIZACAO, DATA_INICIO, DURACAO, NOME)
VALUES ('São Paulo', '02-Sep-2023', 5, 'The Town 2023');
--------------------------------------------------------------------------------------------------------------------



-- INSERT Compositor -----------------------------------------------------------------------------------------------
-- 'Eliab Bernardino'
INSERT INTO Compositor (CPF_COMPOSITOR)
VALUES ('7418360275');

-- 'Francisca Silva'
INSERT INTO Compositor (CPF_COMPOSITOR)
VALUES ('65924587136');

-- 'José Amargo'
INSERT INTO Compositor (CPF_COMPOSITOR)
VALUES ('78922398471');

-- 'Ana Beatriz'
INSERT INTO Compositor (CPF_COMPOSITOR)
VALUES ('48759659899');
--------------------------------------------------------------------------------------------------------------------



-- INSERT Musica ---------------------------------------------------------------------------------------------------
INSERT INTO Musica (CPF_COMPOSITOR, NOME_MUSICA, GENERO, ANO)
VALUES ('7418360275', 'O Segundo Sol', 'MPB', 1999);

INSERT INTO Musica (CPF_COMPOSITOR, NOME_MUSICA, GENERO, ANO)
VALUES ('7418360275', 'I Kissed A Girl', 'Pop', 2008);

INSERT INTO Musica (CPF_COMPOSITOR, NOME_MUSICA, GENERO, ANO)
VALUES ('7418360275', 'Malvadão 3', 'Rap', 2021);

INSERT INTO Musica (CPF_COMPOSITOR, NOME_MUSICA, GENERO, ANO)
VALUES ('65924587136', 'Kiss Me More', 'Rap', 2021);

INSERT INTO Musica (CPF_COMPOSITOR, NOME_MUSICA, GENERO, ANO)
VALUES ('65924587136', 'Mastermind', 'Folk', 2022);

INSERT INTO Musica (CPF_COMPOSITOR, NOME_MUSICA, GENERO, ANO)
VALUES ('78922398471', 'Born & Raised', 'Country', 2012);

INSERT INTO Musica (CPF_COMPOSITOR, NOME_MUSICA, GENERO, ANO)
VALUES ('78922398471', 'Take Me Home, Country Roads', 'Country', 1971);

INSERT INTO Musica (CPF_COMPOSITOR, NOME_MUSICA, GENERO, ANO)
VALUES ('48759659899', 'Quando A Chuva Passar', 'MPB', 2005);

INSERT INTO Musica (CPF_COMPOSITOR, NOME_MUSICA, GENERO, ANO)
VALUES ('48759659899', 'Se Eu Não Te Amasse Tanto Assim', 'MPB', 1999);

INSERT INTO Musica (CPF_COMPOSITOR, NOME_MUSICA, GENERO, ANO)
VALUES ('48759659899', 'Viver Sem Ti', 'MPB', 2010);
--------------------------------------------------------------------------------------------------------------------


-- INSERT Patrocinador------------------------------------------------------------------------------------------------------------------
INSERT INTO Patrocinador 
VALUES ('89547832565', '12345678910112') --CPF gabriel


INSERT INTO Patrocinador 
VALUES ('65924587136', '11109865432101') --CPF Francisca


INSERT INTO Patrocinador 
VALUES ('78922398471', '12109865432101') --CPF José


--INSERT Empresa------------------------------------------------------------------------------------------------------------------

INSERT INTO Empresa
VALUES ('12109865432101', 'Jositos') --Empresa cadastrada com cps de José


INSERT INTO Empresa
VALUES ('11109865432101', 'Francisbacon') --Empresa cadastrada com cps de Fran


INSERT INTO Empresa
VALUES ('12345678910112', 'Games Gabe') --Empresa cadastrada com cps de Gabriel

-- INSERT MUSICO----------------------------------------------------------------------------------------------------
-- Amadeo Carvalho
INSERT INTO Musico (CPF_Musico, Nome_Artistico)
VALUES ('71447832565', 'Amadeus Mozart');
-- Amado Batista
INSERT INTO Musico (CPF_Musico, Nome_Artistico)
VALUES ('71443532565', 'Amado Belo');
-- 'José Amargo'
INSERT INTO Musico (CPF_Musico, Nome_Artistico)
VALUES ('78922398471', 'José Saramago');
-- 'Ana Beatriz'
INSERT INTO Musico (CPF_Musico, Nome_Artistico)
VALUES ('48759659899', 'Ana Cavaquinho');
----------------------------------------------------------------------------------------------------------------------
-- Insert Seguir------------------------------------------------------------------------------------------------------
-- Tomás Segue Ana Beatriz
INSERT INTO Seguir (CPF_Seguido, CPF_Seguidor)
VALUES ('00541639874','48759659899');
-- Ícaro Nunes Segue Amadeo Carvalho
INSERT INTO Seguir (CPF_Seguido, CPF_Seguidor)
VALUES ('74028498321','71447832565');
-- Amado Batista Segue José Amargo
INSERT INTO Seguir (CPF_Seguido, CPF_Seguidor)
VALUES ('71443532565','78922398471');
-- José Amargo Segue Amado Batista
INSERT INTO Seguir (CPF_Seguido, CPF_Seguidor)
VALUES ('78922398471','71443532565');
-- Eliab Bernardino Segue Marcelo Santana
INSERT INTO Seguir (CPF_Seguido, CPF_Seguidor)
VALUES ('7418360275','89456918267');