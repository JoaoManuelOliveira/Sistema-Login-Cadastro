use BancoDsw;

#tabela usuario
insert into usuarios (idUsuario, nome, apelido, email, senha)
values
  (1, 'Andrews Gabriel Gomes Chapinha Teles', 'Goleiro Andrews', 'andrewggst@gmail.com', 'cisciscis'),
  (2, 'João Paulo Collado', 'JPC', 'jpcoladissimo@gmail.com', '1112'),
  (3, 'Etep Pedro dos Santos', 'Tlgd', 'jpsbala@gmail.com', 'euodeioolevi'),
  (4, 'João Manual Cesário de Jesus Oliveira', 'Manual', 'diocarecudo@gmail.com', 'hjemeuovojoao'),
  (5, 'Financeiro Lopes Ciardi', 'Financeiro', 'desviandodogremio@gmail.com', 'java'),
  (6, 'Ronaldinho Campos FragaS', 'Ronaldinho', 'ronaldinhosoad@gmail.com', 'soad'),
  (7, 'Etep Viana da Silva', 'Etep', 'eutomeietep@gmail.com', 'vaicorinthians'),
  (8, 'Matheus Pietro do Carmo oiiiiiiiiiiiiiiiiiii', 'Lerdão', 'oiiiiiiiiiiiiiiiiiiiiiii@gmail.com', 'cbjr'),
  (9, 'Pedro Lima do Ini3', 'Pedrão', 'pedraodoini3@gmail.com', 'coelho'),
  (10, 'David', 'Dvd9 (ou Gelado)', 'gelado@gmail.com', 'ficafrioai'),
  (11, 'Pedro Antônio Periférico Pacheco', 'Periférico', 'soosperifericos@gmail.com', 'sk8'),
  (12, 'Roberto ', 'O  Botijão', 'robeeeeeeeeeeeeeerto@gmail.com', 'botijao');
  


select * from usuarios;
#delete from usuarios where idUsuario >= 13;


#tabela times
insert into times (idtime, nome, dataCriacao, qtdTitulos)
values
  (1, 'Ceará SMP','2024-10-08' , 1),
  (2, 'ZL FC','2023-04-05' , null),
  (3, 'T.P.M','2022-10-27' , null),
  (4, 'Real Matismo','2024-11-25' , null),
  (5, 'Real Madruga',null , null);

select * from times;

#tabela titulos
insert into titulos(idTitulo, nome)
values
  (1, 'Interclasse'),
  (2, 'Áurea Cup');

select * from titulos;
	
