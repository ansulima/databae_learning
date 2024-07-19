https://dbdiagram.io

Básico

Criação de Database:
Exercício: Crie um banco de dados chamado Empresa.
Expectativa: Um novo banco de dados chamado Empresa deve ser criado.

Criação de Tabela com Chave Primária:
Exercício: Dentro do banco de dados Empresa, crie uma tabela Funcionarios com as seguintes colunas: id (chave primária, inteiro, auto-incremento), nome (texto), email (texto único).

Expectativa: Tabela Funcionarios deve existir com as colunas especificadas, e id deve autoincrementar. Inserção de Dados e Constraint UNIQUE:

Exercício: Insira três funcionários na tabela Funcionarios, garantindo que os emails sejam únicos.
Expectativa: Dados inseridos sem erros de violação de unicidade.

Consulta Simples com CRUD - Read: Exercício: Selecione todos os funcionários cujo nome começa com a letra 'A'.
Expectativa: Lista dos funcionários cujo nome começa com 'A'.

Atualização de Dados com CRUD - Update: Exercício: Atualize o email do funcionário cujo id é 1 para um novo email.
Expectativa: O email do funcionário com id 1 deve ser atualizado sem violar a constraint de unicidade

Exclusão de Dados com CRUD - Delete: Exercício: Delete o funcionário cujo id é 3. Expectativa: O funcionário com id 3 deve ser removido da tabela.

Criação de Tabela com Chave Estrangeira:

Exercício: Crie uma tabela Departamentos com as colunas: departamento_id (chave primária, inteiro, auto-incremento), nome (texto), gerente_id (inteiro, chave estrangeira referenciando id da tabela Funcionarios).

Expectativa: Tabela Departamentos deve ser criada com uma relação de chave estrangeira correta.

Inserção com Chave Estrangeira: Exercício: Insira um departamento chamado "TI" com o gerente_id sendo o id de um dos funcionários existentes.
Expectativa: Departamento inserido corretamente, respeitando a existência do gerente_id.

Consulta com Join: Exercício: Faça uma consulta para listar todos os departamentos e o nome dos seus gerentes. Expectativa: Lista dos departamentos junto com o nome dos gerentes correspondentes.

Uso de BETWEEN e IN: Exercício: Selecione todos os funcionários cujo id está entre 2 e 4 e cujo nome está em uma lista de nomes específicos (ex: 'Ana', 'Carlos').

Expectativa: Lista de funcionários que satisfazem ambas as condições.

Intermediário
Consulta Avançada com Subquery:

Exercício: Selecione os nomes dos departamentos cujos gerentes têm um id menor que 5. **Expectativa: **Nomes dos departamentos cujos gerentes têm id < 5. Atualização com Subquery:

Exercício: Atualize o gerente_id do departamento de TI para o id de um funcionário cujo nome é 'Maria'. Expectativa: gerente_id do departamento de TI atualizado corretamente.

Consulta com UNION:

Exercício: Faça uma consulta que combine os nomes dos funcionários e os nomes dos departamentos em uma única lista. Expectativa: Lista combinada contendo tanto nomes de funcionários quanto de departamentos.
Deleção e Manutenção de IDs Sequenciais:

Exercício: Delete o departamento 'RH' e insira um novo departamento chamado 'Marketing', garantindo que os IDs sequenciais não sejam reutilizados. Expectativa: 'RH' removido e 'Marketing' adicionado com um novo ID sequencial.
Consulta Complexa com Joins Múltiplos:

Exercício: Liste todos os funcionários, os departamentos a que pertencem e o nome de seus gerentes. Expectativa: Informações detalhadas sobre funcionários, seus departamentos e gerentes.