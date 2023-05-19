use bd_rh_joaovitor;
select * from tb_cargo;
alter table tb_cargo rename column cd_cargo to codCargo;
alter table tb_cargo rename column cargo to descricao;

#1 - Listar registro(s) com codDepartamento = 2 na tabela tb_funcionario
select * from tb_funcionário where codDepartamento = 2;

#2 - Listar registro(s) com codCargo = 1 na tabela funcionário
select * from tb_funcionário where codCargo = 1;

#3 - Remover registro(s) com codCargo = 1 na tabela tb_cargo
delete from tb_cargo where codCargo = 1; -- ERRO: É CHAVE ESTRANGEIRA NA TB_FUNCIONARIO

#4 - Remover registor(s) com codDepartamento = 1 na tabela tb_departamento
delete from tb_departamento where codDepartamento = 1; -- ERRO: É CHAVE ESTRANGEIRA NA TB_FUNCIONARIO

#5 - Alterar o salário do funcionário com matrícula 1 para 6000
update tb_funcionário set salario = 6000 where matrícula = 1;

#6 - Diminuir o salário de todos os funcionários em 5%
update tb_funcionário set salario = salario * 0.95;

#7 - Listar os funcionários que possuem salário > 5000
select * from tb_funcionário where salario > 5000;

#8 - Listar funcionários(as) que são adm
select * from tb_cargo;
select * from tb_funcionário where codCargo = 2;

#9 - Listar funcionários(as) que trabalham na enfermaria
select * from tb_funcionário where codDepartamento = 1;

-- UTILIZAÇÃO DO SINAL DE DIFERENTE "<>"
select * from tb_funcionário where codDepartamento <> 1;

-- CONSULTAR QUE REGISTROS QUE O NOME COMEÇA COM JOSE
select * from tb_funcionário where nome like 'Jose%'; # % --> "qualquer coisa"

-- CONSULTAR REGISTROS QUE O NOME TERMINA COM ABRANTES
select * from tb_funcionário where nome like '%Abrantes'; # % --> "qualquer coisa"

-- CONSULTAR REGISTROS EM QUE HÁ UM SOBRENOME 
-- QUE COMECE COM A LETRA A
select * from tb_funcionário where nome like '% A%'; # % --> "qualquer coisa"

-- UTILIZAÇÃO DO IN --> SELECIONAR FUNCIONÁRIOS COM codCargo = 1, 2 ou 5
select * from tb_funcionário where codCargo in (1, 2, 5);

-- SELECIONAR FUNCIONÁRIOS COM salario >= 5000 E codCargo = 4
select * from tb_funcionário where salario >= 5000 and codCargo = 4;

-- UTILIZAÇÃO DO BETWEEN
select * from tb_funcionário where salario between 5000 and 8000;

-- UTILIZAÇÃO DO ORDER BY --> ORDENAR
#1 - ordenar por nome
select * from tb_funcionário order by nome;

-- PEGAR AS N PRIMEIRAS LINHAS --> limit
select * from tb_funcionário;

-- DISTINCT --> MOSTRA TODOS OS REGISTROS PREENCHIDOS SEM REPETI-LOS
select distinct codDepartamento from tb_funcionário;

-- EXERCÍCIO
#1 - Listar todos os funcionários que trabalham no departamento de "Admnistração"

#2 - Listar todos os funcionários que possuem o nome que inicia com a letra "J"

#3 - Listar os cargos com código igual a 3 e 4

#4 - Listar os nomes dos funcionários em ordem alfabética

#5 - Listar os nomes dos funcionários em ordem alfabética decrescente