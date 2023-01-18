CREATE TABLE `alunos` (
  `id` int PRIMARY KEY,
  `nome` varchar(255),
  `nascimento` varchar(255),
  `turma_id` varchar(255)
);

CREATE TABLE `turmas` (
  `id` int PRIMARY KEY,
  `alunos_id` varchar(255),
  `curso_id` varchar(255),
  `disciplina` varchar(255),
  `turno` varchar(255)
);

CREATE TABLE `curso` (
  `id` int PRIMARY KEY,
  `nome` varchar(255),
  `area` varchar(255),
  `turmas_id` varchar(255)
);

CREATE TABLE `professor` (
  `id` int PRIMARY KEY,
  `nome` varchar(255),
  `disciplina` varchar(255),
  `turmas_id` varchar(255),
  `curso_id` varchar(255)
);

ALTER TABLE `turmas` ADD FOREIGN KEY (`id`) REFERENCES `alunos` (`turma_id`);

ALTER TABLE `turmas` ADD FOREIGN KEY (`alunos_id`) REFERENCES `alunos` (`id`);

ALTER TABLE `curso` ADD FOREIGN KEY (`turmas_id`) REFERENCES `turmas` (`curso_id`);

ALTER TABLE `curso` ADD FOREIGN KEY (`turmas_id`) REFERENCES `professor` (`turmas_id`);

ALTER TABLE `turmas` ADD FOREIGN KEY (`curso_id`) REFERENCES `professor` (`curso_id`);
