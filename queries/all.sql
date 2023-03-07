-- The most basic commands are distributed in the other files, this file contains the queries



-- SELECT-FROM-WHERE
SELECT * FROM Evento WHERE LOCALIZACAO = 'São Paulo';
--------------------



-- BETWEEN
SELECT * FROM Evento WHERE DATA_INICIO BETWEEN '01-Jan-1950' AND '01-Jan-2000';
--------------------



-- IN
--Selects all songs that were composed by female composers - 'Ana Beatriz' and 'Francisca Silva's CPFs
SELECT * FROM MUSICA WHERE CPF_COMPOSITOR IN ('65924587136', '48759659899');
--------------------



-- LIKE
--Selects all songs that contain the substring 'Kiss' in its title
SELECT * FROM MUSICA WHERE NOME_MUSICA LIKE '%Kiss%';
--------------------



-- IS NULL
--Selects all users that have no compositions
SELECT USUARIO.*
    FROM USUARIO
    LEFT JOIN COMPOSITOR ON USUARIO.CPF = COMPOSITOR.CPF_COMPOSITOR
	LEFT JOIN MUSICA ON COMPOSITOR.CPF_COMPOSITOR = MUSICA.CPF_COMPOSITOR
WHERE
    NOME_MUSICA IS NULL;
--------------------



-- INNER JOIN
--Selects all users that are registered as composers
SELECT USUARIO.*
    FROM USUARIO
    INNER JOIN COMPOSITOR ON USUARIO.CPF = COMPOSITOR.CPF_COMPOSITOR;
--------------------