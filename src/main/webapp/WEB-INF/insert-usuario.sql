INSERT INTO tb_regra_acesso ( criado_em, criado_por, nome ) VALUES ( '2017-02-15', 'assinc', 'ADMIN' );
INSERT INTO tb_perfil ( criado_em, criado_por, nome ) VALUES ( '2017-02-15', 'assinc', 'System Administrator' );
INSERT INTO tb_perfil_regra_acesso ( perfil_id, regra_acesso_id ) VALUES (1, 1);


INSERT INTO tb_usuario ( criado_em, criado_por, nome, email, enabled, perfil_id, status,empresa_tenant_id ) VALUES ( '2017-02-15', 'assinc', 'Edmilson Reis', 'admin@gmail.com', 1, 1, 1, 1001 );
INSERT INTO tb_autenticacao ( criado_em, criado_por, password, usuario_id ) VALUES ('2017-02-15', 'assinc', SHA2('admin', 256), 1 );

INSERT INTO tb_usuario ( criado_em, criado_por, nome, email, enabled, perfil_id, status,empresa_tenant_id ) VALUES ( '2017-02-15', 'assinc', 'Kauan dos Reis', 'kauan@gmail.com', 1, 1, 1, 2002 );
INSERT INTO tb_autenticacao ( criado_em, criado_por, password, usuario_id ) VALUES ('2017-02-15', 'assinc', SHA2('admin', 256), 2 );

INSERT INTO tb_usuario ( criado_em, criado_por, nome, email, enabled, perfil_id, status,empresa_tenant_id ) VALUES ( '2017-02-15', 'assinc', 'Lukas Batista', 'lukas@gmail.com', 1, 1, 1, 3003 );
INSERT INTO tb_autenticacao ( criado_em, criado_por, password, usuario_id ) VALUES ('2017-02-15', 'assinc', SHA2('admin', 256), 3 );


INSERT INTO empresa (id, cpf_cnpj, razao_social) VALUES (1001, '72540094000100', 'DISK 1001');
INSERT INTO empresa (id, cpf_cnpj, razao_social) VALUES (2002, '44193669000112', 'DISK 2002');
INSERT INTO empresa (id, cpf_cnpj, razao_social) VALUES (3003, '32421905000121', 'DISK 3003');

INSERT INTO endereco (bairro, cep, cidade, desc_uf, logradouro, uf) VALUES ('Alto da Rua XV', '80045-385', 'Curitiba', 'Parana', 'Avenida Sete de Setembro', 'PR');
INSERT INTO endereco (bairro, cep, cidade, desc_uf, logradouro, uf) VALUES ('Centro', '80410-270', 'Curitiba', 'Parana', 'Jardinete Capitão Eduardo Albuquerque Torres Pereira', 'PR');
INSERT INTO endereco (bairro, cep, cidade, desc_uf, logradouro, uf) VALUES ('Cidade Industrial', '81460-250', 'Curitiba', 'Parana', 'Rua Romeu Felipe Bacellar', 'PR');
INSERT INTO endereco (bairro, cep, cidade, desc_uf, logradouro, uf) VALUES ('Boqueirão', '81730-050', 'Curitiba', 'Parana', 'das carmelitas', 'PR');
INSERT INTO endereco (bairro, cep, cidade, desc_uf, logradouro, uf) VALUES ('Boqueirão', '81730-250', 'Curitiba', 'Parana', 'Rua João Fain', 'PR');
