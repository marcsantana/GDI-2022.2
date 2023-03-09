-- ORDER BY
-- Selects all users and order them by their age
SELECT * 
    FROM USUARIO
    ORDER BY IDADE;
--------------------

-- MIN
-- Selects all users that have the minimum age (the age is limited to 18)
SELECT nome, idade 
    FROM USUARIO
    WHERE idade = (SELECT MIN(idade) FROM Usuario);
--------------------

-- MAX
-- Selects all users that have the biggest age in the database
SELECT nome, idade
    FROM USUARIO
    WHERE idade = (SELECT MAX(idade) FROM Usuario);
-----------------------------

-- AVG
-- Gets the average age of the users table, and this result is round;
SELECT ROUND(AVG(IDADE)) AS AVERAGE_AGE
    FROM USUARIO;

-- GROUP BY
-- Groups the age of the users table; i.e if two users have the same age, the specific COUNT(*) line for this age would be 2;
SELECT idade, COUNT(*) AS Qtd_Usuarios
    FROM USUARIO
    GROUP BY idade;
------------------------

-- HAVING
-- Groups the songs by their 'genero', but only the songs that have the 'MPB' genero;
SELECT genero, COUNT(*) AS Qtd_Musica_Genero
	FROM MUSICA
	GROUP BY genero
	HAVING genero LIKE 'MPB';

-- CREATE PROCEDURE
-- Procedure to insert Values into the Evento table;
CREATE OR REPLACE PROCEDURE inserir_Evento (
    v_idEven Evento.id_evento%TYPE,
    v_Local Evento.localizacao%TYPE,
    v_dataInicio Evento.data_inicio%TYPE,
    v_dataFim Evento.data_fim%TYPE,
    v_nome Evento.nome%TYPE
) IS
BEGIN
    INSERT INTO Evento VALUES (v_idEven,v_Local,v_dataInicio,v_dataFim,v_nome);
END inserir_Evento;