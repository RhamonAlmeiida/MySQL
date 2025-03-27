CREATE TABLE profissoes(
	id int primary key auto_increment,
    nome varchar(50) not null unique,
    salario double,
    quantidade_horas int
);

select id, nome, salario, quantidade_horas, descrição from profissoes;
insert into profissoes (nome, salario, quantidade_horas) values ('Advogado', '5000.90', '80');
insert into profissoes (nome, salario, quantidade_horas) value ('Biólogo', '3500.00', '220');
insert into profissoes (nome, salario, quantidade_horas) value ('Pedreiro', '10000.00', '200');

ALTER TABLE profissoes ADD COLUMN descricao text;
update profissoes set descrição = 'Advogado experiente e dedicado, com vasta atuação em diversas áreas do Direito, oferecendo consultoria e representação jurídica com compromisso e ética. Especializado em (inserir área de especialização, como Direito Civil, Penal, Trabalhista, Empresarial, etc.), busca sempre a melhor solução para seus clientes, com foco na resolução eficiente de conflitos e na defesa dos direitos e interesses. Comprometido com a excelência, oferece um atendimento personalizado, garantindo transparência e confiança ao longo de todo o processo.' where id = 1;
update profissoes set descrição = 'Biólogo com formação sólida e experiência em pesquisa e desenvolvimento nas mais diversas áreas da biologia, incluindo (inserir especialização, como biologia molecular, ecologia, conservação ambiental, genética, etc.). Com uma abordagem científica e analítica, busca compreender e preservar os processos naturais que regem a vida, contribuindo para a solução de problemas ambientais e para o avanço do conhecimento científico. Comprometido com a sustentabilidade e com a educação ambiental, atua em projetos de conservação, estudos de impacto ambiental e consultoria para empresas e organizações, sempre com responsabilidade e ética.' where id = 2;
update profissoes set descrição = 'Pedreiro qualificado e experiente, especializado na execução de obras de construção e reforma, com habilidade no manuseio de diversos materiais e técnicas. Com atenção aos detalhes e compromisso com a qualidade, realiza serviços como alvenaria, assentamento de pisos, construção de estruturas e acabamentos. Garantindo um trabalho seguro, eficiente e dentro dos prazos estabelecidos, busca sempre entregar resultados duráveis e de alto padrão, atendendo às necessidades dos clientes com profissionalismo e dedicação.' where id = 3;


insert into profissoes (nome, salario, quantidade_horas) value ('Motorista', 3800.87, '140');
update profissoes set descrição = 'Motorista profissional com ampla experiência em condução de veículos leves e pesados, responsável, pontual e comprometido com a segurança no trânsito. Habilidoso em planejamento de rotas e cumprimento de prazos, garantindo sempre a entrega ou transporte de cargas e passageiros com eficiência. Possui excelente conhecimento das leis de trânsito e manutenção básica de veículos, oferecendo um serviço confiável e seguro. Adaptável a diferentes tipos de trajetos e condições de trabalho, está sempre pronto para atender às necessidades dos clientes com dedicação e responsabilidade.' where id = 4;

insert into profissoes (nome) value ('Programador');
update profissoes set descrição = 'Programador experiente com sólido conhecimento em diversas linguagens de programação, como (inserir linguagens, como Python, Java, C++, JavaScript, etc.), e especializado no desenvolvimento de soluções tecnológicas inovadoras. Com forte habilidade em análise de sistemas, codificação e testes, busca sempre otimizar processos e criar soluções eficientes, escaláveis e seguras. Possui experiência em desenvolvimento web, aplicativos e integração de sistemas, trabalhando com metodologias ágeis e sempre comprometido com a entrega de resultados dentro do prazo e com a máxima qualidade. Focado em melhorar a experiência do usuário e a performance dos sistemas, o programador é capaz de adaptar-se às necessidades de diferentes projetos e ambientes.' where id = 5;

INSERT INTO profissoes (nome, salario, quantidade_horas, descrição) VALUES
('João Silva', 3500.00, 40, 'Analista de sistemas com experiência em desenvolvimento web e mobile.'),
('Maria Oliveira', 4200.00, 42, 'Médica clínica geral, especializada em atendimentos emergenciais.'),
('Pedro Santos', 2800.00, 44, 'Pedreiro com experiência em reformas e construção civil.'),
('Ana Souza', 2200.00, 36, 'Assistente administrativa, com foco em organização e suporte ao escritório.'),
('Carlos Pereira', 5000.00, 40, 'Engenheiro civil com experiência em grandes obras de infraestrutura.'),
('Fernanda Lima', 1800.00, 30, 'Caixa de supermercado, com atenção ao atendimento ao cliente e operações.'),
('Lucas Costa', 4500.00, 45, 'Programador JavaScript com foco em desenvolvimento front-end e back-end.'),
('Júlia Martins', 3000.00, 40, 'Designer gráfico com habilidades em criação de logotipos e materiais digitais.'),
('Renato Gomes', 7000.00, 50, 'Diretor de marketing, especialista em estratégias digitais e campanhas.'),
('Larissa Alves', 3200.00, 40, 'Psicóloga clínica, com foco em terapia cognitivo-comportamental.'),
('Marcos Silva', 3800.00, 44, 'Motorista profissional, experiente em transporte de cargas e passageiros.'),
('Beatriz Santos', 2500.00, 38, 'Enfermeira com atuação em UTI e assistência hospitalar.'),
('Gabriel Costa', 6000.00, 40, 'Arquiteto especializado em projetos residenciais e comerciais.'),
('Paula Rodrigues', 3600.00, 42, 'Educadora física, com experiência em personal training e grupos de atividades.'),
('Tiago Oliveira', 4800.00, 45, 'Gerente de TI, especializado em infraestrutura e segurança de redes corporativas.'),
('Vanessa Lima', 2900.00, 40, 'Contadora com foco em auditoria fiscal e consultoria tributária.'),
('Felipe Souza', 1700.00, 36, 'Ajudante de cozinha, com experiência em preparos e organização de cozinha.'),
('Gabriela Martins', 2400.00, 40, 'Recepcionista bilíngue com experiência em atendimento ao público internacional.'),
('Eduardo Ferreira', 5500.00, 45, 'Advogado especializado em Direito Empresarial e Consultoria Jurídica.'),
('Clara Santos', 3000.00, 40, 'Veterinária com atuação em clínica e cirurgia de pequenos animais.');

delete from profissoes where id in (6, 7, 8, 9, 10, 11, 12, 13) ; -- Deleta mais de um registro de uma vez.

select * from profissoes where nome like 'P%'; -- Consulta profissões que começam com letra P

select * from profissoes where salario > 2000 and quantidade_hora < 150; -- Consultar as profissões que o salário base é maior que 2000 e a quantidade de horas é menor que 150

select * from profissoes ORDER BY salario ASC; -- Consultar as profissões do menor salário base para o maior

select * from profissoes where salario between 2500 and 2800; -- Consultar as profissões que tem o salário base entre 2500 e 8000

select * from profissoes where salario is null; -- Consultar as profissões que não tem o salário base definido

select * from profissoes order by quantidade_horas desc; -- Consultar as profissões ordenadas por quantidade de horas do maior para o menor

select * from profissoes where quantidade_horas < 100 OR quantidade_horas > 220; -- Consultar as profissões que tem a quantidade de horas menor que 100 horas ou maior que 220

select * from profissoes where nome like '%i%'; -- Consultar as profissões que contenham 'i' em qualquer parte;

select * from profissoes where quantidade_horas is  null; -- Consultar as profissões que não tem a quantidade de horas definidas

select * from profissoes order by quantidade_horas ASC; -- Consultar as profissões ordenadas por quantidade de horas do menor para o maior

select * from profissoes where nome like 'M%'; -- Consultar as profissões que começam com 'M';

select * from profissoes limit 5; -- Consultar as profissões listando 5 registros

select * from profissoes order by id ASC limit 5 offset 0; -- Consultar as profissões listando 5 registros da primeira página, ordenando por id crescente

select * from profissoes order by id ASC limit 5 offset 5; -- Consultar as profissões listando 5 registros da segunda página, ordenando por id crescente

select * from profissoes order by id ASC limit 5 offset 10; -- Consultar as profissões listando 5 registros da terceira página, ordenando por id crescente

select * from profissoes order by id ASC limit 5 offset 15; -- Consultar as profissões listando 5 registros da quarta página, ordenando por id crescente

select count(*) from profissoes; -- Repetir até a última página

select * from profissoes where nome like '%o'; -- Consultar as profissões que terminam com 'o';

select concat(nome, quantidade_horas) AS nome_horas  from profissoes; -- Consultar o nome concatenado com sua quantidade de horas

select length(nome), nome AS Quantidade_nome from profissoes; -- Consultar o nome e a quantidade de caracteres

select nome, length(nome) as quant_caracter from profissoes order by quant_caracter desc; -- Consultar o nome e a quantidade de caracteres ordenados pela quantidade de caracteres do maior para menor

select upper(nome) as maisculo from profissoes; -- Consultar o nome da profissão em letras maiúsculas

select min(salario) as menor_salario from profissoes ; -- Consultar o menor salário base

select sum(salario) as soma_salario from profissoes; -- Consultar a soma dos salários base

select max(salario) as maior_salario from profissoes; -- Consultar o maior salário

select min(salario) as menor_salario from profissoes where quantidade_horas > 150; -- Consultar o menor salário em que a quantidade de horas é maior que 150

select avg(salario) as média_salario from profissoes where salario between 5000.00 and 7000.00;

select lower(nome) as maisculo from profissoes; -- Consultar o nome da profissão em letras minúsculas



s






