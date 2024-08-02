--------------------------------COMANDOS DML----------------------------------

INSERT INTO estado(codigo, nome) values(1, 'Santa Catarina')
INSERT INTO estado(codigo, nome) values(2, 'Sao Paulo')
INSERT INTO estado(codigo, nome) values(3, 'Rio de Janeiro')

-- o codigo 'codestado' referencia o codigo do estado, entao o 1, por exemplo, referenciara ao Santa Catarina 

INSERT INTO cidade(codigo, nome, codestado) values(1, 'Criciuma', 1)
INSERT INTO cidade(codigo, nome, codestado) values(1, 'Sao Paulo', 2)
INSERT INTO cidade(codigo, nome, codestado) values(1, 'Rio de Janeiro', 3)

INSERT INTO curso(codigo, nome) values(1, 'informatica')

INSERT INTO aluno(codigo, nome, endereco, nomepai, nomemae, cpf, codcurso, codcidade, datanasci, telefone, email)
values(1, 'Joao Victor Benedet Machado', 'Rua Campo Alegre, Nss Sra da Salete', 'Rodrigo Machado', 'Pamela Felisberto' , '244.245.249-23', 1, 1, 1, '21/07/2007', '48999414409', 'jvb3187@gmail.com')

INSERT INTO aluno(codigo, nome, endereco, nomepai, nomemae, cpf, codcurso, codcidade, datanasci, telefone, email)
VALUES (2, 'Maria Clara Silva', 'Avenida das Palmeiras, 123', 'Carlos Silva', 'Ana Silva', '123.456.789-01', 1, 2, '2006-09-15', '11987654321', 'maria.silva@example.com');

INSERT INTO aluno(codigo, nome, endereco, nomepai, nomemae, cpf, codcurso, codcidade, datanasci, telefone, email)
VALUES (4, 'Ana Luiza Costa', 'Praça Central, 789', 'Ricardo Costa', 'Juliana Costa', '321.654.987-23', 1, 1, '2008-06-25', '48987765432', 'ana.costa@example.com');
