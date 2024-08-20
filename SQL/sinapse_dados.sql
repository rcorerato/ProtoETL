prompt PL/SQL Developer import file
prompt Created on segunda-feira, 8 de janeiro de 2007 by Rodrigo
set feedback off
set define off
prompt Disabling triggers for APLICACAO...
alter table APLICACAO disable all triggers;
prompt Disabling triggers for APLICACAO_MENU_ITEM...
alter table APLICACAO_MENU_ITEM disable all triggers;
prompt Disabling triggers for APLICACAO_MODULO...
alter table APLICACAO_MODULO disable all triggers;
prompt Disabling triggers for CARTEIRA_CLIENTES...
alter table CARTEIRA_CLIENTES disable all triggers;
prompt Disabling triggers for PAIS...
alter table PAIS disable all triggers;
prompt Disabling triggers for CIDADE...
alter table CIDADE disable all triggers;
prompt Disabling triggers for CLIENTE...
alter table CLIENTE disable all triggers;
prompt Disabling triggers for CONDICAO_PAGAMENTO...
alter table CONDICAO_PAGAMENTO disable all triggers;
prompt Disabling triggers for CONDICAO_PAGAMENTO_PRAZO...
alter table CONDICAO_PAGAMENTO_PRAZO disable all triggers;
prompt Disabling triggers for CONDICAO_VENDA...
alter table CONDICAO_VENDA disable all triggers;
prompt Disabling triggers for CONDICAO_VENDA_VIA_TRANSP...
alter table CONDICAO_VENDA_VIA_TRANSP disable all triggers;
prompt Disabling triggers for CONSTRAINT...
alter table CONSTRAINT disable all triggers;
prompt Disabling triggers for EMPRESA...
alter table EMPRESA disable all triggers;
prompt Disabling triggers for ESTADO...
alter table ESTADO disable all triggers;
prompt Disabling triggers for FAMILIA_COMERCIAL...
alter table FAMILIA_COMERCIAL disable all triggers;
prompt Disabling triggers for FAMILIA_MATERIAIS...
alter table FAMILIA_MATERIAIS disable all triggers;
prompt Disabling triggers for FORNECEDOR...
alter table FORNECEDOR disable all triggers;
prompt Disabling triggers for IDIOMA...
alter table IDIOMA disable all triggers;
prompt Disabling triggers for MATERIAL...
alter table MATERIAL disable all triggers;
prompt Disabling triggers for ORGANIZACAO...
alter table ORGANIZACAO disable all triggers;
prompt Disabling triggers for PERFIL...
alter table PERFIL disable all triggers;
prompt Disabling triggers for PERFIL_APLICACAO...
alter table PERFIL_APLICACAO disable all triggers;
prompt Disabling triggers for PERFIL_APLICACAO_MENU_ITEM...
alter table PERFIL_APLICACAO_MENU_ITEM disable all triggers;
prompt Disabling triggers for PERFIL_USUARIO...
alter table PERFIL_USUARIO disable all triggers;
prompt Disabling triggers for PESSOA...
alter table PESSOA disable all triggers;
prompt Disabling triggers for PLANTA...
alter table PLANTA disable all triggers;
prompt Disabling triggers for PRODUTO...
alter table PRODUTO disable all triggers;
prompt Disabling triggers for SEQUENCE...
alter table SEQUENCE disable all triggers;
prompt Disabling triggers for UNIDADE_MONETARIA...
alter table UNIDADE_MONETARIA disable all triggers;
prompt Disabling triggers for TAXA_CAMBIO...
alter table TAXA_CAMBIO disable all triggers;
prompt Disabling triggers for UNIDADE_MEDIDA...
alter table UNIDADE_MEDIDA disable all triggers;
prompt Disabling triggers for USUARIO...
alter table USUARIO disable all triggers;
prompt Disabling triggers for VIA_TRANSPORTE...
alter table VIA_TRANSPORTE disable all triggers;
prompt Disabling foreign key constraints for CIDADE...
alter table CIDADE disable constraint C_PAIS_FK;
prompt Disabling foreign key constraints for ESTADO...
alter table ESTADO disable constraint E_PAIS_FK;
prompt Disabling foreign key constraints for PESSOA...
alter table PESSOA disable constraint P_CIDADE_FK;
prompt Disabling foreign key constraints for TAXA_CAMBIO...
alter table TAXA_CAMBIO disable constraint TAXA_CAMBIO_FK1;
alter table TAXA_CAMBIO disable constraint TAXA_CAMBIO_FK2;
prompt Deleting VIA_TRANSPORTE...
delete from VIA_TRANSPORTE;
commit;
prompt Deleting USUARIO...
delete from USUARIO;
commit;
prompt Deleting UNIDADE_MEDIDA...
delete from UNIDADE_MEDIDA;
commit;
prompt Deleting TAXA_CAMBIO...
delete from TAXA_CAMBIO;
commit;
prompt Deleting UNIDADE_MONETARIA...
delete from UNIDADE_MONETARIA;
commit;
prompt Deleting SEQUENCE...
delete from SEQUENCE;
commit;
prompt Deleting PRODUTO...
delete from PRODUTO;
commit;
prompt Deleting PLANTA...
delete from PLANTA;
commit;
prompt Deleting PESSOA...
delete from PESSOA;
commit;
prompt Deleting PERFIL_USUARIO...
delete from PERFIL_USUARIO;
commit;
prompt Deleting PERFIL_APLICACAO_MENU_ITEM...
delete from PERFIL_APLICACAO_MENU_ITEM;
commit;
prompt Deleting PERFIL_APLICACAO...
delete from PERFIL_APLICACAO;
commit;
prompt Deleting PERFIL...
delete from PERFIL;
commit;
prompt Deleting ORGANIZACAO...
delete from ORGANIZACAO;
commit;
prompt Deleting MATERIAL...
delete from MATERIAL;
commit;
prompt Deleting IDIOMA...
delete from IDIOMA;
commit;
prompt Deleting FORNECEDOR...
delete from FORNECEDOR;
commit;
prompt Deleting FAMILIA_MATERIAIS...
delete from FAMILIA_MATERIAIS;
commit;
prompt Deleting FAMILIA_COMERCIAL...
delete from FAMILIA_COMERCIAL;
commit;
prompt Deleting ESTADO...
delete from ESTADO;
commit;
prompt Deleting EMPRESA...
delete from EMPRESA;
commit;
prompt Deleting CONSTRAINT...
delete from CONSTRAINT;
commit;
prompt Deleting CONDICAO_VENDA_VIA_TRANSP...
delete from CONDICAO_VENDA_VIA_TRANSP;
commit;
prompt Deleting CONDICAO_VENDA...
delete from CONDICAO_VENDA;
commit;
prompt Deleting CONDICAO_PAGAMENTO_PRAZO...
delete from CONDICAO_PAGAMENTO_PRAZO;
commit;
prompt Deleting CONDICAO_PAGAMENTO...
delete from CONDICAO_PAGAMENTO;
commit;
prompt Deleting CLIENTE...
delete from CLIENTE;
commit;
prompt Deleting CIDADE...
delete from CIDADE;
commit;
prompt Deleting PAIS...
delete from PAIS;
commit;
prompt Deleting CARTEIRA_CLIENTES...
delete from CARTEIRA_CLIENTES;
commit;
prompt Deleting APLICACAO_MODULO...
delete from APLICACAO_MODULO;
commit;
prompt Deleting APLICACAO_MENU_ITEM...
delete from APLICACAO_MENU_ITEM;
commit;
prompt Deleting APLICACAO...
delete from APLICACAO;
commit;
prompt Loading APLICACAO...
insert into APLICACAO (ID, CODIGO, NOME)
values (1, 'SinapSys', 'ERP SinapSys');
commit;
prompt 1 records loaded
prompt Loading APLICACAO_MENU_ITEM...
insert into APLICACAO_MENU_ITEM (ID, ID_APLICACAO, CODIGO, DESCRICAO, COD_MENU_PAI, POSICAO, ID_APLICACAO_MODULO)
values (1053, 1, 'ConversesdeMedidas1', 'Conversões de Medidas', 'Materiais1', null, 3);
insert into APLICACAO_MENU_ITEM (ID, ID_APLICACAO, CODIGO, DESCRICAO, COD_MENU_PAI, POSICAO, ID_APLICACAO_MODULO)
values (1054, 1, 'Produtos1', 'Produtos', 'Engenharia1', 1, 3);
insert into APLICACAO_MENU_ITEM (ID, ID_APLICACAO, CODIGO, DESCRICAO, COD_MENU_PAI, POSICAO, ID_APLICACAO_MODULO)
values (1055, 1, 'Engenharia1', 'Engenharia', 'Materiais1', 1, 3);
insert into APLICACAO_MENU_ITEM (ID, ID_APLICACAO, CODIGO, DESCRICAO, COD_MENU_PAI, POSICAO, ID_APLICACAO_MODULO)
values (1056, 1, 'abelasdePreos1', 'Tabelas de Preços', 'Preos1', null, 3);
insert into APLICACAO_MENU_ITEM (ID, ID_APLICACAO, CODIGO, DESCRICAO, COD_MENU_PAI, POSICAO, ID_APLICACAO_MODULO)
values (1057, 1, 'Preos1', 'Preços', 'Materiais1', 2, 3);
insert into APLICACAO_MENU_ITEM (ID, ID_APLICACAO, CODIGO, DESCRICAO, COD_MENU_PAI, POSICAO, ID_APLICACAO_MODULO)
values (1058, 1, 'Materiais1', '&Materiais', null, 1, 3);
insert into APLICACAO_MENU_ITEM (ID, ID_APLICACAO, CODIGO, DESCRICAO, COD_MENU_PAI, POSICAO, ID_APLICACAO_MODULO)
values (1059, 1, 'Materiais2', 'Materiais', 'Cadastros1', null, 3);
insert into APLICACAO_MENU_ITEM (ID, ID_APLICACAO, CODIGO, DESCRICAO, COD_MENU_PAI, POSICAO, ID_APLICACAO_MODULO)
values (1060, 1, 'UnidadesdeMedida1', 'Unidades de Medida', 'Cadastros1', 2, 3);
insert into APLICACAO_MENU_ITEM (ID, ID_APLICACAO, CODIGO, DESCRICAO, COD_MENU_PAI, POSICAO, ID_APLICACAO_MODULO)
values (1061, 1, 'FamliasdeMateriais1', 'Famílias de Materiais', 'Cadastros1', 4, 3);
insert into APLICACAO_MENU_ITEM (ID, ID_APLICACAO, CODIGO, DESCRICAO, COD_MENU_PAI, POSICAO, ID_APLICACAO_MODULO)
values (1062, 1, 'FamliasComerciais1', 'Famílias Comerciais', 'Cadastros1', 5, 3);
insert into APLICACAO_MENU_ITEM (ID, ID_APLICACAO, CODIGO, DESCRICAO, COD_MENU_PAI, POSICAO, ID_APLICACAO_MODULO)
values (1063, 1, 'Cadastros1', '&Cadastros', null, 2, 3);
insert into APLICACAO_MENU_ITEM (ID, ID_APLICACAO, CODIGO, DESCRICAO, COD_MENU_PAI, POSICAO, ID_APLICACAO_MODULO)
values (1064, 1, 'MniEmCascata', 'Em cascata', 'MniJanela', null, 3);
insert into APLICACAO_MENU_ITEM (ID, ID_APLICACAO, CODIGO, DESCRICAO, COD_MENU_PAI, POSICAO, ID_APLICACAO_MODULO)
values (1065, 1, 'MniLadoALado', 'Lado a lado', 'MniJanela', 1, 3);
insert into APLICACAO_MENU_ITEM (ID, ID_APLICACAO, CODIGO, DESCRICAO, COD_MENU_PAI, POSICAO, ID_APLICACAO_MODULO)
values (1066, 1, 'MniOrganizarIcones', 'Organizar ícones', 'MniJanela', 2, 3);
insert into APLICACAO_MENU_ITEM (ID, ID_APLICACAO, CODIGO, DESCRICAO, COD_MENU_PAI, POSICAO, ID_APLICACAO_MODULO)
values (1067, 1, 'MniJanela', '&Janela', null, 3, 3);
insert into APLICACAO_MENU_ITEM (ID, ID_APLICACAO, CODIGO, DESCRICAO, COD_MENU_PAI, POSICAO, ID_APLICACAO_MODULO)
values (1068, 1, 'Sobre1', 'Sobre...', 'Ajuda1', null, 3);
insert into APLICACAO_MENU_ITEM (ID, ID_APLICACAO, CODIGO, DESCRICAO, COD_MENU_PAI, POSICAO, ID_APLICACAO_MODULO)
values (1069, 1, 'Ajuda1', 'Aj&uda', null, 4, 3);
insert into APLICACAO_MENU_ITEM (ID, ID_APLICACAO, CODIGO, DESCRICAO, COD_MENU_PAI, POSICAO, ID_APLICACAO_MODULO)
values (1070, 1, 'GravarMenu1', 'Gravar Menu', 'Configurao1', null, 4);
insert into APLICACAO_MENU_ITEM (ID, ID_APLICACAO, CODIGO, DESCRICAO, COD_MENU_PAI, POSICAO, ID_APLICACAO_MODULO)
values (1071, 1, 'Configurao1', 'Configuração', 'Aplicativo1', null, 4);
insert into APLICACAO_MENU_ITEM (ID, ID_APLICACAO, CODIGO, DESCRICAO, COD_MENU_PAI, POSICAO, ID_APLICACAO_MODULO)
values (1072, 1, 'Sair1', 'Sair', 'Aplicativo1', 1, 4);
insert into APLICACAO_MENU_ITEM (ID, ID_APLICACAO, CODIGO, DESCRICAO, COD_MENU_PAI, POSICAO, ID_APLICACAO_MODULO)
values (1073, 1, 'Aplicativo1', '&Aplicativo', null, null, 4);
insert into APLICACAO_MENU_ITEM (ID, ID_APLICACAO, CODIGO, DESCRICAO, COD_MENU_PAI, POSICAO, ID_APLICACAO_MODULO)
values (1074, 1, 'Cotaes1', 'Cotações', 'Vendas1', null, 4);
insert into APLICACAO_MENU_ITEM (ID, ID_APLICACAO, CODIGO, DESCRICAO, COD_MENU_PAI, POSICAO, ID_APLICACAO_MODULO)
values (1075, 1, 'Vendas1', 'Vendas', 'Comercial1', null, 4);
insert into APLICACAO_MENU_ITEM (ID, ID_APLICACAO, CODIGO, DESCRICAO, COD_MENU_PAI, POSICAO, ID_APLICACAO_MODULO)
values (1076, 1, 'Comercial1', '&Comercial', null, 1, 4);
insert into APLICACAO_MENU_ITEM (ID, ID_APLICACAO, CODIGO, DESCRICAO, COD_MENU_PAI, POSICAO, ID_APLICACAO_MODULO)
values (1077, 1, 'Clientes2', 'Clientes', 'Clientes1', null, 4);
insert into APLICACAO_MENU_ITEM (ID, ID_APLICACAO, CODIGO, DESCRICAO, COD_MENU_PAI, POSICAO, ID_APLICACAO_MODULO)
values (1078, 1, 'CarteirasdeClientes1', 'Carteiras de Clientes', 'Clientes1', 1, 4);
insert into APLICACAO_MENU_ITEM (ID, ID_APLICACAO, CODIGO, DESCRICAO, COD_MENU_PAI, POSICAO, ID_APLICACAO_MODULO)
values (1079, 1, 'Clientes1', 'Clientes', 'Cadastros1', null, 4);
insert into APLICACAO_MENU_ITEM (ID, ID_APLICACAO, CODIGO, DESCRICAO, COD_MENU_PAI, POSICAO, ID_APLICACAO_MODULO)
values (1080, 1, 'FamliasComerciais1', 'Famílias Comerciais', 'Materiais1', null, 4);
insert into APLICACAO_MENU_ITEM (ID, ID_APLICACAO, CODIGO, DESCRICAO, COD_MENU_PAI, POSICAO, ID_APLICACAO_MODULO)
values (1081, 1, 'Materiais1', 'Materiais', 'Cadastros1', 1, 4);
insert into APLICACAO_MENU_ITEM (ID, ID_APLICACAO, CODIGO, DESCRICAO, COD_MENU_PAI, POSICAO, ID_APLICACAO_MODULO)
values (1082, 1, 'ViasdeTransporte1', 'Vias de Transporte', 'Cadastros1', 2, 4);
insert into APLICACAO_MENU_ITEM (ID, ID_APLICACAO, CODIGO, DESCRICAO, COD_MENU_PAI, POSICAO, ID_APLICACAO_MODULO)
values (1083, 1, 'CondiesdeVendas1', 'Condições de Vendas', 'Cadastros1', 3, 4);
insert into APLICACAO_MENU_ITEM (ID, ID_APLICACAO, CODIGO, DESCRICAO, COD_MENU_PAI, POSICAO, ID_APLICACAO_MODULO)
values (1084, 1, 'Cadastros1', 'Ca&dastros', null, 2, 4);
insert into APLICACAO_MENU_ITEM (ID, ID_APLICACAO, CODIGO, DESCRICAO, COD_MENU_PAI, POSICAO, ID_APLICACAO_MODULO)
values (1085, 1, 'MniEmCascata', 'Em cascata', 'MniJanela', null, 4);
insert into APLICACAO_MENU_ITEM (ID, ID_APLICACAO, CODIGO, DESCRICAO, COD_MENU_PAI, POSICAO, ID_APLICACAO_MODULO)
values (1086, 1, 'MniLadoALado', 'Lado a lado', 'MniJanela', 1, 4);
insert into APLICACAO_MENU_ITEM (ID, ID_APLICACAO, CODIGO, DESCRICAO, COD_MENU_PAI, POSICAO, ID_APLICACAO_MODULO)
values (1087, 1, 'MniOrganizarIcones', 'Organizar ícones', 'MniJanela', 2, 4);
insert into APLICACAO_MENU_ITEM (ID, ID_APLICACAO, CODIGO, DESCRICAO, COD_MENU_PAI, POSICAO, ID_APLICACAO_MODULO)
values (1088, 1, 'MniJanela', '&Janela', null, 3, 4);
insert into APLICACAO_MENU_ITEM (ID, ID_APLICACAO, CODIGO, DESCRICAO, COD_MENU_PAI, POSICAO, ID_APLICACAO_MODULO)
values (1089, 1, 'Sobre1', 'Sobre...', 'Ajuda1', null, 4);
insert into APLICACAO_MENU_ITEM (ID, ID_APLICACAO, CODIGO, DESCRICAO, COD_MENU_PAI, POSICAO, ID_APLICACAO_MODULO)
values (1090, 1, 'Ajuda1', 'Aj&uda', null, 4, 4);
insert into APLICACAO_MENU_ITEM (ID, ID_APLICACAO, CODIGO, DESCRICAO, COD_MENU_PAI, POSICAO, ID_APLICACAO_MODULO)
values (1091, 1, 'GravarMenu1', 'Gravar Menu', 'Configurao1', null, 5);
insert into APLICACAO_MENU_ITEM (ID, ID_APLICACAO, CODIGO, DESCRICAO, COD_MENU_PAI, POSICAO, ID_APLICACAO_MODULO)
values (1092, 1, 'Configurao1', 'Configuração', 'Aplicativo1', null, 5);
insert into APLICACAO_MENU_ITEM (ID, ID_APLICACAO, CODIGO, DESCRICAO, COD_MENU_PAI, POSICAO, ID_APLICACAO_MODULO)
values (1093, 1, 'Sair1', 'Sair', 'Aplicativo1', 1, 5);
insert into APLICACAO_MENU_ITEM (ID, ID_APLICACAO, CODIGO, DESCRICAO, COD_MENU_PAI, POSICAO, ID_APLICACAO_MODULO)
values (1094, 1, 'Aplicativo1', '&Aplicativo', null, null, 5);
insert into APLICACAO_MENU_ITEM (ID, ID_APLICACAO, CODIGO, DESCRICAO, COD_MENU_PAI, POSICAO, ID_APLICACAO_MODULO)
values (1109, 1, 'Fornecedores2', 'Fornecedores', 'Fornecedores1', null, 2);
insert into APLICACAO_MENU_ITEM (ID, ID_APLICACAO, CODIGO, DESCRICAO, COD_MENU_PAI, POSICAO, ID_APLICACAO_MODULO)
values (1096, 1, 'Financeiro1', '&Financeiro', null, 1, 5);
insert into APLICACAO_MENU_ITEM (ID, ID_APLICACAO, CODIGO, DESCRICAO, COD_MENU_PAI, POSICAO, ID_APLICACAO_MODULO)
values (1097, 1, 'UnidadesMonetrias1', 'Unidades Monetárias', 'Cadastros1', null, 5);
insert into APLICACAO_MENU_ITEM (ID, ID_APLICACAO, CODIGO, DESCRICAO, COD_MENU_PAI, POSICAO, ID_APLICACAO_MODULO)
values (1098, 1, 'Cadastros1', '&Cadastros', null, 2, 5);
insert into APLICACAO_MENU_ITEM (ID, ID_APLICACAO, CODIGO, DESCRICAO, COD_MENU_PAI, POSICAO, ID_APLICACAO_MODULO)
values (1099, 1, 'MniEmCascata', 'Em cascata', 'MniJanela', null, 5);
insert into APLICACAO_MENU_ITEM (ID, ID_APLICACAO, CODIGO, DESCRICAO, COD_MENU_PAI, POSICAO, ID_APLICACAO_MODULO)
values (1100, 1, 'MniLadoALado', 'Lado a lado', 'MniJanela', 1, 5);
insert into APLICACAO_MENU_ITEM (ID, ID_APLICACAO, CODIGO, DESCRICAO, COD_MENU_PAI, POSICAO, ID_APLICACAO_MODULO)
values (1101, 1, 'MniOrganizarIcones', 'Organizar ícones', 'MniJanela', 2, 5);
insert into APLICACAO_MENU_ITEM (ID, ID_APLICACAO, CODIGO, DESCRICAO, COD_MENU_PAI, POSICAO, ID_APLICACAO_MODULO)
values (1102, 1, 'MniJanela', '&Janela', null, 3, 5);
insert into APLICACAO_MENU_ITEM (ID, ID_APLICACAO, CODIGO, DESCRICAO, COD_MENU_PAI, POSICAO, ID_APLICACAO_MODULO)
values (1103, 1, 'Sobre1', 'Sobre...', 'Ajuda1', null, 5);
insert into APLICACAO_MENU_ITEM (ID, ID_APLICACAO, CODIGO, DESCRICAO, COD_MENU_PAI, POSICAO, ID_APLICACAO_MODULO)
values (1104, 1, 'Ajuda1', 'Aj&uda', null, 4, 5);
insert into APLICACAO_MENU_ITEM (ID, ID_APLICACAO, CODIGO, DESCRICAO, COD_MENU_PAI, POSICAO, ID_APLICACAO_MODULO)
values (1105, 1, 'EstruturasdeMateriais1', 'Estruturas de Materiais', 'Engenharia1', null, 3);
insert into APLICACAO_MENU_ITEM (ID, ID_APLICACAO, CODIGO, DESCRICAO, COD_MENU_PAI, POSICAO, ID_APLICACAO_MODULO)
values (1106, 1, 'axasdeCmbio1', 'Taxas de Câmbio', 'Financeiro1', null, 5);
insert into APLICACAO_MENU_ITEM (ID, ID_APLICACAO, CODIGO, DESCRICAO, COD_MENU_PAI, POSICAO, ID_APLICACAO_MODULO)
values (1107, 1, 'Materiais2', 'Materiais', 'Materiais1', null, 2);
insert into APLICACAO_MENU_ITEM (ID, ID_APLICACAO, CODIGO, DESCRICAO, COD_MENU_PAI, POSICAO, ID_APLICACAO_MODULO)
values (1108, 1, 'Produtos1', 'Produtos', 'Materiais1', 3, 2);
insert into APLICACAO_MENU_ITEM (ID, ID_APLICACAO, CODIGO, DESCRICAO, COD_MENU_PAI, POSICAO, ID_APLICACAO_MODULO)
values (1110, 1, 'Fornecedores1', 'Fornecedores', 'Cadastros1', 7, 2);
insert into APLICACAO_MENU_ITEM (ID, ID_APLICACAO, CODIGO, DESCRICAO, COD_MENU_PAI, POSICAO, ID_APLICACAO_MODULO)
values (983, 1, 'ConexodeAplicao1', 'Conexão da Aplicação', 'Configurao1', null, null);
insert into APLICACAO_MENU_ITEM (ID, ID_APLICACAO, CODIGO, DESCRICAO, COD_MENU_PAI, POSICAO, ID_APLICACAO_MODULO)
values (984, 1, 'GravarMenu1', 'Gravar Menu', 'Configurao1', 1, null);
insert into APLICACAO_MENU_ITEM (ID, ID_APLICACAO, CODIGO, DESCRICAO, COD_MENU_PAI, POSICAO, ID_APLICACAO_MODULO)
values (985, 1, 'Configurao1', 'Configuração', 'Aplicativo1', 3, null);
insert into APLICACAO_MENU_ITEM (ID, ID_APLICACAO, CODIGO, DESCRICAO, COD_MENU_PAI, POSICAO, ID_APLICACAO_MODULO)
values (986, 1, 'Sair1', 'Sair', 'Aplicativo1', 5, null);
insert into APLICACAO_MENU_ITEM (ID, ID_APLICACAO, CODIGO, DESCRICAO, COD_MENU_PAI, POSICAO, ID_APLICACAO_MODULO)
values (987, 1, 'Aplicativo1', '&Aplicativo', null, null, null);
insert into APLICACAO_MENU_ITEM (ID, ID_APLICACAO, CODIGO, DESCRICAO, COD_MENU_PAI, POSICAO, ID_APLICACAO_MODULO)
values (988, 1, 'Administrao1', 'Administração', 'Mdulos1', null, null);
insert into APLICACAO_MENU_ITEM (ID, ID_APLICACAO, CODIGO, DESCRICAO, COD_MENU_PAI, POSICAO, ID_APLICACAO_MODULO)
values (989, 1, 'CadastrosBsicos1', 'Cadastros Básicos', 'Mdulos1', 1, null);
insert into APLICACAO_MENU_ITEM (ID, ID_APLICACAO, CODIGO, DESCRICAO, COD_MENU_PAI, POSICAO, ID_APLICACAO_MODULO)
values (990, 1, 'Materiais1', 'Materiais', 'Mdulos1', 2, null);
insert into APLICACAO_MENU_ITEM (ID, ID_APLICACAO, CODIGO, DESCRICAO, COD_MENU_PAI, POSICAO, ID_APLICACAO_MODULO)
values (991, 1, 'Comercial1', 'Comercial', 'Mdulos1', 3, null);
insert into APLICACAO_MENU_ITEM (ID, ID_APLICACAO, CODIGO, DESCRICAO, COD_MENU_PAI, POSICAO, ID_APLICACAO_MODULO)
values (992, 1, 'Financeiro1', 'Financeiro', 'Mdulos1', 4, null);
insert into APLICACAO_MENU_ITEM (ID, ID_APLICACAO, CODIGO, DESCRICAO, COD_MENU_PAI, POSICAO, ID_APLICACAO_MODULO)
values (993, 1, 'Mdulos1', '&Módulos', null, 1, null);
insert into APLICACAO_MENU_ITEM (ID, ID_APLICACAO, CODIGO, DESCRICAO, COD_MENU_PAI, POSICAO, ID_APLICACAO_MODULO)
values (994, 1, 'MniEmCascata', 'Em cascata', 'MniJanela', null, null);
insert into APLICACAO_MENU_ITEM (ID, ID_APLICACAO, CODIGO, DESCRICAO, COD_MENU_PAI, POSICAO, ID_APLICACAO_MODULO)
values (995, 1, 'MniLadoALado', 'Lado a lado', 'MniJanela', 1, null);
insert into APLICACAO_MENU_ITEM (ID, ID_APLICACAO, CODIGO, DESCRICAO, COD_MENU_PAI, POSICAO, ID_APLICACAO_MODULO)
values (996, 1, 'MniOrganizarIcones', 'Organizar ícones', 'MniJanela', 2, null);
insert into APLICACAO_MENU_ITEM (ID, ID_APLICACAO, CODIGO, DESCRICAO, COD_MENU_PAI, POSICAO, ID_APLICACAO_MODULO)
values (997, 1, 'MniJanela', '&Janela', null, 2, null);
insert into APLICACAO_MENU_ITEM (ID, ID_APLICACAO, CODIGO, DESCRICAO, COD_MENU_PAI, POSICAO, ID_APLICACAO_MODULO)
values (998, 1, 'Sobre1', 'Sobre...', 'Ajuda1', null, null);
insert into APLICACAO_MENU_ITEM (ID, ID_APLICACAO, CODIGO, DESCRICAO, COD_MENU_PAI, POSICAO, ID_APLICACAO_MODULO)
values (999, 1, 'Ajuda1', 'Aj&uda', null, 3, null);
insert into APLICACAO_MENU_ITEM (ID, ID_APLICACAO, CODIGO, DESCRICAO, COD_MENU_PAI, POSICAO, ID_APLICACAO_MODULO)
values (1000, 1, 'GravarMenu1', 'Gravar Menu', 'Configurao1', null, 1);
insert into APLICACAO_MENU_ITEM (ID, ID_APLICACAO, CODIGO, DESCRICAO, COD_MENU_PAI, POSICAO, ID_APLICACAO_MODULO)
values (1001, 1, 'Configurao1', 'Configuração', 'Aplicativo1', null, 1);
insert into APLICACAO_MENU_ITEM (ID, ID_APLICACAO, CODIGO, DESCRICAO, COD_MENU_PAI, POSICAO, ID_APLICACAO_MODULO)
values (1002, 1, 'Sair1', 'Sair', 'Aplicativo1', 1, 1);
insert into APLICACAO_MENU_ITEM (ID, ID_APLICACAO, CODIGO, DESCRICAO, COD_MENU_PAI, POSICAO, ID_APLICACAO_MODULO)
values (1003, 1, 'Aplicativo1', '&Aplicativo', null, null, 1);
insert into APLICACAO_MENU_ITEM (ID, ID_APLICACAO, CODIGO, DESCRICAO, COD_MENU_PAI, POSICAO, ID_APLICACAO_MODULO)
values (1004, 1, 'Perfis1', 'Perfis', 'Segurana1', null, 1);
insert into APLICACAO_MENU_ITEM (ID, ID_APLICACAO, CODIGO, DESCRICAO, COD_MENU_PAI, POSICAO, ID_APLICACAO_MODULO)
values (1005, 1, 'Segurana1', 'Segurança', 'Administrao1', null, 1);
insert into APLICACAO_MENU_ITEM (ID, ID_APLICACAO, CODIGO, DESCRICAO, COD_MENU_PAI, POSICAO, ID_APLICACAO_MODULO)
values (1006, 1, 'Administrao1', 'A&dministração', null, 1, 1);
insert into APLICACAO_MENU_ITEM (ID, ID_APLICACAO, CODIGO, DESCRICAO, COD_MENU_PAI, POSICAO, ID_APLICACAO_MODULO)
values (1007, 1, 'Aplicaes1', 'Aplicações', 'Cadastros1', null, 1);
insert into APLICACAO_MENU_ITEM (ID, ID_APLICACAO, CODIGO, DESCRICAO, COD_MENU_PAI, POSICAO, ID_APLICACAO_MODULO)
values (1008, 1, 'Usurios1', 'Usuários', 'Cadastros1', 2, 1);
insert into APLICACAO_MENU_ITEM (ID, ID_APLICACAO, CODIGO, DESCRICAO, COD_MENU_PAI, POSICAO, ID_APLICACAO_MODULO)
values (1009, 1, 'Cadastros1', '&Cadastros', null, 2, 1);
insert into APLICACAO_MENU_ITEM (ID, ID_APLICACAO, CODIGO, DESCRICAO, COD_MENU_PAI, POSICAO, ID_APLICACAO_MODULO)
values (1010, 1, 'MniEmCascata', 'Em cascata', 'MniJanela', null, 1);
insert into APLICACAO_MENU_ITEM (ID, ID_APLICACAO, CODIGO, DESCRICAO, COD_MENU_PAI, POSICAO, ID_APLICACAO_MODULO)
values (1011, 1, 'MniLadoALado', 'Lado a lado', 'MniJanela', 1, 1);
insert into APLICACAO_MENU_ITEM (ID, ID_APLICACAO, CODIGO, DESCRICAO, COD_MENU_PAI, POSICAO, ID_APLICACAO_MODULO)
values (1012, 1, 'MniOrganizarIcones', 'Organizar ícones', 'MniJanela', 2, 1);
insert into APLICACAO_MENU_ITEM (ID, ID_APLICACAO, CODIGO, DESCRICAO, COD_MENU_PAI, POSICAO, ID_APLICACAO_MODULO)
values (1013, 1, 'MniJanela', '&Janela', null, 3, 1);
insert into APLICACAO_MENU_ITEM (ID, ID_APLICACAO, CODIGO, DESCRICAO, COD_MENU_PAI, POSICAO, ID_APLICACAO_MODULO)
values (1014, 1, 'Sobre1', 'Sobre...', 'Ajuda1', null, 1);
insert into APLICACAO_MENU_ITEM (ID, ID_APLICACAO, CODIGO, DESCRICAO, COD_MENU_PAI, POSICAO, ID_APLICACAO_MODULO)
values (1015, 1, 'Ajuda1', 'Aj&uda', null, 4, 1);
insert into APLICACAO_MENU_ITEM (ID, ID_APLICACAO, CODIGO, DESCRICAO, COD_MENU_PAI, POSICAO, ID_APLICACAO_MODULO)
values (1016, 1, 'GravarMenu1', 'Gravar Menu', 'Configurao1', null, 2);
insert into APLICACAO_MENU_ITEM (ID, ID_APLICACAO, CODIGO, DESCRICAO, COD_MENU_PAI, POSICAO, ID_APLICACAO_MODULO)
values (1017, 1, 'Configurao1', 'Configuração', 'Aplicativo1', null, 2);
insert into APLICACAO_MENU_ITEM (ID, ID_APLICACAO, CODIGO, DESCRICAO, COD_MENU_PAI, POSICAO, ID_APLICACAO_MODULO)
values (1018, 1, 'Sair1', 'Sair', 'Aplicativo1', 1, 2);
insert into APLICACAO_MENU_ITEM (ID, ID_APLICACAO, CODIGO, DESCRICAO, COD_MENU_PAI, POSICAO, ID_APLICACAO_MODULO)
values (981, 1, 'Acessar1', 'Acessar', 'Aplicativo1', null, null);
insert into APLICACAO_MENU_ITEM (ID, ID_APLICACAO, CODIGO, DESCRICAO, COD_MENU_PAI, POSICAO, ID_APLICACAO_MODULO)
values (982, 1, 'Mudarsenha1', 'Mudar senha', 'Aplicativo1', 1, null);
insert into APLICACAO_MENU_ITEM (ID, ID_APLICACAO, CODIGO, DESCRICAO, COD_MENU_PAI, POSICAO, ID_APLICACAO_MODULO)
values (1019, 1, 'Aplicativo1', '&Aplicativo', null, null, 2);
insert into APLICACAO_MENU_ITEM (ID, ID_APLICACAO, CODIGO, DESCRICAO, COD_MENU_PAI, POSICAO, ID_APLICACAO_MODULO)
values (1020, 1, 'Idiomas1', 'Idiomas', 'Cadastros1', null, 2);
insert into APLICACAO_MENU_ITEM (ID, ID_APLICACAO, CODIGO, DESCRICAO, COD_MENU_PAI, POSICAO, ID_APLICACAO_MODULO)
values (1021, 1, 'Empresas1', 'Empresas', 'Organizao1', null, 2);
insert into APLICACAO_MENU_ITEM (ID, ID_APLICACAO, CODIGO, DESCRICAO, COD_MENU_PAI, POSICAO, ID_APLICACAO_MODULO)
values (1022, 1, 'Plantas1', 'Plantas', 'Organizao1', 1, 2);
commit;
prompt 100 records committed...
insert into APLICACAO_MENU_ITEM (ID, ID_APLICACAO, CODIGO, DESCRICAO, COD_MENU_PAI, POSICAO, ID_APLICACAO_MODULO)
values (1023, 1, 'Organizaes1', 'Organizações', 'Organizao1', 2, 2);
insert into APLICACAO_MENU_ITEM (ID, ID_APLICACAO, CODIGO, DESCRICAO, COD_MENU_PAI, POSICAO, ID_APLICACAO_MODULO)
values (1024, 1, 'Organizao1', 'Organização', 'Cadastros1', 1, 2);
insert into APLICACAO_MENU_ITEM (ID, ID_APLICACAO, CODIGO, DESCRICAO, COD_MENU_PAI, POSICAO, ID_APLICACAO_MODULO)
values (1025, 1, 'Pases1', 'Países', 'LocalizaoGeogrfica1', null, 2);
insert into APLICACAO_MENU_ITEM (ID, ID_APLICACAO, CODIGO, DESCRICAO, COD_MENU_PAI, POSICAO, ID_APLICACAO_MODULO)
values (1026, 1, 'Estados1', 'Estados', 'LocalizaoGeogrfica1', 1, 2);
insert into APLICACAO_MENU_ITEM (ID, ID_APLICACAO, CODIGO, DESCRICAO, COD_MENU_PAI, POSICAO, ID_APLICACAO_MODULO)
values (1027, 1, 'Cidades1', 'Cidades', 'LocalizaoGeogrfica1', 2, 2);
insert into APLICACAO_MENU_ITEM (ID, ID_APLICACAO, CODIGO, DESCRICAO, COD_MENU_PAI, POSICAO, ID_APLICACAO_MODULO)
values (1028, 1, 'LocalizaoGeogrfica1', 'Localização Geográfica', 'Cadastros1', 2, 2);
insert into APLICACAO_MENU_ITEM (ID, ID_APLICACAO, CODIGO, DESCRICAO, COD_MENU_PAI, POSICAO, ID_APLICACAO_MODULO)
values (1029, 1, 'CondiesdeVendas1', 'Condições de Vendas', 'Negociao1', null, 2);
insert into APLICACAO_MENU_ITEM (ID, ID_APLICACAO, CODIGO, DESCRICAO, COD_MENU_PAI, POSICAO, ID_APLICACAO_MODULO)
values (1030, 1, 'ViasdeTransporte1', 'Vias de Transporte', 'Negociao1', 1, 2);
insert into APLICACAO_MENU_ITEM (ID, ID_APLICACAO, CODIGO, DESCRICAO, COD_MENU_PAI, POSICAO, ID_APLICACAO_MODULO)
values (1031, 1, 'CondiesdePagamento1', 'Condições de Pagamento', 'Negociao1', 2, 2);
insert into APLICACAO_MENU_ITEM (ID, ID_APLICACAO, CODIGO, DESCRICAO, COD_MENU_PAI, POSICAO, ID_APLICACAO_MODULO)
values (1032, 1, 'Negociao1', 'Negociação', 'Cadastros1', 3, 2);
insert into APLICACAO_MENU_ITEM (ID, ID_APLICACAO, CODIGO, DESCRICAO, COD_MENU_PAI, POSICAO, ID_APLICACAO_MODULO)
values (1033, 1, 'UnidadesdeMedida1', 'Unidades de Medida', 'Converso1', null, 2);
insert into APLICACAO_MENU_ITEM (ID, ID_APLICACAO, CODIGO, DESCRICAO, COD_MENU_PAI, POSICAO, ID_APLICACAO_MODULO)
values (1034, 1, 'UnidadesMonetrias1', 'Unidades Monetárias', 'Converso1', 1, 2);
insert into APLICACAO_MENU_ITEM (ID, ID_APLICACAO, CODIGO, DESCRICAO, COD_MENU_PAI, POSICAO, ID_APLICACAO_MODULO)
values (1035, 1, 'Converso1', 'Conversão', 'Cadastros1', 4, 2);
insert into APLICACAO_MENU_ITEM (ID, ID_APLICACAO, CODIGO, DESCRICAO, COD_MENU_PAI, POSICAO, ID_APLICACAO_MODULO)
values (1036, 1, 'FamliasdeMateriais1', 'Famílias de Materiais', 'Materiais1', null, 2);
insert into APLICACAO_MENU_ITEM (ID, ID_APLICACAO, CODIGO, DESCRICAO, COD_MENU_PAI, POSICAO, ID_APLICACAO_MODULO)
values (1037, 1, 'FamliasComerciais1', 'Famílias Comerciais', 'Materiais1', 1, 2);
insert into APLICACAO_MENU_ITEM (ID, ID_APLICACAO, CODIGO, DESCRICAO, COD_MENU_PAI, POSICAO, ID_APLICACAO_MODULO)
values (1038, 1, 'Materiais1', 'Materiais', 'Cadastros1', 5, 2);
insert into APLICACAO_MENU_ITEM (ID, ID_APLICACAO, CODIGO, DESCRICAO, COD_MENU_PAI, POSICAO, ID_APLICACAO_MODULO)
values (1039, 1, 'Clientes2', 'Clientes', 'Clientes1', null, 2);
insert into APLICACAO_MENU_ITEM (ID, ID_APLICACAO, CODIGO, DESCRICAO, COD_MENU_PAI, POSICAO, ID_APLICACAO_MODULO)
values (1040, 1, 'CarteirasdeClientes1', 'Carteiras de Clientes', 'Clientes1', 1, 2);
insert into APLICACAO_MENU_ITEM (ID, ID_APLICACAO, CODIGO, DESCRICAO, COD_MENU_PAI, POSICAO, ID_APLICACAO_MODULO)
values (1041, 1, 'Clientes1', 'Clientes', 'Cadastros1', 6, 2);
insert into APLICACAO_MENU_ITEM (ID, ID_APLICACAO, CODIGO, DESCRICAO, COD_MENU_PAI, POSICAO, ID_APLICACAO_MODULO)
values (1042, 1, 'Cadastros1', '&Cadastros', null, 1, 2);
insert into APLICACAO_MENU_ITEM (ID, ID_APLICACAO, CODIGO, DESCRICAO, COD_MENU_PAI, POSICAO, ID_APLICACAO_MODULO)
values (1043, 1, 'MniEmCascata', 'Em cascata', 'MniJanela', null, 2);
insert into APLICACAO_MENU_ITEM (ID, ID_APLICACAO, CODIGO, DESCRICAO, COD_MENU_PAI, POSICAO, ID_APLICACAO_MODULO)
values (1044, 1, 'MniLadoALado', 'Lado a lado', 'MniJanela', 1, 2);
insert into APLICACAO_MENU_ITEM (ID, ID_APLICACAO, CODIGO, DESCRICAO, COD_MENU_PAI, POSICAO, ID_APLICACAO_MODULO)
values (1045, 1, 'MniOrganizarIcones', 'Organizar ícones', 'MniJanela', 2, 2);
insert into APLICACAO_MENU_ITEM (ID, ID_APLICACAO, CODIGO, DESCRICAO, COD_MENU_PAI, POSICAO, ID_APLICACAO_MODULO)
values (1046, 1, 'MniJanela', '&Janela', null, 2, 2);
insert into APLICACAO_MENU_ITEM (ID, ID_APLICACAO, CODIGO, DESCRICAO, COD_MENU_PAI, POSICAO, ID_APLICACAO_MODULO)
values (1047, 1, 'Sobre1', 'Sobre...', 'Ajuda1', null, 2);
insert into APLICACAO_MENU_ITEM (ID, ID_APLICACAO, CODIGO, DESCRICAO, COD_MENU_PAI, POSICAO, ID_APLICACAO_MODULO)
values (1048, 1, 'Ajuda1', 'Aj&uda', null, 3, 2);
insert into APLICACAO_MENU_ITEM (ID, ID_APLICACAO, CODIGO, DESCRICAO, COD_MENU_PAI, POSICAO, ID_APLICACAO_MODULO)
values (1049, 1, 'GravarMenu1', 'Gravar Menu', 'Configurao1', null, 3);
insert into APLICACAO_MENU_ITEM (ID, ID_APLICACAO, CODIGO, DESCRICAO, COD_MENU_PAI, POSICAO, ID_APLICACAO_MODULO)
values (1050, 1, 'Configurao1', 'Configuração', 'Aplicativo1', null, 3);
insert into APLICACAO_MENU_ITEM (ID, ID_APLICACAO, CODIGO, DESCRICAO, COD_MENU_PAI, POSICAO, ID_APLICACAO_MODULO)
values (1051, 1, 'Sair1', 'Sair', 'Aplicativo1', 1, 3);
insert into APLICACAO_MENU_ITEM (ID, ID_APLICACAO, CODIGO, DESCRICAO, COD_MENU_PAI, POSICAO, ID_APLICACAO_MODULO)
values (1052, 1, 'Aplicativo1', '&Aplicativo', null, null, 3);
commit;
prompt 129 records loaded
prompt Loading APLICACAO_MODULO...
insert into APLICACAO_MODULO (ID, ID_APLICACAO, CODIGO, NOME)
values (1, 1, 'ADM', 'ADMINISTRACAO');
insert into APLICACAO_MODULO (ID, ID_APLICACAO, CODIGO, NOME)
values (2, 1, 'CAD', 'CADASTROS BASICOS');
insert into APLICACAO_MODULO (ID, ID_APLICACAO, CODIGO, NOME)
values (3, 1, 'MAT', 'MATERIAIS');
insert into APLICACAO_MODULO (ID, ID_APLICACAO, CODIGO, NOME)
values (4, 1, 'COM', 'COMERCIAL');
insert into APLICACAO_MODULO (ID, ID_APLICACAO, CODIGO, NOME)
values (5, 1, 'FIN', 'FINANCEIRO');
commit;
prompt 5 records loaded
prompt Loading CARTEIRA_CLIENTES...
prompt Table is empty
prompt Loading PAIS...
insert into PAIS (ID, CODIGO, NOME)
values (1, 'AD', 'ANDORRA');
insert into PAIS (ID, CODIGO, NOME)
values (2, 'AE', 'EMIRADOS ARABES UNIDOS');
insert into PAIS (ID, CODIGO, NOME)
values (3, 'AF', 'AFEGANISTAO');
insert into PAIS (ID, CODIGO, NOME)
values (4, 'AG', 'ANTIGUA E BARBUDA');
insert into PAIS (ID, CODIGO, NOME)
values (5, 'AI', 'ANGUILHA');
insert into PAIS (ID, CODIGO, NOME)
values (6, 'AL', 'ALBANIA');
insert into PAIS (ID, CODIGO, NOME)
values (7, 'AM', 'ARMENIA');
insert into PAIS (ID, CODIGO, NOME)
values (8, 'AN', 'ANTILHAS HOLANDESAS');
insert into PAIS (ID, CODIGO, NOME)
values (9, 'AO', 'ANGOLA');
insert into PAIS (ID, CODIGO, NOME)
values (10, 'AR', 'ARGENTINA');
insert into PAIS (ID, CODIGO, NOME)
values (11, 'AS', 'SAMOA AMERICANA');
insert into PAIS (ID, CODIGO, NOME)
values (12, 'AT', 'AUSTRIA');
insert into PAIS (ID, CODIGO, NOME)
values (13, 'AU', 'AUSTRALIA');
insert into PAIS (ID, CODIGO, NOME)
values (14, 'AW', 'ARUBA');
insert into PAIS (ID, CODIGO, NOME)
values (15, 'AZ', 'AZERBAIJAO');
insert into PAIS (ID, CODIGO, NOME)
values (16, 'BA', 'BOSNIA E HERZEGOVINA');
insert into PAIS (ID, CODIGO, NOME)
values (17, 'BB', 'BARBADOS');
insert into PAIS (ID, CODIGO, NOME)
values (18, 'BD', 'BANGLADESH');
insert into PAIS (ID, CODIGO, NOME)
values (19, 'BE', 'BELGICA');
insert into PAIS (ID, CODIGO, NOME)
values (20, 'BF', 'BURQUINA FASO');
insert into PAIS (ID, CODIGO, NOME)
values (21, 'BG', 'BULGARIA');
insert into PAIS (ID, CODIGO, NOME)
values (22, 'BH', 'BAREM');
insert into PAIS (ID, CODIGO, NOME)
values (23, 'BI', 'BURUNDI');
insert into PAIS (ID, CODIGO, NOME)
values (24, 'BJ', 'BENIM');
insert into PAIS (ID, CODIGO, NOME)
values (25, 'BM', 'BERMUDAS');
insert into PAIS (ID, CODIGO, NOME)
values (26, 'BN', 'BRUNEI');
insert into PAIS (ID, CODIGO, NOME)
values (27, 'BO', 'BOLIVIA');
insert into PAIS (ID, CODIGO, NOME)
values (28, 'BR', 'BRASIL');
insert into PAIS (ID, CODIGO, NOME)
values (29, 'BS', 'BAHAMAS');
insert into PAIS (ID, CODIGO, NOME)
values (30, 'BT', 'BUTAO');
insert into PAIS (ID, CODIGO, NOME)
values (31, 'BU', 'BURMA');
insert into PAIS (ID, CODIGO, NOME)
values (32, 'BW', 'BOTSUANA');
insert into PAIS (ID, CODIGO, NOME)
values (33, 'BY', 'BIELORRÚSSIA');
insert into PAIS (ID, CODIGO, NOME)
values (34, 'BZ', 'BELIZE');
insert into PAIS (ID, CODIGO, NOME)
values (35, 'CA', 'CANADA');
insert into PAIS (ID, CODIGO, NOME)
values (36, 'CC', 'ILHAS DOS COCOS');
insert into PAIS (ID, CODIGO, NOME)
values (37, 'CD', 'REPUBLICA DEMOCRATICA DO CONGO');
insert into PAIS (ID, CODIGO, NOME)
values (38, 'CF', 'REPUBLICA CENTRO-AFRICANA');
insert into PAIS (ID, CODIGO, NOME)
values (39, 'CG', 'CONGO');
insert into PAIS (ID, CODIGO, NOME)
values (40, 'CH', 'SUICA');
insert into PAIS (ID, CODIGO, NOME)
values (41, 'CK', 'ILHAS COOK');
insert into PAIS (ID, CODIGO, NOME)
values (42, 'CL', 'CHILE');
insert into PAIS (ID, CODIGO, NOME)
values (43, 'CM', 'CAMAROES');
insert into PAIS (ID, CODIGO, NOME)
values (44, 'CN', 'CHINA');
insert into PAIS (ID, CODIGO, NOME)
values (45, 'CO', 'COLOMBIA');
insert into PAIS (ID, CODIGO, NOME)
values (46, 'CR', 'COSTA RICA');
insert into PAIS (ID, CODIGO, NOME)
values (47, 'CU', 'CUBA');
insert into PAIS (ID, CODIGO, NOME)
values (48, 'CV', 'CABO VERDE');
insert into PAIS (ID, CODIGO, NOME)
values (49, 'CX', 'ILHA DO NATAL');
insert into PAIS (ID, CODIGO, NOME)
values (50, 'CY', 'CHIPRE');
insert into PAIS (ID, CODIGO, NOME)
values (51, 'CZ', 'REPUBLICA CHECA');
insert into PAIS (ID, CODIGO, NOME)
values (52, 'DE', 'ALEMANHA');
insert into PAIS (ID, CODIGO, NOME)
values (53, 'DJ', 'JIBUTI');
insert into PAIS (ID, CODIGO, NOME)
values (54, 'DK', 'DINAMARCA');
insert into PAIS (ID, CODIGO, NOME)
values (55, 'DM', 'DOMINICA');
insert into PAIS (ID, CODIGO, NOME)
values (56, 'DO', 'REPUBLICA DOMINICANA');
insert into PAIS (ID, CODIGO, NOME)
values (57, 'EC', 'EQUADOR');
insert into PAIS (ID, CODIGO, NOME)
values (58, 'EE', 'ESTONIA');
insert into PAIS (ID, CODIGO, NOME)
values (59, 'EG', 'EGITO');
insert into PAIS (ID, CODIGO, NOME)
values (60, 'EH', 'SAHARA OCIDENTAL');
insert into PAIS (ID, CODIGO, NOME)
values (61, 'ES', 'ESPANHA');
insert into PAIS (ID, CODIGO, NOME)
values (62, 'ET', 'ETIOPIA');
insert into PAIS (ID, CODIGO, NOME)
values (63, 'FI', 'FINLANDIA');
insert into PAIS (ID, CODIGO, NOME)
values (64, 'FJ', 'FIJI');
insert into PAIS (ID, CODIGO, NOME)
values (65, 'FK', 'ILHAS MALVINAS');
insert into PAIS (ID, CODIGO, NOME)
values (66, 'FM', 'MICRONESIA');
insert into PAIS (ID, CODIGO, NOME)
values (67, 'FO', 'ILHAS FAROE');
insert into PAIS (ID, CODIGO, NOME)
values (68, 'FR', 'FRANCA');
insert into PAIS (ID, CODIGO, NOME)
values (69, 'GA', 'GABAO');
insert into PAIS (ID, CODIGO, NOME)
values (70, 'GB', 'REINO UNIDO');
insert into PAIS (ID, CODIGO, NOME)
values (71, 'GD', 'GRANADA');
insert into PAIS (ID, CODIGO, NOME)
values (72, 'GE', 'GEORGIA');
insert into PAIS (ID, CODIGO, NOME)
values (73, 'GF', 'GUIANA FRANCESA');
insert into PAIS (ID, CODIGO, NOME)
values (74, 'GH', 'GANA');
insert into PAIS (ID, CODIGO, NOME)
values (75, 'GI', 'GIBRALTAR');
insert into PAIS (ID, CODIGO, NOME)
values (76, 'GL', 'GROENLANDIA');
insert into PAIS (ID, CODIGO, NOME)
values (77, 'GM', 'GAMBIA');
insert into PAIS (ID, CODIGO, NOME)
values (78, 'GN', 'GUINE');
insert into PAIS (ID, CODIGO, NOME)
values (79, 'GP', 'GUADALUPE');
insert into PAIS (ID, CODIGO, NOME)
values (80, 'GQ', 'GUINE EQUATORIAL');
insert into PAIS (ID, CODIGO, NOME)
values (81, 'GR', 'GRECIA');
insert into PAIS (ID, CODIGO, NOME)
values (82, 'GT', 'GUATEMALA');
insert into PAIS (ID, CODIGO, NOME)
values (83, 'GU', 'GUAME');
insert into PAIS (ID, CODIGO, NOME)
values (84, 'GW', 'GUINE-BISSAU');
insert into PAIS (ID, CODIGO, NOME)
values (85, 'GY', 'GUIANA');
insert into PAIS (ID, CODIGO, NOME)
values (86, 'HK', 'HONG KONG');
insert into PAIS (ID, CODIGO, NOME)
values (87, 'HN', 'HONDURAS');
insert into PAIS (ID, CODIGO, NOME)
values (88, 'HR', 'CROACIA');
insert into PAIS (ID, CODIGO, NOME)
values (89, 'HT', 'HAITI');
insert into PAIS (ID, CODIGO, NOME)
values (90, 'HU', 'HUNGRIA');
insert into PAIS (ID, CODIGO, NOME)
values (91, 'ID', 'INDONESIA');
insert into PAIS (ID, CODIGO, NOME)
values (92, 'IE', 'IRLANDA');
insert into PAIS (ID, CODIGO, NOME)
values (93, 'IL', 'ISRAEL');
insert into PAIS (ID, CODIGO, NOME)
values (94, 'IN', 'INDIA');
insert into PAIS (ID, CODIGO, NOME)
values (95, 'IO', 'TERRITORIO BRITANICO DO OCEANO INDICO');
insert into PAIS (ID, CODIGO, NOME)
values (96, 'IQ', 'IRAQUE');
insert into PAIS (ID, CODIGO, NOME)
values (97, 'IR', 'IRA');
insert into PAIS (ID, CODIGO, NOME)
values (98, 'IS', 'ISLANDIA');
insert into PAIS (ID, CODIGO, NOME)
values (99, 'IT', 'ITALIA');
commit;
prompt 100 records committed...
insert into PAIS (ID, CODIGO, NOME)
values (100, 'JM', 'JAMAICA');
insert into PAIS (ID, CODIGO, NOME)
values (101, 'JO', 'JORDANIA');
insert into PAIS (ID, CODIGO, NOME)
values (102, 'JP', 'JAPAO');
insert into PAIS (ID, CODIGO, NOME)
values (103, 'KE', 'QUENIA');
insert into PAIS (ID, CODIGO, NOME)
values (104, 'KG', 'QUIRGUIZISTAO');
insert into PAIS (ID, CODIGO, NOME)
values (105, 'KH', 'CAMBOJA');
insert into PAIS (ID, CODIGO, NOME)
values (106, 'KI', 'QUIRIBATI');
insert into PAIS (ID, CODIGO, NOME)
values (107, 'KM', 'COMORES');
insert into PAIS (ID, CODIGO, NOME)
values (108, 'KN', 'SAO CRISTOVAO E NEVES');
insert into PAIS (ID, CODIGO, NOME)
values (109, 'KP', 'COREIA DO NORTE');
insert into PAIS (ID, CODIGO, NOME)
values (110, 'KR', 'COREIA DO SUL');
insert into PAIS (ID, CODIGO, NOME)
values (111, 'KY', 'ILHAS CAYMAN');
insert into PAIS (ID, CODIGO, NOME)
values (112, 'KZ', 'CAZAQUISTAO');
insert into PAIS (ID, CODIGO, NOME)
values (113, 'LA', 'LAOS');
insert into PAIS (ID, CODIGO, NOME)
values (114, 'LB', 'LIBANO');
insert into PAIS (ID, CODIGO, NOME)
values (115, 'LC', 'SANTA LUCIA');
insert into PAIS (ID, CODIGO, NOME)
values (116, 'LI', 'LISTENSTAINE');
insert into PAIS (ID, CODIGO, NOME)
values (117, 'LK', 'SRI LANKA');
insert into PAIS (ID, CODIGO, NOME)
values (118, 'LR', 'LIBERIA');
insert into PAIS (ID, CODIGO, NOME)
values (119, 'LS', 'LESOTO');
insert into PAIS (ID, CODIGO, NOME)
values (120, 'LT', 'LITUANIA');
insert into PAIS (ID, CODIGO, NOME)
values (121, 'LU', 'LUXEMBURGO');
insert into PAIS (ID, CODIGO, NOME)
values (122, 'LY', 'LIBIA');
insert into PAIS (ID, CODIGO, NOME)
values (123, 'MA', 'MARROCOS');
insert into PAIS (ID, CODIGO, NOME)
values (124, 'MC', 'MONACO');
insert into PAIS (ID, CODIGO, NOME)
values (125, 'MD', 'MOLDAVIA');
insert into PAIS (ID, CODIGO, NOME)
values (126, 'MG', 'MADAGASCAR');
insert into PAIS (ID, CODIGO, NOME)
values (127, 'MH', 'ILHAS MARSHALL');
insert into PAIS (ID, CODIGO, NOME)
values (128, 'MK', 'MACEDONIA');
insert into PAIS (ID, CODIGO, NOME)
values (129, 'ML', 'MALI');
insert into PAIS (ID, CODIGO, NOME)
values (130, 'MM', 'BIRMANIA');
insert into PAIS (ID, CODIGO, NOME)
values (131, 'MN', 'MONGOLIA');
insert into PAIS (ID, CODIGO, NOME)
values (132, 'MO', 'MACAU');
insert into PAIS (ID, CODIGO, NOME)
values (133, 'MP', 'MARIANAS DO NORTE');
insert into PAIS (ID, CODIGO, NOME)
values (134, 'MQ', 'MARTINICA');
insert into PAIS (ID, CODIGO, NOME)
values (135, 'MR', 'MAURITANIA');
insert into PAIS (ID, CODIGO, NOME)
values (136, 'MS', 'MONTSERRAT');
insert into PAIS (ID, CODIGO, NOME)
values (137, 'MT', 'MALTA');
insert into PAIS (ID, CODIGO, NOME)
values (138, 'MU', 'MAURICIA');
insert into PAIS (ID, CODIGO, NOME)
values (139, 'MV', 'MALDIVAS');
insert into PAIS (ID, CODIGO, NOME)
values (140, 'MW', 'MALAWI');
insert into PAIS (ID, CODIGO, NOME)
values (141, 'MX', 'MEXICO');
insert into PAIS (ID, CODIGO, NOME)
values (142, 'MY', 'MALASIA');
insert into PAIS (ID, CODIGO, NOME)
values (143, 'MZ', 'MOCAMBIQUE');
insert into PAIS (ID, CODIGO, NOME)
values (144, 'NA', 'NAMIBIA');
insert into PAIS (ID, CODIGO, NOME)
values (145, 'NC', 'NOVA CALEDONIA');
insert into PAIS (ID, CODIGO, NOME)
values (146, 'NE', 'NIGER');
insert into PAIS (ID, CODIGO, NOME)
values (147, 'NF', 'ILHA NORFOLK');
insert into PAIS (ID, CODIGO, NOME)
values (148, 'NG', 'NIGERIA');
insert into PAIS (ID, CODIGO, NOME)
values (149, 'NI', 'NICARAGUA');
insert into PAIS (ID, CODIGO, NOME)
values (150, 'NL', 'HOLANDA');
insert into PAIS (ID, CODIGO, NOME)
values (151, 'NO', 'NORUEGA');
insert into PAIS (ID, CODIGO, NOME)
values (152, 'NP', 'NEPAL');
insert into PAIS (ID, CODIGO, NOME)
values (153, 'NR', 'NAURU');
insert into PAIS (ID, CODIGO, NOME)
values (154, 'NU', 'NIUE');
insert into PAIS (ID, CODIGO, NOME)
values (155, 'NZ', 'NOVA ZELANDIA');
insert into PAIS (ID, CODIGO, NOME)
values (156, 'OM', 'OMA');
insert into PAIS (ID, CODIGO, NOME)
values (157, 'PA', 'PANAMA');
insert into PAIS (ID, CODIGO, NOME)
values (158, 'PE', 'PERU');
insert into PAIS (ID, CODIGO, NOME)
values (159, 'PF', 'POLINESIA FRANCESA');
insert into PAIS (ID, CODIGO, NOME)
values (160, 'PG', 'PAPUA-NOVA GUINE');
insert into PAIS (ID, CODIGO, NOME)
values (161, 'PH', 'FILIPINAS');
insert into PAIS (ID, CODIGO, NOME)
values (162, 'PK', 'PAQUISTAO');
insert into PAIS (ID, CODIGO, NOME)
values (163, 'PL', 'POLONIA');
insert into PAIS (ID, CODIGO, NOME)
values (164, 'PM', 'SAO PEDRO E MIQUELON');
insert into PAIS (ID, CODIGO, NOME)
values (165, 'PN', 'PITCAIRN');
insert into PAIS (ID, CODIGO, NOME)
values (166, 'PR', 'PORTO RICO');
insert into PAIS (ID, CODIGO, NOME)
values (167, 'PT', 'PORTUGAL');
insert into PAIS (ID, CODIGO, NOME)
values (168, 'PW', 'PALAU');
insert into PAIS (ID, CODIGO, NOME)
values (169, 'PY', 'PARAGUAI');
insert into PAIS (ID, CODIGO, NOME)
values (170, 'QA', 'CATAR');
insert into PAIS (ID, CODIGO, NOME)
values (171, 'RE', 'REUNIAO');
insert into PAIS (ID, CODIGO, NOME)
values (172, 'RO', 'ROMENIA');
insert into PAIS (ID, CODIGO, NOME)
values (173, 'RU', 'RUSSIA');
insert into PAIS (ID, CODIGO, NOME)
values (174, 'RW', 'RUANDA');
insert into PAIS (ID, CODIGO, NOME)
values (176, 'SA', 'ARABIA SAUDITA');
insert into PAIS (ID, CODIGO, NOME)
values (177, 'SB', 'ILHAS SALOMAO');
insert into PAIS (ID, CODIGO, NOME)
values (178, 'SC', 'SEICHELES');
insert into PAIS (ID, CODIGO, NOME)
values (179, 'SD', 'SUDAO');
insert into PAIS (ID, CODIGO, NOME)
values (180, 'SE', 'SUECIA');
insert into PAIS (ID, CODIGO, NOME)
values (181, 'SG', 'SINGAPURA');
insert into PAIS (ID, CODIGO, NOME)
values (182, 'SH', 'SANTA HELENA');
insert into PAIS (ID, CODIGO, NOME)
values (183, 'SI', 'ESLOVENIA');
insert into PAIS (ID, CODIGO, NOME)
values (184, 'SK', 'ESLOVAQUIA');
insert into PAIS (ID, CODIGO, NOME)
values (185, 'SL', 'SERRA LEOA');
insert into PAIS (ID, CODIGO, NOME)
values (186, 'SM', 'SAO MARINO');
insert into PAIS (ID, CODIGO, NOME)
values (187, 'SN', 'SENEGAL');
insert into PAIS (ID, CODIGO, NOME)
values (188, 'SO', 'SOMALIA');
insert into PAIS (ID, CODIGO, NOME)
values (189, 'SR', 'SURINAME');
insert into PAIS (ID, CODIGO, NOME)
values (190, 'ST', 'SAO TOME E PRINCIPE');
insert into PAIS (ID, CODIGO, NOME)
values (191, 'SV', 'EL SALVADOR');
insert into PAIS (ID, CODIGO, NOME)
values (192, 'SY', 'SIRIA');
insert into PAIS (ID, CODIGO, NOME)
values (193, 'SZ', 'SUAZILANDIA ');
insert into PAIS (ID, CODIGO, NOME)
values (194, 'TC', 'ILHAS TURKS E CAICOS');
insert into PAIS (ID, CODIGO, NOME)
values (195, 'TD', 'CHADE');
insert into PAIS (ID, CODIGO, NOME)
values (196, 'TG', 'TOGO');
insert into PAIS (ID, CODIGO, NOME)
values (197, 'TH', 'TAILANDIA');
insert into PAIS (ID, CODIGO, NOME)
values (198, 'TJ', 'TAJIQUISTAO');
insert into PAIS (ID, CODIGO, NOME)
values (199, 'TK', 'TOKELAU');
insert into PAIS (ID, CODIGO, NOME)
values (200, 'TM', 'TURCOMENISTAO');
commit;
prompt 200 records committed...
insert into PAIS (ID, CODIGO, NOME)
values (201, 'TN', 'TUNISIA');
insert into PAIS (ID, CODIGO, NOME)
values (202, 'TO', 'TONGA');
insert into PAIS (ID, CODIGO, NOME)
values (203, 'TP', 'TIMOR LESTE');
insert into PAIS (ID, CODIGO, NOME)
values (204, 'TR', 'TURQUIA');
insert into PAIS (ID, CODIGO, NOME)
values (205, 'TT', 'TRINIDAD E TOBAGO');
insert into PAIS (ID, CODIGO, NOME)
values (206, 'TV', 'TUVALU');
insert into PAIS (ID, CODIGO, NOME)
values (207, 'TW', 'TAIWAN');
insert into PAIS (ID, CODIGO, NOME)
values (208, 'TZ', 'TANZANIA');
insert into PAIS (ID, CODIGO, NOME)
values (209, 'UA', 'UCRANIA');
insert into PAIS (ID, CODIGO, NOME)
values (210, 'UG', 'UGANDA');
insert into PAIS (ID, CODIGO, NOME)
values (211, 'US', 'ESTADOS UNIDOS');
insert into PAIS (ID, CODIGO, NOME)
values (212, 'UY', 'URUGUAI');
insert into PAIS (ID, CODIGO, NOME)
values (213, 'UZ', 'UZBEQUISTAO');
insert into PAIS (ID, CODIGO, NOME)
values (214, 'VA', 'VATICANO');
insert into PAIS (ID, CODIGO, NOME)
values (215, 'VC', 'SAO VICENTE E GRANADINAS');
insert into PAIS (ID, CODIGO, NOME)
values (216, 'VE', 'VENEZUELA');
insert into PAIS (ID, CODIGO, NOME)
values (217, 'VG', 'ILHAS VIRGENS BRITANICAS');
insert into PAIS (ID, CODIGO, NOME)
values (218, 'VI', 'ILHAS VIRGENS AMERICANAS');
insert into PAIS (ID, CODIGO, NOME)
values (219, 'VN', 'VIETNAM');
insert into PAIS (ID, CODIGO, NOME)
values (220, 'VU', 'VANUATU');
insert into PAIS (ID, CODIGO, NOME)
values (221, 'WS', 'SAMOA');
insert into PAIS (ID, CODIGO, NOME)
values (222, 'YE', 'IEMEN');
insert into PAIS (ID, CODIGO, NOME)
values (223, 'YU', 'IUGOSLAVIA');
insert into PAIS (ID, CODIGO, NOME)
values (224, 'ZA', 'AFRICA DO SUL');
insert into PAIS (ID, CODIGO, NOME)
values (225, 'ZM', 'ZAMBIA');
insert into PAIS (ID, CODIGO, NOME)
values (226, 'ZR', 'ZAIRE');
insert into PAIS (ID, CODIGO, NOME)
values (227, 'ZW', 'ZIMBABUE');
commit;
prompt 226 records loaded
prompt Loading CIDADE...
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5835, 'PORTO ALEGRE DO TOCANTINS/TO - BRASIL', 'PORTO ALEGRE DO TOCANTINS', 27, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5836, 'PORTO NACIONAL/TO - BRASIL', 'PORTO NACIONAL', 27, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5837, 'PRAIA NORTE/TO - BRASIL', 'PRAIA NORTE', 27, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5838, 'PRESIDENTE KENNEDY/TO - BRASIL', 'PRESIDENTE KENNEDY', 27, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5839, 'PUGMIL/TO - BRASIL', 'PUGMIL', 27, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5840, 'RECURSOLANDIA/TO - BRASIL', 'RECURSOLANDIA', 27, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5841, 'RIACHINHO/TO - BRASIL', 'RIACHINHO', 27, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5842, 'RIO DOS BOIS/TO - BRASIL', 'RIO DOS BOIS', 27, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5843, 'RIO SONO/TO - BRASIL', 'RIO SONO', 27, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5844, 'SAMPAIO/TO - BRASIL', 'SAMPAIO', 27, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5845, 'SANDOLANDIA/TO - BRASIL', 'SANDOLANDIA', 27, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5846, 'SANTA FE DO ARAGUAIA/TO - BRASIL', 'SANTA FE DO ARAGUAIA', 27, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5847, 'SANTA MARIA DO TOCANTINS/TO - BRASIL', 'SANTA MARIA DO TOCANTINS', 27, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5848, 'SANTA RITA DO TOCANTINS/TO - BRASIL', 'SANTA RITA DO TOCANTINS', 27, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5849, 'SANTA ROSA DO TOCANTINS/TO - BRASIL', 'SANTA ROSA DO TOCANTINS', 27, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5850, 'SANTA TEREZA DO TOCANTINS/TO - BRASIL', 'SANTA TEREZA DO TOCANTINS', 27, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5851, 'SANTA TEREZINHA DO TOCANTINS/TO - BRASIL', 'SANTA TEREZINHA DO TOCANTINS', 27, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5852, 'SAO BENTO DO TOCANTINS/TO - BRASIL', 'SAO BENTO DO TOCANTINS', 27, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5853, 'SAO MIGUEL DO TOCANTINS/TO - BRASIL', 'SAO MIGUEL DO TOCANTINS', 27, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5854, 'SAO SALVADOR DO TOCANTINS/TO - BRASIL', 'SAO SALVADOR DO TOCANTINS', 27, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5855, 'SAO SEBASTIAO DO TOCANTINS/TO - BRASIL', 'SAO SEBASTIAO DO TOCANTINS', 27, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5856, 'SAO VALERIO DA NATIVIDADE/TO - BRASIL', 'SAO VALERIO DA NATIVIDADE', 27, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5859, 'SUCUPIRA/TO - BRASIL', 'SUCUPIRA', 27, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5860, 'TAGUATINGA/TO - BRASIL', 'TAGUATINGA', 27, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5861, 'TAIPAS DO TOCANTINS/TO - BRASIL', 'TAIPAS DO TOCANTINS', 27, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5862, 'TALISMA/TO - BRASIL', 'TALISMA', 27, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5864, 'TOCANTINIA/TO - BRASIL', 'TOCANTINIA', 27, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5865, 'TOCANTINOPOLIS/TO - BRASIL', 'TOCANTINOPOLIS', 27, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5867, 'TUPIRATINS/TO - BRASIL', 'TUPIRATINS', 27, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5869, 'XAMBIOA/TO - BRASIL', 'XAMBIOA', 27, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5712, 'POCO VERDE/SE - BRASIL', 'POCO VERDE', 26, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5714, 'PROPRIA/SE - BRASIL', 'PROPRIA', 26, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5715, 'RIACHAO DO DANTAS/SE - BRASIL', 'RIACHAO DO DANTAS', 26, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5717, 'RIBEIROPOLIS/SE - BRASIL', 'RIBEIROPOLIS', 26, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5720, 'SANTA LUZIA DO ITANHY/SE - BRASIL', 'SANTA LUZIA DO ITANHY', 26, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5722, 'SANTANA DO SAO FRANCISCO/SE - BRASIL', 'SANTANA DO SAO FRANCISCO', 26, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5725, 'SAO DOMINGOS/SE - BRASIL', 'SAO DOMINGOS', 26, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5727, 'SAO MIGUEL DO ALEIXO/SE - BRASIL', 'SAO MIGUEL DO ALEIXO', 26, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5729, 'SIRIRI/SE - BRASIL', 'SIRIRI', 26, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5732, 'TOMAR DO GERU/SE - BRASIL', 'TOMAR DO GERU', 26, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5734, 'ABREULANDIA/TO - BRASIL', 'ABREULANDIA', 27, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5736, 'ALIANCA DO TOCANTINS/TO - BRASIL', 'ALIANCA DO TOCANTINS', 27, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5740, 'ANGICO/TO - BRASIL', 'ANGICO', 27, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5742, 'ARAGOMINAS/TO - BRASIL', 'ARAGOMINAS', 27, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5744, 'ARAGUACU/TO - BRASIL', 'ARAGUACU', 27, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5745, 'ARAGUAINA/TO - BRASIL', 'ARAGUAINA', 27, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5749, 'ARRAIAS/TO - BRASIL', 'ARRAIAS', 27, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5751, 'AURORA DO TOCANTINS/TO - BRASIL', 'AURORA DO TOCANTINS', 27, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5754, 'BANDEIRANTES DO TOCANTINS/TO - BRASIL', 'BANDEIRANTES DO TOCANTINS', 27, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5756, 'BARROLANDIA/TO - BRASIL', 'BARROLANDIA', 27, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5760, 'BREJINHO DE NAZARE/TO - BRASIL', 'BREJINHO DE NAZARE', 27, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5762, 'CACHOEIRINHA/TO - BRASIL', 'CACHOEIRINHA', 27, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5763, 'CAMPOS LINDOS/TO - BRASIL', 'CAMPOS LINDOS', 27, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5765, 'CARMOLANDIA/TO - BRASIL', 'CARMOLANDIA', 27, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5766, 'CARRASCO BONITO/TO - BRASIL', 'CARRASCO BONITO', 27, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5768, 'CENTENARIO/TO - BRASIL', 'CENTENARIO', 27, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5772, 'COLMEIA/TO - BRASIL', 'COLMEIA', 27, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5773, 'COMBINADO/TO - BRASIL', 'COMBINADO', 27, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5775, 'COUTO DE MAGALHAES/TO - BRASIL', 'COUTO DE MAGALHAES', 27, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5777, 'CRIXAS DO TOCANTINS/TO - BRASIL', 'CRIXAS DO TOCANTINS', 27, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5779, 'DIANOPOLIS/TO - BRASIL', 'DIANOPOLIS', 27, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5781, 'DOIS IRMAOS DO TOCANTINS/TO - BRASIL', 'DOIS IRMAOS DO TOCANTINS', 27, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5784, 'FATIMA/TO - BRASIL', 'FATIMA', 27, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5787, 'FORMOSO DO ARAGUAIA/TO - BRASIL', 'FORMOSO DO ARAGUAIA', 27, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5789, 'GOIANORTE/TO - BRASIL', 'GOIANORTE', 27, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5790, 'GOIATINS/TO - BRASIL', 'GOIATINS', 27, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5791, 'GUARAI/TO - BRASIL', 'GUARAI', 27, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5792, 'GURUPI/TO - BRASIL', 'GURUPI', 27, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5793, 'IPUEIRAS/TO - BRASIL', 'IPUEIRAS', 27, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5794, 'ITACAJA/TO - BRASIL', 'ITACAJA', 27, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5795, 'ITAGUATINS/TO - BRASIL', 'ITAGUATINS', 27, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5796, 'ITAPIRATINS/TO - BRASIL', 'ITAPIRATINS', 27, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5797, 'ITAPORA DO TOCANTINS/TO - BRASIL', 'ITAPORA DO TOCANTINS', 27, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5798, 'JAU DO TOCANTINS/TO - BRASIL', 'JAU DO TOCANTINS', 27, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5799, 'JUARINA/TO - BRASIL', 'JUARINA', 27, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5800, 'LAGOA DA CONFUSAO/TO - BRASIL', 'LAGOA DA CONFUSAO', 27, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5801, 'LAGOA DO TOCANTINS/TO - BRASIL', 'LAGOA DO TOCANTINS', 27, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5802, 'LAJEADO/TO - BRASIL', 'LAJEADO', 27, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5803, 'LIZARDA/TO - BRASIL', 'LIZARDA', 27, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5804, 'LUZINOPOLIS/TO - BRASIL', 'LUZINOPOLIS', 27, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5805, 'MARIANOPOLIS DO TOCANTINS/TO - BRASIL', 'MARIANOPOLIS DO TOCANTINS', 27, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5806, 'MATEIROS/TO - BRASIL', 'MATEIROS', 27, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5807, 'MAURILANDIA DO TOCANTINS/TO - BRASIL', 'MAURILANDIA DO TOCANTINS', 27, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5808, 'MIRACEMA DO TOCANTINS/TO - BRASIL', 'MIRACEMA DO TOCANTINS', 27, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5809, 'MIRANORTE/TO - BRASIL', 'MIRANORTE', 27, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5810, 'MONTE DO CARMO/TO - BRASIL', 'MONTE DO CARMO', 27, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5811, 'MONTE SANTO/TO - BRASIL', 'MONTE SANTO', 27, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5812, 'MURICILANDIA/TO - BRASIL', 'MURICILANDIA', 27, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5813, 'NATIVIDADE/TO - BRASIL', 'NATIVIDADE', 27, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5814, 'NAZARE/TO - BRASIL', 'NAZARE', 27, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5815, 'NOVA OLINDA/TO - BRASIL', 'NOVA OLINDA', 27, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5816, 'NOVA ROSALANDIA/TO - BRASIL', 'NOVA ROSALANDIA', 27, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5817, 'NOVO ACORDO/TO - BRASIL', 'NOVO ACORDO', 27, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5818, 'NOVO JARDIM/TO - BRASIL', 'NOVO JARDIM', 27, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5819, 'OLIVEIRA DE FATIMA/TO - BRASIL', 'OLIVEIRA DE FATIMA', 27, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5820, 'PALMAS/TO - BRASIL', 'PALMAS', 27, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5821, 'PALMEIRANTE/TO - BRASIL', 'PALMEIRANTE', 27, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5822, 'PALMEIRAS DO TOCANTINS/TO - BRASIL', 'PALMEIRAS DO TOCANTINS', 27, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5823, 'PALMEIROPOLIS/TO - BRASIL', 'PALMEIROPOLIS', 27, 28);
commit;
prompt 100 records committed...
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5824, 'PARAISO DO TOCANTINS/TO - BRASIL', 'PARAISO DO TOCANTINS', 27, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5828, 'PEIXE/TO - BRASIL', 'PEIXE', 27, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5829, 'PEQUIZEIRO/TO - BRASIL', 'PEQUIZEIRO', 27, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5832, 'PIUM/TO - BRASIL', 'PIUM', 27, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5833, 'PONTE ALTA DO BOM JESUS/TO - BRASIL', 'PONTE ALTA DO BOM JESUS', 27, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5579, 'SAO MIGUEL ARCANJO/SP - BRASIL', 'SAO MIGUEL ARCANJO', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5581, 'SAO PEDRO/SP - BRASIL', 'SAO PEDRO', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5584, 'SAO SEBASTIAO/SP - BRASIL', 'SAO SEBASTIAO', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5586, 'SAO SIMAO/SP - BRASIL', 'SAO SIMAO', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5588, 'SARAPUI/SP - BRASIL', 'SARAPUI', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5589, 'SARUTAIA/SP - BRASIL', 'SARUTAIA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5592, 'SERRA NEGRA/SP - BRASIL', 'SERRA NEGRA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5593, 'SERRANA/SP - BRASIL', 'SERRANA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5596, 'SEVERINIA/SP - BRASIL', 'SEVERINIA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5598, 'SOCORRO/SP - BRASIL', 'SOCORRO', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5599, 'SOROCABA/SP - BRASIL', 'SOROCABA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5602, 'SUZANAPOLIS/SP - BRASIL', 'SUZANAPOLIS', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5606, 'TABOAO DA SERRA/SP - BRASIL', 'TABOAO DA SERRA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5607, 'TACIBA/SP - BRASIL', 'TACIBA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5610, 'TAIUVA/SP - BRASIL', 'TAIUVA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5613, 'TAPIRAI/SP - BRASIL', 'TAPIRAI', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5615, 'TAQUARITINGA/SP - BRASIL', 'TAQUARITINGA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5618, 'TARABAI/SP - BRASIL', 'TARABAI', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5620, 'TATUI/SP - BRASIL', 'TATUI', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5623, 'TEODORO SAMPAIO/SP - BRASIL', 'TEODORO SAMPAIO', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5625, 'TIETE/SP - BRASIL', 'TIETE', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5628, 'TORRINHA/SP - BRASIL', 'TORRINHA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5630, 'TREMEMBE/SP - BRASIL', 'TREMEMBE', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5632, 'TUIUTI/SP - BRASIL', 'TUIUTI', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5634, 'TUPI PAULISTA/SP - BRASIL', 'TUPI PAULISTA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5638, 'UBATUBA/SP - BRASIL', 'UBATUBA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5639, 'UBIRAJARA/SP - BRASIL', 'UBIRAJARA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5643, 'URU/SP - BRASIL', 'URU', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5644, 'URUPES/SP - BRASIL', 'URUPES', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5647, 'VALPARAISO/SP - BRASIL', 'VALPARAISO', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5648, 'VARGEM/SP - BRASIL', 'VARGEM', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5650, 'VARGEM GRANDE PAULISTA/SP - BRASIL', 'VARGEM GRANDE PAULISTA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5653, 'VINHEDO/SP - BRASIL', 'VINHEDO', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5654, 'VIRADOURO/SP - BRASIL', 'VIRADOURO', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5657, 'VOTORANTIM/SP - BRASIL', 'VOTORANTIM', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5660, 'AQUIDABA/SE - BRASIL', 'AQUIDABA', 26, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5661, 'ARACAJU/SE - BRASIL', 'ARACAJU', 26, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5662, 'ARAUA/SE - BRASIL', 'ARAUA', 26, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5663, 'AREIA BRANCA/SE - BRASIL', 'AREIA BRANCA', 26, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5664, 'BARRA DOS COQUEIROS/SE - BRASIL', 'BARRA DOS COQUEIROS', 26, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5665, 'BOQUIM/SE - BRASIL', 'BOQUIM', 26, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5666, 'BREJO GRANDE/SE - BRASIL', 'BREJO GRANDE', 26, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5667, 'CAMPO DO BRITO/SE - BRASIL', 'CAMPO DO BRITO', 26, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5668, 'CANHOBA/SE - BRASIL', 'CANHOBA', 26, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5669, 'CANINDE DE SAO FRANCISCO/SE - BRASIL', 'CANINDE DE SAO FRANCISCO', 26, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5670, 'CAPELA/SE - BRASIL', 'CAPELA', 26, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5671, 'CARIRA/SE - BRASIL', 'CARIRA', 26, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5672, 'CARMOPOLIS/SE - BRASIL', 'CARMOPOLIS', 26, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5673, 'CEDRO DE SAO JOAO/SE - BRASIL', 'CEDRO DE SAO JOAO', 26, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5674, 'CRISTINAPOLIS/SE - BRASIL', 'CRISTINAPOLIS', 26, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5675, 'CUMBE/SE - BRASIL', 'CUMBE', 26, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5676, 'DIVINA PASTORA/SE - BRASIL', 'DIVINA PASTORA', 26, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5677, 'ESTANCIA/SE - BRASIL', 'ESTANCIA', 26, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5678, 'FEIRA NOVA/SE - BRASIL', 'FEIRA NOVA', 26, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5679, 'FREI PAULO/SE - BRASIL', 'FREI PAULO', 26, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5680, 'GARARU/SE - BRASIL', 'GARARU', 26, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5681, 'GENERAL MAYNARD/SE - BRASIL', 'GENERAL MAYNARD', 26, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5682, 'GRACHO CARDOSO/SE - BRASIL', 'GRACHO CARDOSO', 26, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5683, 'ILHA DAS FLORES/SE - BRASIL', 'ILHA DAS FLORES', 26, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5684, 'INDIAROBA/SE - BRASIL', 'INDIAROBA', 26, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5685, 'ITABAIANA/SE - BRASIL', 'ITABAIANA', 26, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5686, 'ITABAIANINHA/SE - BRASIL', 'ITABAIANINHA', 26, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5687, 'ITABI/SE - BRASIL', 'ITABI', 26, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5688, 'ITAPORANGA D´AJUDA/SE - BRASIL', 'ITAPORANGA D´AJUDA', 26, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5689, 'JAPARATUBA/SE - BRASIL', 'JAPARATUBA', 26, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5690, 'JAPOATA/SE - BRASIL', 'JAPOATA', 26, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5691, 'LAGARTO/SE - BRASIL', 'LAGARTO', 26, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5692, 'LARANJEIRAS/SE - BRASIL', 'LARANJEIRAS', 26, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5694, 'MALHADA DOS BOIS/SE - BRASIL', 'MALHADA DOS BOIS', 26, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5695, 'MALHADOR/SE - BRASIL', 'MALHADOR', 26, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5697, 'MOITA BONITA/SE - BRASIL', 'MOITA BONITA', 26, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5698, 'MONTE ALEGRE DE SERGIPE/SE - BRASIL', 'MONTE ALEGRE DE SERGIPE', 26, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5702, 'NOSSA SENHORA DA GLORIA/SE - BRASIL', 'NOSSA SENHORA DA GLORIA', 26, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5704, 'NOSSA SENHORA DE LOURDES/SE - BRASIL', 'NOSSA SENHORA DE LOURDES', 26, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5707, 'PEDRA MOLE/SE - BRASIL', 'PEDRA MOLE', 26, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5709, 'PINHAO/SE - BRASIL', 'PINHAO', 26, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5710, 'PIRAMBU/SE - BRASIL', 'PIRAMBU', 26, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5458, 'PIRATININGA/SP - BRASIL', 'PIRATININGA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5461, 'PLATINA/SP - BRASIL', 'PLATINA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5462, 'POA/SP - BRASIL', 'POA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5464, 'POMPEIA/SP - BRASIL', 'POMPEIA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5467, 'PONTALINDA/SP - BRASIL', 'PONTALINDA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5470, 'PORANGABA/SP - BRASIL', 'PORANGABA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5472, 'PORTO FERREIRA/SP - BRASIL', 'PORTO FERREIRA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5475, 'PRACINHA/SP - BRASIL', 'PRACINHA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5478, 'PRATANIA/SP - BRASIL', 'PRATANIA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5480, 'PRESIDENTE BERNARDES/SP - BRASIL', 'PRESIDENTE BERNARDES', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5482, 'PRESIDENTE PRUDENTE/SP - BRASIL', 'PRESIDENTE PRUDENTE', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5485, 'QUADRA/SP - BRASIL', 'QUADRA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5486, 'QUATA/SP - BRASIL', 'QUATA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5487, 'QUEIROZ/SP - BRASIL', 'QUEIROZ', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5491, 'RANCHARIA/SP - BRASIL', 'RANCHARIA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5493, 'REGENTE FEIJO/SP - BRASIL', 'REGENTE FEIJO', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5496, 'RESTINGA/SP - BRASIL', 'RESTINGA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5497, 'RIBEIRA/SP - BRASIL', 'RIBEIRA', 25, 28);
commit;
prompt 200 records committed...
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5499, 'RIBEIRAO BRANCO/SP - BRASIL', 'RIBEIRAO BRANCO', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5503, 'RIBEIRAO GRANDE/SP - BRASIL', 'RIBEIRAO GRANDE', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5504, 'RIBEIRAO PIRES/SP - BRASIL', 'RIBEIRAO PIRES', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5505, 'RIBEIRAO PRETO/SP - BRASIL', 'RIBEIRAO PRETO', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5509, 'RIO CLARO/SP - BRASIL', 'RIO CLARO', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5512, 'RIOLANDIA/SP - BRASIL', 'RIOLANDIA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5514, 'ROSANA/SP - BRASIL', 'ROSANA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5515, 'ROSEIRA/SP - BRASIL', 'ROSEIRA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5517, 'RUBINEIA/SP - BRASIL', 'RUBINEIA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5519, 'SAGRES/SP - BRASIL', 'SAGRES', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5523, 'SALMOURAO/SP - BRASIL', 'SALMOURAO', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5524, 'SALTINHO/SP - BRASIL', 'SALTINHO', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5527, 'SALTO GRANDE/SP - BRASIL', 'SALTO GRANDE', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5529, 'SANTA ADELIA/SP - BRASIL', 'SANTA ADELIA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5531, 'SANTA BARBARA D´OESTE/SP - BRASIL', 'SANTA BARBARA D´OESTE', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5533, 'SANTA CLARA D´OESTE/SP - BRASIL', 'SANTA CLARA D´OESTE', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5535, 'SANTA CRUZ DA ESPERANCA/SP - BRASIL', 'SANTA CRUZ DA ESPERANCA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5536, 'SANTA CRUZ DAS PALMEIRAS/SP - BRASIL', 'SANTA CRUZ DAS PALMEIRAS', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5537, 'SANTA CRUZ DO RIO PARDO/SP - BRASIL', 'SANTA CRUZ DO RIO PARDO', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5538, 'SANTA ERNESTINA/SP - BRASIL', 'SANTA ERNESTINA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5539, 'SANTA FE DO SUL/SP - BRASIL', 'SANTA FE DO SUL', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5540, 'SANTA GERTRUDES/SP - BRASIL', 'SANTA GERTRUDES', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5541, 'SANTA ISABEL/SP - BRASIL', 'SANTA ISABEL', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5542, 'SANTA LUCIA/SP - BRASIL', 'SANTA LUCIA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5543, 'SANTA MARIA DA SERRA/SP - BRASIL', 'SANTA MARIA DA SERRA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5544, 'SANTA MERCEDES/SP - BRASIL', 'SANTA MERCEDES', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5545, 'SANTA RITA DO PASSA QUATRO/SP - BRASIL', 'SANTA RITA DO PASSA QUATRO', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5546, 'SANTA RITA D´OESTE/SP - BRASIL', 'SANTA RITA D´OESTE', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5547, 'SANTA ROSA DE VITERBO/SP - BRASIL', 'SANTA ROSA DE VITERBO', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5548, 'SANTA SALETE/SP - BRASIL', 'SANTA SALETE', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5549, 'SANTANA DA PONTE PENSA/SP - BRASIL', 'SANTANA DA PONTE PENSA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5550, 'SANTANA DE PARNAIBA/SP - BRASIL', 'SANTANA DE PARNAIBA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5551, 'SANTO ANASTACIO/SP - BRASIL', 'SANTO ANASTACIO', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5552, 'SANTO ANDRE/SP - BRASIL', 'SANTO ANDRE', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5553, 'SANTO ANTONIO DA ALEGRIA/SP - BRASIL', 'SANTO ANTONIO DA ALEGRIA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5554, 'SANTO ANTONIO DE POSSE/SP - BRASIL', 'SANTO ANTONIO DE POSSE', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5555, 'SANTO ANTONIO DO ARACANGUA/SP - BRASIL', 'SANTO ANTONIO DO ARACANGUA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5556, 'SANTO ANTONIO DO JARDIM/SP - BRASIL', 'SANTO ANTONIO DO JARDIM', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5558, 'SANTO EXPEDITO/SP - BRASIL', 'SANTO EXPEDITO', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5559, 'SANTOPOLIS DO AGUAPEI/SP - BRASIL', 'SANTOPOLIS DO AGUAPEI', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5560, 'SANTOS/SP - BRASIL', 'SANTOS', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5562, 'SAO BERNARDO DO CAMPO/SP - BRASIL', 'SAO BERNARDO DO CAMPO', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5564, 'SAO CARLOS/SP - BRASIL', 'SAO CARLOS', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5565, 'SAO FRANCISCO/SP - BRASIL', 'SAO FRANCISCO', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5567, 'SAO JOAO DAS DUAS PONTES/SP - BRASIL', 'SAO JOAO DAS DUAS PONTES', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5569, 'SAO JOAO DO PAU D´ALHO/SP - BRASIL', 'SAO JOAO DO PAU D´ALHO', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5571, 'SAO JOSE DA BELA VISTA/SP - BRASIL', 'SAO JOSE DA BELA VISTA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5572, 'SAO JOSE DO BARREIRO/SP - BRASIL', 'SAO JOSE DO BARREIRO', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5574, 'SAO JOSE DO RIO PRETO/SP - BRASIL', 'SAO JOSE DO RIO PRETO', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5576, 'SAO LOURENCO DA SERRA/SP - BRASIL', 'SAO LOURENCO DA SERRA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5324, 'LINDOIA/SP - BRASIL', 'LINDOIA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5326, 'LORENA/SP - BRASIL', 'LORENA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5328, 'LUCELIA/SP - BRASIL', 'LUCELIA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5330, 'LUIS ANTONIO/SP - BRASIL', 'LUIS ANTONIO', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5333, 'LUTECIA/SP - BRASIL', 'LUTECIA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5334, 'MACATUBA/SP - BRASIL', 'MACATUBA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5337, 'MAGDA/SP - BRASIL', 'MAGDA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5339, 'MAIRIPORA/SP - BRASIL', 'MAIRIPORA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5343, 'MARAPOAMA/SP - BRASIL', 'MARAPOAMA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5345, 'MARILIA/SP - BRASIL', 'MARILIA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5346, 'MARINOPOLIS/SP - BRASIL', 'MARINOPOLIS', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5349, 'MAUA/SP - BRASIL', 'MAUA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5352, 'MIGUELOPOLIS/SP - BRASIL', 'MIGUELOPOLIS', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5354, 'MIRA ESTRELA/SP - BRASIL', 'MIRA ESTRELA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5356, 'MIRANDOPOLIS/SP - BRASIL', 'MIRANDOPOLIS', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5358, 'MIRASSOL/SP - BRASIL', 'MIRASSOL', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5360, 'MOCOCA/SP - BRASIL', 'MOCOCA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5362, 'MOJI DAS CRUZES/SP - BRASIL', 'MOJI DAS CRUZES', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5364, 'MOMBUCA/SP - BRASIL', 'MOMBUCA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5367, 'MONTE ALEGRE DO SUL/SP - BRASIL', 'MONTE ALEGRE DO SUL', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5371, 'MONTE CASTELO/SP - BRASIL', 'MONTE CASTELO', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5372, 'MONTE MOR/SP - BRASIL', 'MONTE MOR', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5374, 'MORRO AGUDO/SP - BRASIL', 'MORRO AGUDO', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5376, 'MOTUCA/SP - BRASIL', 'MOTUCA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5378, 'NANTES/SP - BRASIL', 'NANTES', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5381, 'NAZARE PAULISTA/SP - BRASIL', 'NAZARE PAULISTA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5382, 'NEVES PAULISTA/SP - BRASIL', 'NEVES PAULISTA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5385, 'NOVA ALIANCA/SP - BRASIL', 'NOVA ALIANCA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5387, 'NOVA CANAA PAULISTA/SP - BRASIL', 'NOVA CANAA PAULISTA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5389, 'NOVA EUROPA/SP - BRASIL', 'NOVA EUROPA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5391, 'NOVA GUATAPORANGA/SP - BRASIL', 'NOVA GUATAPORANGA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5393, 'NOVA LUZITANIA/SP - BRASIL', 'NOVA LUZITANIA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5394, 'NOVA ODESSA/SP - BRASIL', 'NOVA ODESSA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5395, 'NOVAIS/SP - BRASIL', 'NOVAIS', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5396, 'NOVO HORIZONTE/SP - BRASIL', 'NOVO HORIZONTE', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5397, 'NUPORANGA/SP - BRASIL', 'NUPORANGA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5398, 'OCAUCU/SP - BRASIL', 'OCAUCU', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5399, 'OLEO/SP - BRASIL', 'OLEO', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5400, 'OLIMPIA/SP - BRASIL', 'OLIMPIA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5401, 'ONDA VERDE/SP - BRASIL', 'ONDA VERDE', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5402, 'ORIENTE/SP - BRASIL', 'ORIENTE', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5403, 'ORINDIUVA/SP - BRASIL', 'ORINDIUVA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5404, 'ORLANDIA/SP - BRASIL', 'ORLANDIA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5405, 'OSASCO/SP - BRASIL', 'OSASCO', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5406, 'OSCAR BRESSANE/SP - BRASIL', 'OSCAR BRESSANE', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5407, 'OSVALDO CRUZ/SP - BRASIL', 'OSVALDO CRUZ', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5408, 'OURINHOS/SP - BRASIL', 'OURINHOS', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5409, 'OURO VERDE/SP - BRASIL', 'OURO VERDE', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5410, 'OUROESTE/SP - BRASIL', 'OUROESTE', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5411, 'PACAEMBU/SP - BRASIL', 'PACAEMBU', 25, 28);
commit;
prompt 300 records committed...
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5412, 'PALESTINA/SP - BRASIL', 'PALESTINA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5413, 'PALMARES PAULISTA/SP - BRASIL', 'PALMARES PAULISTA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5414, 'PALMEIRA D´OESTE/SP - BRASIL', 'PALMEIRA D´OESTE', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5415, 'PALMITAL/SP - BRASIL', 'PALMITAL', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5416, 'PANORAMA/SP - BRASIL', 'PANORAMA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5417, 'PARAGUACU PAULISTA/SP - BRASIL', 'PARAGUACU PAULISTA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5418, 'PARAIBUNA/SP - BRASIL', 'PARAIBUNA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5419, 'PARAISO/SP - BRASIL', 'PARAISO', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5420, 'PARANAPANEMA/SP - BRASIL', 'PARANAPANEMA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5421, 'PARANAPUA/SP - BRASIL', 'PARANAPUA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5422, 'PARAPUA/SP - BRASIL', 'PARAPUA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5423, 'PARDINHO/SP - BRASIL', 'PARDINHO', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5424, 'PARIQUERA-ACU/SP - BRASIL', 'PARIQUERA-ACU', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5425, 'PARISI/SP - BRASIL', 'PARISI', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5427, 'PAULICEIA/SP - BRASIL', 'PAULICEIA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5428, 'PAULINIA/SP - BRASIL', 'PAULINIA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5429, 'PAULISTANIA/SP - BRASIL', 'PAULISTANIA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5430, 'PAULO DE FARIA/SP - BRASIL', 'PAULO DE FARIA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5432, 'PEDRA BELA/SP - BRASIL', 'PEDRA BELA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5433, 'PEDRANOPOLIS/SP - BRASIL', 'PEDRANOPOLIS', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5435, 'PEDREIRA/SP - BRASIL', 'PEDREIRA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5436, 'PEDRINHAS PAULISTA/SP - BRASIL', 'PEDRINHAS PAULISTA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5439, 'PEREIRA BARRETO/SP - BRASIL', 'PEREIRA BARRETO', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5441, 'PERUIBE/SP - BRASIL', 'PERUIBE', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5444, 'PILAR DO SUL/SP - BRASIL', 'PILAR DO SUL', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5446, 'PINDORAMA/SP - BRASIL', 'PINDORAMA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5449, 'PIQUETE/SP - BRASIL', 'PIQUETE', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5450, 'PIRACAIA/SP - BRASIL', 'PIRACAIA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5453, 'PIRAJUI/SP - BRASIL', 'PIRAJUI', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5454, 'PIRANGI/SP - BRASIL', 'PIRANGI', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5457, 'PIRASSUNUNGA/SP - BRASIL', 'PIRASSUNUNGA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5183, 'ELIAS FAUSTO/SP - BRASIL', 'ELIAS FAUSTO', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5186, 'EMBU/SP - BRASIL', 'EMBU', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5187, 'EMBU-GUACU/SP - BRASIL', 'EMBU-GUACU', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5191, 'ESPIRITO SANTO DO TURVO/SP - BRASIL', 'ESPIRITO SANTO DO TURVO', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5193, 'ESTRELA DO NORTE/SP - BRASIL', 'ESTRELA DO NORTE', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5195, 'EUCLIDES DA CUNHA PAULISTA/SP - BRASIL', 'EUCLIDES DA CUNHA PAULISTA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5198, 'FERNANDOPOLIS/SP - BRASIL', 'FERNANDOPOLIS', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5199, 'FERNAO/SP - BRASIL', 'FERNAO', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5202, 'FLOREAL/SP - BRASIL', 'FLOREAL', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5204, 'FLORINIA/SP - BRASIL', 'FLORINIA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5206, 'FRANCISCO MORATO/SP - BRASIL', 'FRANCISCO MORATO', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5209, 'GALIA/SP - BRASIL', 'GALIA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5210, 'GARCA/SP - BRASIL', 'GARCA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5212, 'GAVIAO PEIXOTO/SP - BRASIL', 'GAVIAO PEIXOTO', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5215, 'GLICERIO/SP - BRASIL', 'GLICERIO', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5216, 'GUAICARA/SP - BRASIL', 'GUAICARA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5219, 'GUAPIACU/SP - BRASIL', 'GUAPIACU', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5221, 'GUARA/SP - BRASIL', 'GUARA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5224, 'GUARANI D´OESTE/SP - BRASIL', 'GUARANI D´OESTE', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5226, 'GUARARAPES/SP - BRASIL', 'GUARARAPES', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5229, 'GUAREI/SP - BRASIL', 'GUAREI', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5231, 'GUARUJA/SP - BRASIL', 'GUARUJA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5234, 'GUZOLANDIA/SP - BRASIL', 'GUZOLANDIA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5236, 'HOLAMBRA/SP - BRASIL', 'HOLAMBRA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5237, 'HORTOLANDIA/SP - BRASIL', 'HORTOLANDIA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5239, 'IACRI/SP - BRASIL', 'IACRI', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5240, 'IARAS/SP - BRASIL', 'IARAS', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5241, 'IBATE/SP - BRASIL', 'IBATE', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5243, 'IBIRAREMA/SP - BRASIL', 'IBIRAREMA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5245, 'IBIUNA/SP - BRASIL', 'IBIUNA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5246, 'ICEM/SP - BRASIL', 'ICEM', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5247, 'IEPE/SP - BRASIL', 'IEPE', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5249, 'IGARAPAVA/SP - BRASIL', 'IGARAPAVA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5250, 'IGARATA/SP - BRASIL', 'IGARATA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5251, 'IGUAPE/SP - BRASIL', 'IGUAPE', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5252, 'ILHA COMPRIDA/SP - BRASIL', 'ILHA COMPRIDA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5253, 'ILHA SOLTEIRA/SP - BRASIL', 'ILHA SOLTEIRA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5254, 'ILHABELA/SP - BRASIL', 'ILHABELA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5255, 'INDAIATUBA/SP - BRASIL', 'INDAIATUBA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5256, 'INDIANA/SP - BRASIL', 'INDIANA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5257, 'INDIAPORA/SP - BRASIL', 'INDIAPORA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5258, 'INUBIA PAULISTA/SP - BRASIL', 'INUBIA PAULISTA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5259, 'IPAUCU/SP - BRASIL', 'IPAUCU', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5260, 'IPERO/SP - BRASIL', 'IPERO', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5261, 'IPEUNA/SP - BRASIL', 'IPEUNA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5262, 'IPIGUA/SP - BRASIL', 'IPIGUA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5263, 'IPORANGA/SP - BRASIL', 'IPORANGA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5264, 'IPUA/SP - BRASIL', 'IPUA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5265, 'IRACEMAPOLIS/SP - BRASIL', 'IRACEMAPOLIS', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5266, 'IRAPUA/SP - BRASIL', 'IRAPUA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5267, 'IRAPURU/SP - BRASIL', 'IRAPURU', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5268, 'ITABERA/SP - BRASIL', 'ITABERA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5269, 'ITAI/SP - BRASIL', 'ITAI', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5270, 'ITAJOBI/SP - BRASIL', 'ITAJOBI', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5271, 'ITAJU/SP - BRASIL', 'ITAJU', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5272, 'ITANHAEM/SP - BRASIL', 'ITANHAEM', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5273, 'ITAOCA/SP - BRASIL', 'ITAOCA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5274, 'ITAPECERICA DA SERRA/SP - BRASIL', 'ITAPECERICA DA SERRA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5276, 'ITAPEVA/SP - BRASIL', 'ITAPEVA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5277, 'ITAPEVI/SP - BRASIL', 'ITAPEVI', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5279, 'ITAPIRAPUA PAULISTA/SP - BRASIL', 'ITAPIRAPUA PAULISTA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5280, 'ITAPOLIS/SP - BRASIL', 'ITAPOLIS', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5282, 'ITAPUI/SP - BRASIL', 'ITAPUI', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5283, 'ITAPURA/SP - BRASIL', 'ITAPURA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5285, 'ITARARE/SP - BRASIL', 'ITARARE', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5286, 'ITARIRI/SP - BRASIL', 'ITARIRI', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5287, 'ITATIBA/SP - BRASIL', 'ITATIBA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5289, 'ITIRAPINA/SP - BRASIL', 'ITIRAPINA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5290, 'ITIRAPUA/SP - BRASIL', 'ITIRAPUA', 25, 28);
commit;
prompt 400 records committed...
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5292, 'ITU/SP - BRASIL', 'ITU', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5294, 'ITUVERAVA/SP - BRASIL', 'ITUVERAVA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5295, 'JABORANDI/SP - BRASIL', 'JABORANDI', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5297, 'JACAREI/SP - BRASIL', 'JACAREI', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5298, 'JACI/SP - BRASIL', 'JACI', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5300, 'JAGUARIUNA/SP - BRASIL', 'JAGUARIUNA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5302, 'JAMBEIRO/SP - BRASIL', 'JAMBEIRO', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5303, 'JANDIRA/SP - BRASIL', 'JANDIRA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5306, 'JAU/SP - BRASIL', 'JAU', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5309, 'JOAO RAMALHO/SP - BRASIL', 'JOAO RAMALHO', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5311, 'JULIO MESQUITA/SP - BRASIL', 'JULIO MESQUITA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5314, 'JUNQUEIROPOLIS/SP - BRASIL', 'JUNQUEIROPOLIS', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5316, 'JUQUITIBA/SP - BRASIL', 'JUQUITIBA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5320, 'LAVRINHAS/SP - BRASIL', 'LAVRINHAS', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5321, 'LEME/SP - BRASIL', 'LEME', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5043, 'ANGATUBA/SP - BRASIL', 'ANGATUBA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5045, 'ANHUMAS/SP - BRASIL', 'ANHUMAS', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5047, 'APARECIDA D´OESTE/SP - BRASIL', 'APARECIDA D´OESTE', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5051, 'ARACOIABA DA SERRA/SP - BRASIL', 'ARACOIABA DA SERRA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5053, 'ARANDU/SP - BRASIL', 'ARANDU', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5056, 'ARARAS/SP - BRASIL', 'ARARAS', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5059, 'AREIAS/SP - BRASIL', 'AREIAS', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5060, 'AREIOPOLIS/SP - BRASIL', 'AREIOPOLIS', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5064, 'ASPASIA/SP - BRASIL', 'ASPASIA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5065, 'ASSIS/SP - BRASIL', 'ASSIS', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5067, 'AURIFLAMA/SP - BRASIL', 'AURIFLAMA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5070, 'AVARE/SP - BRASIL', 'AVARE', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5073, 'BALSAMO/SP - BRASIL', 'BALSAMO', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5074, 'BANANAL/SP - BRASIL', 'BANANAL', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5076, 'BARBOSA/SP - BRASIL', 'BARBOSA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5079, 'BARRA DO CHAPEU/SP - BRASIL', 'BARRA DO CHAPEU', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5082, 'BARRINHA/SP - BRASIL', 'BARRINHA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5083, 'BARUERI/SP - BRASIL', 'BARUERI', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5086, 'BAURU/SP - BRASIL', 'BAURU', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5087, 'BEBEDOURO/SP - BRASIL', 'BEBEDOURO', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5089, 'BERNARDINO DE CAMPOS/SP - BRASIL', 'BERNARDINO DE CAMPOS', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5091, 'BILAC/SP - BRASIL', 'BILAC', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5092, 'BIRIGUI/SP - BRASIL', 'BIRIGUI', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5094, 'BOA ESPERANCA DO SUL/SP - BRASIL', 'BOA ESPERANCA DO SUL', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5096, 'BOFETE/SP - BRASIL', 'BOFETE', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5097, 'BOITUVA/SP - BRASIL', 'BOITUVA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5099, 'BOM SUCESSO DE ITARARE/SP - BRASIL', 'BOM SUCESSO DE ITARARE', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5100, 'BORA/SP - BRASIL', 'BORA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5102, 'BORBOREMA/SP - BRASIL', 'BORBOREMA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5103, 'BOREBI/SP - BRASIL', 'BOREBI', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5105, 'BRAGANCA PAULISTA/SP - BRASIL', 'BRAGANCA PAULISTA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5107, 'BREJO ALEGRE/SP - BRASIL', 'BREJO ALEGRE', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5108, 'BRODOSQUI/SP - BRASIL', 'BRODOSQUI', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5109, 'BROTAS/SP - BRASIL', 'BROTAS', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5110, 'BURI/SP - BRASIL', 'BURI', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5111, 'BURITAMA/SP - BRASIL', 'BURITAMA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5112, 'BURITIZAL/SP - BRASIL', 'BURITIZAL', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5113, 'CABRALIA PAULISTA/SP - BRASIL', 'CABRALIA PAULISTA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5114, 'CABREUVA/SP - BRASIL', 'CABREUVA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5115, 'CACAPAVA/SP - BRASIL', 'CACAPAVA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5116, 'CACHOEIRA PAULISTA/SP - BRASIL', 'CACHOEIRA PAULISTA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5117, 'CACONDE/SP - BRASIL', 'CACONDE', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5118, 'CAFELANDIA/SP - BRASIL', 'CAFELANDIA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5119, 'CAIABU/SP - BRASIL', 'CAIABU', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5120, 'CAIEIRAS/SP - BRASIL', 'CAIEIRAS', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5121, 'CAIUA/SP - BRASIL', 'CAIUA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5122, 'CAJAMAR/SP - BRASIL', 'CAJAMAR', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5123, 'CAJATI/SP - BRASIL', 'CAJATI', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5124, 'CAJOBI/SP - BRASIL', 'CAJOBI', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5125, 'CAJURU/SP - BRASIL', 'CAJURU', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5126, 'CAMPINA DO MONTE ALEGRE/SP - BRASIL', 'CAMPINA DO MONTE ALEGRE', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5127, 'CAMPINAS/SP - BRASIL', 'CAMPINAS', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5128, 'CAMPO LIMPO PAULISTA/SP - BRASIL', 'CAMPO LIMPO PAULISTA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5129, 'CAMPOS DO JORDAO/SP - BRASIL', 'CAMPOS DO JORDAO', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5131, 'CANANEIA/SP - BRASIL', 'CANANEIA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5132, 'CANAS/SP - BRASIL', 'CANAS', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5133, 'CANDIDO MOTA/SP - BRASIL', 'CANDIDO MOTA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5134, 'CANDIDO RODRIGUES/SP - BRASIL', 'CANDIDO RODRIGUES', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5136, 'CAPELA DO ALTO/SP - BRASIL', 'CAPELA DO ALTO', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5137, 'CAPIVARI/SP - BRASIL', 'CAPIVARI', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5138, 'CARAGUATATUBA/SP - BRASIL', 'CARAGUATATUBA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5140, 'CARDOSO/SP - BRASIL', 'CARDOSO', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5141, 'CASA BRANCA/SP - BRASIL', 'CASA BRANCA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5143, 'CASTILHO/SP - BRASIL', 'CASTILHO', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5144, 'CATANDUVA/SP - BRASIL', 'CATANDUVA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5145, 'CATIGUA/SP - BRASIL', 'CATIGUA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5146, 'CEDRAL/SP - BRASIL', 'CEDRAL', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5149, 'CESARIO LANGE/SP - BRASIL', 'CESARIO LANGE', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5151, 'CHAVANTES/SP - BRASIL', 'CHAVANTES', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5152, 'CLEMENTINA/SP - BRASIL', 'CLEMENTINA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5156, 'CONCHAS/SP - BRASIL', 'CONCHAS', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5158, 'COROADOS/SP - BRASIL', 'COROADOS', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5161, 'COSMOPOLIS/SP - BRASIL', 'COSMOPOLIS', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5162, 'COSMORAMA/SP - BRASIL', 'COSMORAMA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5164, 'CRAVINHOS/SP - BRASIL', 'CRAVINHOS', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5167, 'CRUZEIRO/SP - BRASIL', 'CRUZEIRO', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5168, 'CUBATAO/SP - BRASIL', 'CUBATAO', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5171, 'DIADEMA/SP - BRASIL', 'DIADEMA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5174, 'DOBRADA/SP - BRASIL', 'DOBRADA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5176, 'DOLCINOPOLIS/SP - BRASIL', 'DOLCINOPOLIS', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5178, 'DRACENA/SP - BRASIL', 'DRACENA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5180, 'DUMONT/SP - BRASIL', 'DUMONT', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4916, 'PEDRAS GRANDES/SC - BRASIL', 'PEDRAS GRANDES', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4917, 'PENHA/SC - BRASIL', 'PENHA', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4921, 'PINHALZINHO/SC - BRASIL', 'PINHALZINHO', 24, 28);
commit;
prompt 500 records committed...
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4923, 'PIRATUBA/SC - BRASIL', 'PIRATUBA', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4926, 'PONTE ALTA/SC - BRASIL', 'PONTE ALTA', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4928, 'PONTE SERRADA/SC - BRASIL', 'PONTE SERRADA', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4929, 'PORTO BELO/SC - BRASIL', 'PORTO BELO', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4932, 'PRAIA GRANDE/SC - BRASIL', 'PRAIA GRANDE', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4934, 'PRESIDENTE GETULIO/SC - BRASIL', 'PRESIDENTE GETULIO', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4937, 'QUILOMBO/SC - BRASIL', 'QUILOMBO', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4939, 'RIO DO CAMPO/SC - BRASIL', 'RIO DO CAMPO', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4940, 'RIO DO OESTE/SC - BRASIL', 'RIO DO OESTE', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4944, 'RIO NEGRINHO/SC - BRASIL', 'RIO NEGRINHO', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4945, 'RIO RUFINO/SC - BRASIL', 'RIO RUFINO', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4947, 'RODEIO/SC - BRASIL', 'RODEIO', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4948, 'ROMELANDIA/SC - BRASIL', 'ROMELANDIA', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4950, 'SALTINHO/SC - BRASIL', 'SALTINHO', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4952, 'SANGAO/SC - BRASIL', 'SANGAO', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4953, 'SANTA CECILIA/SC - BRASIL', 'SANTA CECILIA', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4955, 'SANTA ROSA DE LIMA/SC - BRASIL', 'SANTA ROSA DE LIMA', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4957, 'SANTA TEREZINHA/SC - BRASIL', 'SANTA TEREZINHA', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4959, 'SANTIAGO DO SUL/SC - BRASIL', 'SANTIAGO DO SUL', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4960, 'SANTO AMARO DA IMPERATRIZ/SC - BRASIL', 'SANTO AMARO DA IMPERATRIZ', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4962, 'SAO BERNARDINO/SC - BRASIL', 'SAO BERNARDINO', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4963, 'SAO BONIFACIO/SC - BRASIL', 'SAO BONIFACIO', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4966, 'SAO DOMINGOS/SC - BRASIL', 'SAO DOMINGOS', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4967, 'SAO FRANCISCO DO SUL/SC - BRASIL', 'SAO FRANCISCO DO SUL', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4968, 'SAO JOAO BATISTA/SC - BRASIL', 'SAO JOAO BATISTA', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4969, 'SAO JOAO DO ITAPERIU/SC - BRASIL', 'SAO JOAO DO ITAPERIU', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4970, 'SAO JOAO DO OESTE/SC - BRASIL', 'SAO JOAO DO OESTE', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4971, 'SAO JOAO DO SUL/SC - BRASIL', 'SAO JOAO DO SUL', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4972, 'SAO JOAQUIM/SC - BRASIL', 'SAO JOAQUIM', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4973, 'SAO JOSE/SC - BRASIL', 'SAO JOSE', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4974, 'SAO JOSE DO CEDRO/SC - BRASIL', 'SAO JOSE DO CEDRO', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4975, 'SAO JOSE DO CERRITO/SC - BRASIL', 'SAO JOSE DO CERRITO', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4976, 'SAO LOURENCO DO OESTE/SC - BRASIL', 'SAO LOURENCO DO OESTE', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4977, 'SAO LUDGERO/SC - BRASIL', 'SAO LUDGERO', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4978, 'SAO MARTINHO/SC - BRASIL', 'SAO MARTINHO', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4979, 'SAO MIGUEL DA BOA VISTA/SC - BRASIL', 'SAO MIGUEL DA BOA VISTA', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4980, 'SAO MIGUEL D´OESTE/SC - BRASIL', 'SAO MIGUEL D´OESTE', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4981, 'SAO PEDRO DE ALCANTARA/SC - BRASIL', 'SAO PEDRO DE ALCANTARA', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4982, 'SAUDADES/SC - BRASIL', 'SAUDADES', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4983, 'SCHROEDER/SC - BRASIL', 'SCHROEDER', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4984, 'SEARA/SC - BRASIL', 'SEARA', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4985, 'SERRA ALTA/SC - BRASIL', 'SERRA ALTA', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4986, 'SIDEROPOLIS/SC - BRASIL', 'SIDEROPOLIS', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4987, 'SOMBRIO/SC - BRASIL', 'SOMBRIO', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4988, 'SUL BRASIL/SC - BRASIL', 'SUL BRASIL', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4990, 'TANGARA/SC - BRASIL', 'TANGARA', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4992, 'TIJUCAS/SC - BRASIL', 'TIJUCAS', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4993, 'TIMBE DO SUL/SC - BRASIL', 'TIMBE DO SUL', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4995, 'TIMBO GRANDE/SC - BRASIL', 'TIMBO GRANDE', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4996, 'TRES BARRAS/SC - BRASIL', 'TRES BARRAS', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4998, 'TREZE DE MAIO/SC - BRASIL', 'TREZE DE MAIO', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5000, 'TROMBUDO CENTRAL/SC - BRASIL', 'TROMBUDO CENTRAL', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5001, 'TUBARAO/SC - BRASIL', 'TUBARAO', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5003, 'TURVO/SC - BRASIL', 'TURVO', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5006, 'URUPEMA/SC - BRASIL', 'URUPEMA', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5007, 'URUSSANGA/SC - BRASIL', 'URUSSANGA', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5009, 'VARGEM/SC - BRASIL', 'VARGEM', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5012, 'VIDEIRA/SC - BRASIL', 'VIDEIRA', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5014, 'WITMARSUM/SC - BRASIL', 'WITMARSUM', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5016, 'XAVANTINA/SC - BRASIL', 'XAVANTINA', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5018, 'ZORTEA/SC - BRASIL', 'ZORTEA', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5021, 'AGUAI/SP - BRASIL', 'AGUAI', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5025, 'AGUAS DE SAO PEDRO/SP - BRASIL', 'AGUAS DE SAO PEDRO', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5026, 'AGUDOS/SP - BRASIL', 'AGUDOS', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5027, 'ALAMBARI/SP - BRASIL', 'ALAMBARI', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5030, 'ALTINOPOLIS/SP - BRASIL', 'ALTINOPOLIS', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5031, 'ALTO ALEGRE/SP - BRASIL', 'ALTO ALEGRE', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5034, 'ALVARES MACHADO/SP - BRASIL', 'ALVARES MACHADO', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5036, 'ALVINLANDIA/SP - BRASIL', 'ALVINLANDIA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5039, 'AMERICO DE CAMPOS/SP - BRASIL', 'AMERICO DE CAMPOS', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5040, 'AMPARO/SP - BRASIL', 'AMPARO', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4776, 'BRUSQUE/SC - BRASIL', 'BRUSQUE', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4777, 'CACADOR/SC - BRASIL', 'CACADOR', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4780, 'CAMBORIU/SC - BRASIL', 'CAMBORIU', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4784, 'CAMPOS NOVOS/SC - BRASIL', 'CAMPOS NOVOS', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4786, 'CANOINHAS/SC - BRASIL', 'CANOINHAS', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4787, 'CAPAO ALTO/SC - BRASIL', 'CAPAO ALTO', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4791, 'CAXAMBU DO SUL/SC - BRASIL', 'CAXAMBU DO SUL', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4793, 'CERRO NEGRO/SC - BRASIL', 'CERRO NEGRO', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4795, 'CHAPECO/SC - BRASIL', 'CHAPECO', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4796, 'COCAL DO SUL/SC - BRASIL', 'COCAL DO SUL', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4799, 'CORONEL FREITAS/SC - BRASIL', 'CORONEL FREITAS', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4801, 'CORREIA PINTO/SC - BRASIL', 'CORREIA PINTO', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4803, 'CRICIUMA/SC - BRASIL', 'CRICIUMA', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4805, 'CUNHATAI/SC - BRASIL', 'CUNHATAI', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4806, 'CURITIBANOS/SC - BRASIL', 'CURITIBANOS', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4809, 'DONA EMMA/SC - BRASIL', 'DONA EMMA', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4810, 'DOUTOR PEDRINHO/SC - BRASIL', 'DOUTOR PEDRINHO', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4811, 'ERMO/SC - BRASIL', 'ERMO', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4812, 'ERVAL VELHO/SC - BRASIL', 'ERVAL VELHO', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4814, 'FLOR DO SERTAO/SC - BRASIL', 'FLOR DO SERTAO', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4816, 'FORMOSA DO SUL/SC - BRASIL', 'FORMOSA DO SUL', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4817, 'FORQUILHINHA/SC - BRASIL', 'FORQUILHINHA', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4819, 'FREI ROGERIO/SC - BRASIL', 'FREI ROGERIO', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4820, 'GALVAO/SC - BRASIL', 'GALVAO', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4822, 'GARUVA/SC - BRASIL', 'GARUVA', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4823, 'GASPAR/SC - BRASIL', 'GASPAR', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4825, 'GRAO PARA/SC - BRASIL', 'GRAO PARA', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4826, 'GRAVATAL/SC - BRASIL', 'GRAVATAL', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4827, 'GUABIRUBA/SC - BRASIL', 'GUABIRUBA', 24, 28);
commit;
prompt 600 records committed...
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4828, 'GUARACIABA/SC - BRASIL', 'GUARACIABA', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4829, 'GUARAMIRIM/SC - BRASIL', 'GUARAMIRIM', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4830, 'GUARUJA DO SUL/SC - BRASIL', 'GUARUJA DO SUL', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4831, 'GUATAMBU/SC - BRASIL', 'GUATAMBU', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4832, 'HERVAL D´OESTE/SC - BRASIL', 'HERVAL D´OESTE', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4833, 'IBIAM/SC - BRASIL', 'IBIAM', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4834, 'IBICARE/SC - BRASIL', 'IBICARE', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4835, 'IBIRAMA/SC - BRASIL', 'IBIRAMA', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4836, 'ICARA/SC - BRASIL', 'ICARA', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4837, 'ILHOTA/SC - BRASIL', 'ILHOTA', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4838, 'IMARUI/SC - BRASIL', 'IMARUI', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4839, 'IMBITUBA/SC - BRASIL', 'IMBITUBA', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4840, 'IMBUIA/SC - BRASIL', 'IMBUIA', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4841, 'INDAIAL/SC - BRASIL', 'INDAIAL', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4842, 'IOMERE/SC - BRASIL', 'IOMERE', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4843, 'IPIRA/SC - BRASIL', 'IPIRA', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4844, 'IPORA DO OESTE/SC - BRASIL', 'IPORA DO OESTE', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4846, 'IPUMIRIM/SC - BRASIL', 'IPUMIRIM', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4847, 'IRACEMINHA/SC - BRASIL', 'IRACEMINHA', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4849, 'IRATI/SC - BRASIL', 'IRATI', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4851, 'ITA/SC - BRASIL', 'ITA', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4852, 'ITAIOPOLIS/SC - BRASIL', 'ITAIOPOLIS', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4854, 'ITAPEMA/SC - BRASIL', 'ITAPEMA', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4855, 'ITAPIRANGA/SC - BRASIL', 'ITAPIRANGA', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4857, 'ITUPORANGA/SC - BRASIL', 'ITUPORANGA', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4859, 'JACINTO MACHADO/SC - BRASIL', 'JACINTO MACHADO', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4860, 'JAGUARUNA/SC - BRASIL', 'JAGUARUNA', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4862, 'JARDINOPOLIS/SC - BRASIL', 'JARDINOPOLIS', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4863, 'JOACABA/SC - BRASIL', 'JOACABA', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4864, 'JOINVILLE/SC - BRASIL', 'JOINVILLE', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4866, 'LACERDOPOLIS/SC - BRASIL', 'LACERDOPOLIS', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4867, 'LAGES/SC - BRASIL', 'LAGES', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4869, 'LAJEADO GRANDE/SC - BRASIL', 'LAJEADO GRANDE', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4870, 'LAURENTINO/SC - BRASIL', 'LAURENTINO', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4872, 'LEBON REGIS/SC - BRASIL', 'LEBON REGIS', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4873, 'LEOBERTO LEAL/SC - BRASIL', 'LEOBERTO LEAL', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4876, 'LUIZ ALVES/SC - BRASIL', 'LUIZ ALVES', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4877, 'LUZERNA/SC - BRASIL', 'LUZERNA', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4880, 'MAJOR GERCINO/SC - BRASIL', 'MAJOR GERCINO', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4883, 'MARAVILHA/SC - BRASIL', 'MARAVILHA', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4885, 'MASSARANDUBA/SC - BRASIL', 'MASSARANDUBA', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4888, 'MIRIM DOCE/SC - BRASIL', 'MIRIM DOCE', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4890, 'MONDAI/SC - BRASIL', 'MONDAI', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4894, 'MORRO GRANDE/SC - BRASIL', 'MORRO GRANDE', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4895, 'NAVEGANTES/SC - BRASIL', 'NAVEGANTES', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4898, 'NOVA TRENTO/SC - BRASIL', 'NOVA TRENTO', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4900, 'NOVO HORIZONTE/SC - BRASIL', 'NOVO HORIZONTE', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4901, 'ORLEANS/SC - BRASIL', 'ORLEANS', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4904, 'OURO VERDE/SC - BRASIL', 'OURO VERDE', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4906, 'PAINEL/SC - BRASIL', 'PAINEL', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4910, 'PALMITOS/SC - BRASIL', 'PALMITOS', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4911, 'PAPANDUVA/SC - BRASIL', 'PAPANDUVA', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4650, 'VIAMAO/RS - BRASIL', 'VIAMAO', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4651, 'VICENTE DUTRA/RS - BRASIL', 'VICENTE DUTRA', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4653, 'VILA FLORES/RS - BRASIL', 'VILA FLORES', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4656, 'VILA NOVA DO SUL/RS - BRASIL', 'VILA NOVA DO SUL', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4659, 'VISTA GAUCHA/RS - BRASIL', 'VISTA GAUCHA', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4661, 'WESTFALIA/RS - BRASIL', 'WESTFALIA', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4663, 'ALTA FLORESTA D´OESTE/RO - BRASIL', 'ALTA FLORESTA D´OESTE', 22, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4665, 'ALTO PARAISO/RO - BRASIL', 'ALTO PARAISO', 22, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4666, 'ALVORADA D´OESTE/RO - BRASIL', 'ALVORADA D´OESTE', 22, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4668, 'BURITIS/RO - BRASIL', 'BURITIS', 22, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4669, 'CABIXI/RO - BRASIL', 'CABIXI', 22, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4671, 'CACOAL/RO - BRASIL', 'CACOAL', 22, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4673, 'CANDEIAS DO JAMARI/RO - BRASIL', 'CANDEIAS DO JAMARI', 22, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4674, 'CASTANHEIRAS/RO - BRASIL', 'CASTANHEIRAS', 22, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4675, 'CEREJEIRAS/RO - BRASIL', 'CEREJEIRAS', 22, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4677, 'COLORADO DO OESTE/RO - BRASIL', 'COLORADO DO OESTE', 22, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4679, 'COSTA MARQUES/RO - BRASIL', 'COSTA MARQUES', 22, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4681, 'ESPIGAO D´OESTE/RO - BRASIL', 'ESPIGAO D´OESTE', 22, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4683, 'GUAJARA-MIRIM/RO - BRASIL', 'GUAJARA-MIRIM', 22, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4684, 'JAMARI/RO - BRASIL', 'JAMARI', 22, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4685, 'JARU/RO - BRASIL', 'JARU', 22, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4686, 'JI-PARANA/RO - BRASIL', 'JI-PARANA', 22, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4688, 'MINISTRO ANDREAZZA/RO - BRASIL', 'MINISTRO ANDREAZZA', 22, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4690, 'MONTE NEGRO/RO - BRASIL', 'MONTE NEGRO', 22, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4692, 'NOVA MAMORE/RO - BRASIL', 'NOVA MAMORE', 22, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4693, 'NOVA UNIAO/RO - BRASIL', 'NOVA UNIAO', 22, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4694, 'NOVO HORIZONTE DO OESTE/RO - BRASIL', 'NOVO HORIZONTE DO OESTE', 22, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4695, 'OURO PRETO DO OESTE/RO - BRASIL', 'OURO PRETO DO OESTE', 22, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4696, 'PARECIS/RO - BRASIL', 'PARECIS', 22, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4697, 'PIMENTA BUENO/RO - BRASIL', 'PIMENTA BUENO', 22, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4698, 'PIMENTEIRAS DO OESTE/RO - BRASIL', 'PIMENTEIRAS DO OESTE', 22, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4699, 'PORTO VELHO/RO - BRASIL', 'PORTO VELHO', 22, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4700, 'PRESIDENTE MEDICI/RO - BRASIL', 'PRESIDENTE MEDICI', 22, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4701, 'PRIMAVERA DE RONDONIA/RO - BRASIL', 'PRIMAVERA DE RONDONIA', 22, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4702, 'RIO CRESPO/RO - BRASIL', 'RIO CRESPO', 22, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4703, 'ROLIM DE MOURA/RO - BRASIL', 'ROLIM DE MOURA', 22, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4704, 'SANTA LUZIA D´OESTE/RO - BRASIL', 'SANTA LUZIA D´OESTE', 22, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4705, 'SAO FELIPE D´OESTE/RO - BRASIL', 'SAO FELIPE D´OESTE', 22, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4706, 'SAO FRANCISCO DO GUAPORE/RO - BRASIL', 'SAO FRANCISCO DO GUAPORE', 22, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4707, 'SAO MIGUEL DO GUAPORE/RO - BRASIL', 'SAO MIGUEL DO GUAPORE', 22, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4708, 'SERINGUEIRAS/RO - BRASIL', 'SERINGUEIRAS', 22, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4709, 'TEIXEIROPOLIS/RO - BRASIL', 'TEIXEIROPOLIS', 22, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4711, 'URUPA/RO - BRASIL', 'URUPA', 22, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4712, 'VALE DO ANARI/RO - BRASIL', 'VALE DO ANARI', 22, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4714, 'VILHENA/RO - BRASIL', 'VILHENA', 22, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4715, 'ALTO ALEGRE/RR - BRASIL', 'ALTO ALEGRE', 23, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4716, 'AMAJARI/RR - BRASIL', 'AMAJARI', 23, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4718, 'BONFIM/RR - BRASIL', 'BONFIM', 23, 28);
commit;
prompt 700 records committed...
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4719, 'CANTA/RR - BRASIL', 'CANTA', 23, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4721, 'CAROEBE/RR - BRASIL', 'CAROEBE', 23, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4722, 'IRACEMA/RR - BRASIL', 'IRACEMA', 23, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4724, 'NORMANDIA/RR - BRASIL', 'NORMANDIA', 23, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4725, 'PACARAIMA/RR - BRASIL', 'PACARAIMA', 23, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4729, 'UIRAMUTA/RR - BRASIL', 'UIRAMUTA', 23, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4731, 'ABDON BATISTA/SC - BRASIL', 'ABDON BATISTA', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4733, 'AGROLANDIA/SC - BRASIL', 'AGROLANDIA', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4736, 'AGUAS DE CHAPECO/SC - BRASIL', 'AGUAS DE CHAPECO', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4738, 'AGUAS MORNAS/SC - BRASIL', 'AGUAS MORNAS', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4741, 'ANCHIETA/SC - BRASIL', 'ANCHIETA', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4742, 'ANGELINA/SC - BRASIL', 'ANGELINA', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4744, 'ANITAPOLIS/SC - BRASIL', 'ANITAPOLIS', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4747, 'ARABUTA/SC - BRASIL', 'ARABUTA', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4748, 'ARAQUARI/SC - BRASIL', 'ARAQUARI', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4751, 'ARROIO TRINTA/SC - BRASIL', 'ARROIO TRINTA', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4753, 'ASCURRA/SC - BRASIL', 'ASCURRA', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4757, 'BALNEARIO CAMBORIU/SC - BRASIL', 'BALNEARIO CAMBORIU', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4758, 'BALNEARIO GAIVOTA/SC - BRASIL', 'BALNEARIO GAIVOTA', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4762, 'BELMONTE/SC - BRASIL', 'BELMONTE', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4763, 'BENEDITO NOVO/SC - BRASIL', 'BENEDITO NOVO', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4765, 'BLUMENAU/SC - BRASIL', 'BLUMENAU', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4767, 'BOM JARDIM DA SERRA/SC - BRASIL', 'BOM JARDIM DA SERRA', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4771, 'BOMBINHAS/SC - BRASIL', 'BOMBINHAS', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4772, 'BOTUVERA/SC - BRASIL', 'BOTUVERA', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4774, 'BRACO DO TROMBUDO/SC - BRASIL', 'BRACO DO TROMBUDO', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4530, 'SALTO DO JACUI/RS - BRASIL', 'SALTO DO JACUI', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4532, 'SANANDUVA/RS - BRASIL', 'SANANDUVA', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4533, 'SANTA BARBARA DO SUL/RS - BRASIL', 'SANTA BARBARA DO SUL', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4536, 'SANTA MARIA/RS - BRASIL', 'SANTA MARIA', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4538, 'SANTA ROSA/RS - BRASIL', 'SANTA ROSA', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4539, 'SANTA TEREZA/RS - BRASIL', 'SANTA TEREZA', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4541, 'SANTANA DA BOA VISTA/RS - BRASIL', 'SANTANA DA BOA VISTA', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4543, 'SANTIAGO/RS - BRASIL', 'SANTIAGO', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4544, 'SANTO ANGELO/RS - BRASIL', 'SANTO ANGELO', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4546, 'SANTO ANTONIO DAS MISSOES/RS - BRASIL', 'SANTO ANTONIO DAS MISSOES', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4547, 'SANTO ANTONIO DO PALMA/RS - BRASIL', 'SANTO ANTONIO DO PALMA', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4549, 'SANTO AUGUSTO/RS - BRASIL', 'SANTO AUGUSTO', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4550, 'SANTO CRISTO/RS - BRASIL', 'SANTO CRISTO', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4552, 'SAO BORJA/RS - BRASIL', 'SAO BORJA', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4553, 'SAO DOMINGOS DO SUL/RS - BRASIL', 'SAO DOMINGOS DO SUL', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4555, 'SAO FRANCISCO DE PAULA/RS - BRASIL', 'SAO FRANCISCO DE PAULA', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4556, 'SAO GABRIEL/RS - BRASIL', 'SAO GABRIEL', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4558, 'SAO JOAO DA URTIGA/RS - BRASIL', 'SAO JOAO DA URTIGA', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4560, 'SAO JORGE/RS - BRASIL', 'SAO JORGE', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4561, 'SAO JOSE DAS MISSOES/RS - BRASIL', 'SAO JOSE DAS MISSOES', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4563, 'SAO JOSE DO HORTENCIO/RS - BRASIL', 'SAO JOSE DO HORTENCIO', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4564, 'SAO JOSE DO NORTE/RS - BRASIL', 'SAO JOSE DO NORTE', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4565, 'SAO JOSE DO OURO/RS - BRASIL', 'SAO JOSE DO OURO', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4566, 'SAO JOSE DO SUL/RS - BRASIL', 'SAO JOSE DO SUL', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4567, 'SAO JOSE DOS AUSENTES/RS - BRASIL', 'SAO JOSE DOS AUSENTES', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4568, 'SAO LEOPOLDO/RS - BRASIL', 'SAO LEOPOLDO', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4569, 'SAO LOURENCO DO SUL/RS - BRASIL', 'SAO LOURENCO DO SUL', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4570, 'SAO LUIZ GONZAGA/RS - BRASIL', 'SAO LUIZ GONZAGA', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4571, 'SAO MARCOS/RS - BRASIL', 'SAO MARCOS', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4572, 'SAO MARTINHO/RS - BRASIL', 'SAO MARTINHO', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4573, 'SAO MARTINHO DA SERRA/RS - BRASIL', 'SAO MARTINHO DA SERRA', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4574, 'SAO MIGUEL DAS MISSOES/RS - BRASIL', 'SAO MIGUEL DAS MISSOES', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4575, 'SAO NICOLAU/RS - BRASIL', 'SAO NICOLAU', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4576, 'SAO PAULO DAS MISSOES/RS - BRASIL', 'SAO PAULO DAS MISSOES', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4577, 'SAO PEDRO DA SERRA/RS - BRASIL', 'SAO PEDRO DA SERRA', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4578, 'SAO PEDRO DO SUL/RS - BRASIL', 'SAO PEDRO DO SUL', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4579, 'SAO SEBASTIAO DO CAI/RS - BRASIL', 'SAO SEBASTIAO DO CAI', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4580, 'SAO SEPE/RS - BRASIL', 'SAO SEPE', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4581, 'SAO VALENTIM/RS - BRASIL', 'SAO VALENTIM', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4582, 'SAO VALENTIM DO SUL/RS - BRASIL', 'SAO VALENTIM DO SUL', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4584, 'SAO VICENTE DO SUL/RS - BRASIL', 'SAO VICENTE DO SUL', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4585, 'SAPIRANGA/RS - BRASIL', 'SAPIRANGA', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4586, 'SAPUCAIA DO SUL/RS - BRASIL', 'SAPUCAIA DO SUL', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4588, 'SEBERI/RS - BRASIL', 'SEBERI', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4590, 'SEGREDO/RS - BRASIL', 'SEGREDO', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4591, 'SELBACH/RS - BRASIL', 'SELBACH', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4595, 'SERIO/RS - BRASIL', 'SERIO', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4596, 'SERTAO/RS - BRASIL', 'SERTAO', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4597, 'SERTAO SANTANA/RS - BRASIL', 'SERTAO SANTANA', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4601, 'SINIMBU/RS - BRASIL', 'SINIMBU', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4602, 'SOBRADINHO/RS - BRASIL', 'SOBRADINHO', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4603, 'SOLEDADE/RS - BRASIL', 'SOLEDADE', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4604, 'TABAI/RS - BRASIL', 'TABAI', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4607, 'TAPES/RS - BRASIL', 'TAPES', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4609, 'TAQUARI/RS - BRASIL', 'TAQUARI', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4612, 'TENENTE PORTELA/RS - BRASIL', 'TENENTE PORTELA', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4615, 'TIRADENTES DO SUL/RS - BRASIL', 'TIRADENTES DO SUL', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4616, 'TOROPI/RS - BRASIL', 'TOROPI', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4620, 'TRES ARROIOS/RS - BRASIL', 'TRES ARROIOS', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4622, 'TRES COROAS/RS - BRASIL', 'TRES COROAS', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4625, 'TRES PALMEIRAS/RS - BRASIL', 'TRES PALMEIRAS', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4626, 'TRES PASSOS/RS - BRASIL', 'TRES PASSOS', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4628, 'TRIUNFO/RS - BRASIL', 'TRIUNFO', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4630, 'TUNAS/RS - BRASIL', 'TUNAS', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4632, 'TUPANCIRETA/RS - BRASIL', 'TUPANCIRETA', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4635, 'TURUCU/RS - BRASIL', 'TURUCU', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4638, 'UNISTALDA/RS - BRASIL', 'UNISTALDA', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4639, 'URUGUAIANA/RS - BRASIL', 'URUGUAIANA', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4643, 'VALE VERDE/RS - BRASIL', 'VALE VERDE', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4644, 'VANINI/RS - BRASIL', 'VANINI', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4646, 'VERA CRUZ/RS - BRASIL', 'VERA CRUZ', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4649, 'VIADUTOS/RS - BRASIL', 'VIADUTOS', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4397, 'ITACURUBI/RS - BRASIL', 'ITACURUBI', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4399, 'ITAQUI/RS - BRASIL', 'ITAQUI', 21, 28);
commit;
prompt 800 records committed...
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4401, 'IVORA/RS - BRASIL', 'IVORA', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4402, 'IVOTI/RS - BRASIL', 'IVOTI', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4404, 'JACUTINGA/RS - BRASIL', 'JACUTINGA', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4405, 'JAGUARAO/RS - BRASIL', 'JAGUARAO', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4406, 'JAGUARI/RS - BRASIL', 'JAGUARI', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4408, 'JARI/RS - BRASIL', 'JARI', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4409, 'JOIA/RS - BRASIL', 'JOIA', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4411, 'LAGOA DOS TRES CANTOS/RS - BRASIL', 'LAGOA DOS TRES CANTOS', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4413, 'LAGOAO/RS - BRASIL', 'LAGOAO', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4414, 'LAJEADO/RS - BRASIL', 'LAJEADO', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4415, 'LAJEADO DO BUGRE/RS - BRASIL', 'LAJEADO DO BUGRE', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4417, 'LIBERATO SALZANO/RS - BRASIL', 'LIBERATO SALZANO', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4419, 'LINHA NOVA/RS - BRASIL', 'LINHA NOVA', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4420, 'MACAMBARA/RS - BRASIL', 'MACAMBARA', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4422, 'MAMPITUBA/RS - BRASIL', 'MAMPITUBA', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4423, 'MANOEL VIANA/RS - BRASIL', 'MANOEL VIANA', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4425, 'MARATA/RS - BRASIL', 'MARATA', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4426, 'MARAU/RS - BRASIL', 'MARAU', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4428, 'MARIANA PIMENTEL/RS - BRASIL', 'MARIANA PIMENTEL', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4430, 'MARQUES DE SOUZA/RS - BRASIL', 'MARQUES DE SOUZA', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4431, 'MATA/RS - BRASIL', 'MATA', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4433, 'MATO LEITAO/RS - BRASIL', 'MATO LEITAO', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4435, 'MINAS DO LEAO/RS - BRASIL', 'MINAS DO LEAO', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4436, 'MIRAGUAI/RS - BRASIL', 'MIRAGUAI', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4437, 'MONTAURI/RS - BRASIL', 'MONTAURI', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4438, 'MONTE ALEGRE DOS CAMPOS/RS - BRASIL', 'MONTE ALEGRE DOS CAMPOS', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4439, 'MONTE BELO DO SUL/RS - BRASIL', 'MONTE BELO DO SUL', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4440, 'MONTENEGRO/RS - BRASIL', 'MONTENEGRO', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4441, 'MORMACO/RS - BRASIL', 'MORMACO', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4442, 'MORRINHOS DO SUL/RS - BRASIL', 'MORRINHOS DO SUL', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4443, 'MORRO REDONDO/RS - BRASIL', 'MORRO REDONDO', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4444, 'MORRO REUTER/RS - BRASIL', 'MORRO REUTER', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4445, 'MOSTARDAS/RS - BRASIL', 'MOSTARDAS', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4446, 'MUCUM/RS - BRASIL', 'MUCUM', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4447, 'MUITOS CAPOES/RS - BRASIL', 'MUITOS CAPOES', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4448, 'MULITERNO/RS - BRASIL', 'MULITERNO', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4450, 'NICOLAU VERGUEIRO/RS - BRASIL', 'NICOLAU VERGUEIRO', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4451, 'NONOAI/RS - BRASIL', 'NONOAI', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4453, 'NOVA ARACA/RS - BRASIL', 'NOVA ARACA', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4454, 'NOVA BASSANO/RS - BRASIL', 'NOVA BASSANO', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4455, 'NOVA BOA VISTA/RS - BRASIL', 'NOVA BOA VISTA', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4457, 'NOVA CANDELARIA/RS - BRASIL', 'NOVA CANDELARIA', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4458, 'NOVA ESPERANCA DO SUL/RS - BRASIL', 'NOVA ESPERANCA DO SUL', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4460, 'NOVA PADUA/RS - BRASIL', 'NOVA PADUA', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4461, 'NOVA PALMA/RS - BRASIL', 'NOVA PALMA', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4462, 'NOVA PETROPOLIS/RS - BRASIL', 'NOVA PETROPOLIS', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4464, 'NOVA RAMADA/RS - BRASIL', 'NOVA RAMADA', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4465, 'NOVA ROMA DO SUL/RS - BRASIL', 'NOVA ROMA DO SUL', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4467, 'NOVO BARREIRO/RS - BRASIL', 'NOVO BARREIRO', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4469, 'NOVO HAMBURGO/RS - BRASIL', 'NOVO HAMBURGO', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4471, 'NOVO TIRADENTES/RS - BRASIL', 'NOVO TIRADENTES', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4474, 'PALMARES DO SUL/RS - BRASIL', 'PALMARES DO SUL', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4477, 'PANAMBI/RS - BRASIL', 'PANAMBI', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4478, 'PANTANO GRANDE/RS - BRASIL', 'PANTANO GRANDE', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4482, 'PAROBE/RS - BRASIL', 'PAROBE', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4483, 'PASSA SETE/RS - BRASIL', 'PASSA SETE', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4485, 'PASSO FUNDO/RS - BRASIL', 'PASSO FUNDO', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4488, 'PEJUCARA/RS - BRASIL', 'PEJUCARA', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4489, 'PELOTAS/RS - BRASIL', 'PELOTAS', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4493, 'PINHEIRINHO DO VALE/RS - BRASIL', 'PINHEIRINHO DO VALE', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4495, 'PIRAPO/RS - BRASIL', 'PIRAPO', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4497, 'PLANALTO/RS - BRASIL', 'PLANALTO', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4499, 'PONTAO/RS - BRASIL', 'PONTAO', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4501, 'PORTAO/RS - BRASIL', 'PORTAO', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4503, 'PORTO LUCENA/RS - BRASIL', 'PORTO LUCENA', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4506, 'POUSO NOVO/RS - BRASIL', 'POUSO NOVO', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4508, 'PROGRESSO/RS - BRASIL', 'PROGRESSO', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4509, 'PROTASIO ALVES/RS - BRASIL', 'PROTASIO ALVES', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4512, 'QUEVEDOS/RS - BRASIL', 'QUEVEDOS', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4514, 'REDENTORA/RS - BRASIL', 'REDENTORA', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4516, 'RESTINGA SECA/RS - BRASIL', 'RESTINGA SECA', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4519, 'RIO PARDO/RS - BRASIL', 'RIO PARDO', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4521, 'ROCA SALES/RS - BRASIL', 'ROCA SALES', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4523, 'ROLANTE/RS - BRASIL', 'ROLANTE', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4526, 'ROQUE GONZALES/RS - BRASIL', 'ROQUE GONZALES', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4265, 'CAMPINA DAS MISSOES/RS - BRASIL', 'CAMPINA DAS MISSOES', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4267, 'CAMPO BOM/RS - BRASIL', 'CAMPO BOM', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4268, 'CAMPO NOVO/RS - BRASIL', 'CAMPO NOVO', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4270, 'CANDELARIA/RS - BRASIL', 'CANDELARIA', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4271, 'CANDIDO GODOI/RS - BRASIL', 'CANDIDO GODOI', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4273, 'CANELA/RS - BRASIL', 'CANELA', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4274, 'CANGUCU/RS - BRASIL', 'CANGUCU', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4275, 'CANOAS/RS - BRASIL', 'CANOAS', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4277, 'CAPAO DO LEAO/RS - BRASIL', 'CAPAO DO LEAO', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4279, 'CAPITAO/RS - BRASIL', 'CAPITAO', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4280, 'CAPIVARI DO SUL/RS - BRASIL', 'CAPIVARI DO SUL', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4281, 'CARAA/RS - BRASIL', 'CARAA', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4283, 'CARLOS BARBOSA/RS - BRASIL', 'CARLOS BARBOSA', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4285, 'CASCA/RS - BRASIL', 'CASCA', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4286, 'CASEIROS/RS - BRASIL', 'CASEIROS', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4287, 'CATUIPE/RS - BRASIL', 'CATUIPE', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4289, 'CENTENARIO/RS - BRASIL', 'CENTENARIO', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4290, 'CERRITO/RS - BRASIL', 'CERRITO', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4292, 'CERRO GRANDE/RS - BRASIL', 'CERRO GRANDE', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4294, 'CERRO LARGO/RS - BRASIL', 'CERRO LARGO', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4295, 'CHAPADA/RS - BRASIL', 'CHAPADA', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4296, 'CHARQUEADAS/RS - BRASIL', 'CHARQUEADAS', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4297, 'CHARRUA/RS - BRASIL', 'CHARRUA', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4299, 'CHUI/RS - BRASIL', 'CHUI', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4300, 'CHUVISCA/RS - BRASIL', 'CHUVISCA', 21, 28);
commit;
prompt 900 records committed...
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4301, 'CIDREIRA/RS - BRASIL', 'CIDREIRA', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4302, 'CIRIACO/RS - BRASIL', 'CIRIACO', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4303, 'COLINAS/RS - BRASIL', 'COLINAS', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4304, 'COLORADO/RS - BRASIL', 'COLORADO', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4305, 'CONDOR/RS - BRASIL', 'CONDOR', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4306, 'CONSTANTINA/RS - BRASIL', 'CONSTANTINA', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4307, 'COQUEIROS DO SUL/RS - BRASIL', 'COQUEIROS DO SUL', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4308, 'CORONEL BICACO/RS - BRASIL', 'CORONEL BICACO', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4310, 'COXILHA/RS - BRASIL', 'COXILHA', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4311, 'CRISSIUMAL/RS - BRASIL', 'CRISSIUMAL', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4313, 'CRISTAL DO SUL/RS - BRASIL', 'CRISTAL DO SUL', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4314, 'CRUZ ALTA/RS - BRASIL', 'CRUZ ALTA', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4316, 'CRUZEIRO DO SUL/RS - BRASIL', 'CRUZEIRO DO SUL', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4317, 'DAVID CANABARRO/RS - BRASIL', 'DAVID CANABARRO', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4319, 'DILERMANDO DE AGUIAR/RS - BRASIL', 'DILERMANDO DE AGUIAR', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4320, 'DOIS IRMAOS/RS - BRASIL', 'DOIS IRMAOS', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4321, 'DOIS IRMAOS DAS MISSOES/RS - BRASIL', 'DOIS IRMAOS DAS MISSOES', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4322, 'DOIS LAJEADOS/RS - BRASIL', 'DOIS LAJEADOS', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4324, 'DOM PEDRITO/RS - BRASIL', 'DOM PEDRITO', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4325, 'DOM PEDRO DE ALCANTARA/RS - BRASIL', 'DOM PEDRO DE ALCANTARA', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4326, 'DONA FRANCISCA/RS - BRASIL', 'DONA FRANCISCA', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4328, 'DOUTOR RICARDO/RS - BRASIL', 'DOUTOR RICARDO', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4329, 'ELDORADO DO SUL/RS - BRASIL', 'ELDORADO DO SUL', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4330, 'ENCANTADO/RS - BRASIL', 'ENCANTADO', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4331, 'ENCRUZILHADA DO SUL/RS - BRASIL', 'ENCRUZILHADA DO SUL', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4334, 'ENTRE-IJUIS/RS - BRASIL', 'ENTRE-IJUIS', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4336, 'ERECHIM/RS - BRASIL', 'ERECHIM', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4337, 'ERNESTINA/RS - BRASIL', 'ERNESTINA', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4339, 'ERVAL SECO/RS - BRASIL', 'ERVAL SECO', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4343, 'ESTACAO/RS - BRASIL', 'ESTACAO', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4344, 'ESTANCIA VELHA/RS - BRASIL', 'ESTANCIA VELHA', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4346, 'ESTRELA/RS - BRASIL', 'ESTRELA', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4350, 'FARROUPILHA/RS - BRASIL', 'FARROUPILHA', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4352, 'FAXINALZINHO/RS - BRASIL', 'FAXINALZINHO', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4353, 'FAZENDA VILANOVA/RS - BRASIL', 'FAZENDA VILANOVA', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4356, 'FLORIANO PEIXOTO/RS - BRASIL', 'FLORIANO PEIXOTO', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4359, 'FORTALEZA DOS VALOS/RS - BRASIL', 'FORTALEZA DOS VALOS', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4361, 'GARIBALDI/RS - BRASIL', 'GARIBALDI', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4362, 'GARRUCHOS/RS - BRASIL', 'GARRUCHOS', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4365, 'GENTIL/RS - BRASIL', 'GENTIL', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4367, 'GIRUA/RS - BRASIL', 'GIRUA', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4369, 'GRAMADO/RS - BRASIL', 'GRAMADO', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4371, 'GRAMADO XAVIER/RS - BRASIL', 'GRAMADO XAVIER', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4373, 'GUABIJU/RS - BRASIL', 'GUABIJU', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4375, 'GUAPORE/RS - BRASIL', 'GUAPORE', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4378, 'HERVAL/RS - BRASIL', 'HERVAL', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4379, 'HERVEIRAS/RS - BRASIL', 'HERVEIRAS', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4382, 'IBARAMA/RS - BRASIL', 'IBARAMA', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4383, 'IBIACA/RS - BRASIL', 'IBIACA', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4386, 'IBIRUBA/RS - BRASIL', 'IBIRUBA', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4388, 'IJUI/RS - BRASIL', 'IJUI', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4389, 'ILOPOLIS/RS - BRASIL', 'ILOPOLIS', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4391, 'IMIGRANTE/RS - BRASIL', 'IMIGRANTE', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4393, 'IPE/RS - BRASIL', 'IPE', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4394, 'IPIRANGA DO SUL/RS - BRASIL', 'IPIRANGA DO SUL', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4395, 'IRAI/RS - BRASIL', 'IRAI', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4140, 'PENDENCIAS/RN - BRASIL', 'PENDENCIAS', 20, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4142, 'POCO BRANCO/RN - BRASIL', 'POCO BRANCO', 20, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4144, 'PORTO DO MANGUE/RN - BRASIL', 'PORTO DO MANGUE', 20, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4146, 'RAFAEL FERNANDES/RN - BRASIL', 'RAFAEL FERNANDES', 20, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4148, 'RIACHO DA CRUZ/RN - BRASIL', 'RIACHO DA CRUZ', 20, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4150, 'RIACHUELO/RN - BRASIL', 'RIACHUELO', 20, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4151, 'RIO DO FOGO/RN - BRASIL', 'RIO DO FOGO', 20, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4153, 'RUY BARBOSA/RN - BRASIL', 'RUY BARBOSA', 20, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4154, 'SANTA CRUZ/RN - BRASIL', 'SANTA CRUZ', 20, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4155, 'SANTA MARIA/RN - BRASIL', 'SANTA MARIA', 20, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4157, 'SANTANA DO SERIDO/RN - BRASIL', 'SANTANA DO SERIDO', 20, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4159, 'SAO BENTO DO NORTE/RN - BRASIL', 'SAO BENTO DO NORTE', 20, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4161, 'SAO FERNANDO/RN - BRASIL', 'SAO FERNANDO', 20, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4163, 'SAO GONCALO DO AMARANTE/RN - BRASIL', 'SAO GONCALO DO AMARANTE', 20, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4164, 'SAO JOAO DO SABUGI/RN - BRASIL', 'SAO JOAO DO SABUGI', 20, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4166, 'SAO JOSE DO CAMPESTRE/RN - BRASIL', 'SAO JOSE DO CAMPESTRE', 20, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4167, 'SAO JOSE DO SERIDO/RN - BRASIL', 'SAO JOSE DO SERIDO', 20, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4168, 'SAO MIGUEL/RN - BRASIL', 'SAO MIGUEL', 20, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4169, 'SAO MIGUEL DE TOUROS/RN - BRASIL', 'SAO MIGUEL DE TOUROS', 20, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4170, 'SAO PAULO DO POTENGI/RN - BRASIL', 'SAO PAULO DO POTENGI', 20, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4171, 'SAO PEDRO/RN - BRASIL', 'SAO PEDRO', 20, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4172, 'SAO RAFAEL/RN - BRASIL', 'SAO RAFAEL', 20, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4173, 'SAO TOME/RN - BRASIL', 'SAO TOME', 20, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4174, 'SAO VICENTE/RN - BRASIL', 'SAO VICENTE', 20, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4175, 'SENADOR ELOI DE SOUZA/RN - BRASIL', 'SENADOR ELOI DE SOUZA', 20, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4176, 'SENADOR GEORGINO AVELINO/RN - BRASIL', 'SENADOR GEORGINO AVELINO', 20, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4177, 'SERRA CAIADA/RN - BRASIL', 'SERRA CAIADA', 20, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4178, 'SERRA DE SAO BENTO/RN - BRASIL', 'SERRA DE SAO BENTO', 20, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4180, 'SERRA NEGRA DO NORTE/RN - BRASIL', 'SERRA NEGRA DO NORTE', 20, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4181, 'SERRINHA/RN - BRASIL', 'SERRINHA', 20, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4183, 'SEVERIANO MELO/RN - BRASIL', 'SEVERIANO MELO', 20, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4184, 'SITIO NOVO/RN - BRASIL', 'SITIO NOVO', 20, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4185, 'TABOLEIRO GRANDE/RN - BRASIL', 'TABOLEIRO GRANDE', 20, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4186, 'TAIPU/RN - BRASIL', 'TAIPU', 20, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4188, 'TENENTE ANANIAS/RN - BRASIL', 'TENENTE ANANIAS', 20, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4189, 'TENENTE LAURENTINO CRUZ/RN - BRASIL', 'TENENTE LAURENTINO CRUZ', 20, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4191, 'TIBAU DO SUL/RN - BRASIL', 'TIBAU DO SUL', 20, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4193, 'TOUROS/RN - BRASIL', 'TOUROS', 20, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4195, 'UMARIZAL/RN - BRASIL', 'UMARIZAL', 20, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4196, 'UPANEMA/RN - BRASIL', 'UPANEMA', 20, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4197, 'VARZEA/RN - BRASIL', 'VARZEA', 20, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4200, 'VICOSA/RN - BRASIL', 'VICOSA', 20, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4201, 'VILA FLOR/RN - BRASIL', 'VILA FLOR', 20, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4204, 'AJURICABA/RS - BRASIL', 'AJURICABA', 21, 28);
commit;
prompt 1000 records committed...
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4207, 'ALEGRIA/RS - BRASIL', 'ALEGRIA', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4208, 'ALPESTRE/RS - BRASIL', 'ALPESTRE', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4212, 'AMARAL FERRADOR/RS - BRASIL', 'AMARAL FERRADOR', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4214, 'ANA RECH/RS - BRASIL', 'ANA RECH', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4217, 'ANTONIO PRADO/RS - BRASIL', 'ANTONIO PRADO', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4218, 'ARAMBARE/RS - BRASIL', 'ARAMBARE', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4220, 'ARATIBA/RS - BRASIL', 'ARATIBA', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4224, 'ARROIO DOS RATOS/RS - BRASIL', 'ARROIO DOS RATOS', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4225, 'ARROIO GRANDE/RS - BRASIL', 'ARROIO GRANDE', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4227, 'AUGUSTO PESTANA/RS - BRASIL', 'AUGUSTO PESTANA', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4231, 'BARAO/RS - BRASIL', 'BARAO', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4234, 'BARRA DO GUARITA/RS - BRASIL', 'BARRA DO GUARITA', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4235, 'BARRA DO QUARAI/RS - BRASIL', 'BARRA DO QUARAI', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4237, 'BARRA DO RIO AZUL/RS - BRASIL', 'BARRA DO RIO AZUL', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4240, 'BARROS CASSAL/RS - BRASIL', 'BARROS CASSAL', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4242, 'BENTO GONCALVES/RS - BRASIL', 'BENTO GONCALVES', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4245, 'BOA VISTA DO SUL/RS - BRASIL', 'BOA VISTA DO SUL', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4246, 'BOM JESUS/RS - BRASIL', 'BOM JESUS', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4248, 'BOM RETIRO DO SUL/RS - BRASIL', 'BOM RETIRO DO SUL', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4250, 'BOSSOROCA/RS - BRASIL', 'BOSSOROCA', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4252, 'BROCHIER/RS - BRASIL', 'BROCHIER', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4253, 'BUTIA/RS - BRASIL', 'BUTIA', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4255, 'CACEQUI/RS - BRASIL', 'CACEQUI', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4257, 'CACHOEIRINHA/RS - BRASIL', 'CACHOEIRINHA', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4258, 'CACIQUE DOBLE/RS - BRASIL', 'CACIQUE DOBLE', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4259, 'CAIBATE/RS - BRASIL', 'CAIBATE', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4261, 'CAMAQUA/RS - BRASIL', 'CAMAQUA', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4262, 'CAMARGO/RS - BRASIL', 'CAMARGO', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4264, 'CAMPESTRE DA SERRA/RS - BRASIL', 'CAMPESTRE DA SERRA', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4010, 'SAO JOAO DO PARAISO/RJ - BRASIL', 'SAO JOAO DO PARAISO', 19, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4012, 'SAO JOSE DO VALE DO RIO PRETO/RJ - BRASI', 'SAO JOSE DO VALE DO RIO PRETO', 19, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4014, 'SAO SEBASTIAO DO ALTO/RJ - BRASIL', 'SAO SEBASTIAO DO ALTO', 19, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4016, 'SAPUCAIA/RJ - BRASIL', 'SAPUCAIA', 19, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4017, 'SAQUAREMA/RJ - BRASIL', 'SAQUAREMA', 19, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4018, 'SATURNINO BRAGA/RJ - BRASIL', 'SATURNINO BRAGA', 19, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4020, 'SERRINHA/RJ - BRASIL', 'SERRINHA', 19, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4022, 'SUMIDOURO/RJ - BRASIL', 'SUMIDOURO', 19, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4023, 'TANGUA/RJ - BRASIL', 'TANGUA', 19, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4024, 'TERESOPOLIS/RJ - BRASIL', 'TERESOPOLIS', 19, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4026, 'TRAVESSAO/RJ - BRASIL', 'TRAVESSAO', 19, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4027, 'TRES RIOS/RJ - BRASIL', 'TRES RIOS', 19, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4029, 'UNAMAR/RJ - BRASIL', 'UNAMAR', 19, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4031, 'VALENCA/RJ - BRASIL', 'VALENCA', 19, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4032, 'VARRE-SAI/RJ - BRASIL', 'VARRE-SAI', 19, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4033, 'VASSOURAS/RJ - BRASIL', 'VASSOURAS', 19, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4034, 'VISCONDE DE IMBE/RJ - BRASIL', 'VISCONDE DE IMBE', 19, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4035, 'VOLTA REDONDA/RJ - BRASIL', 'VOLTA REDONDA', 19, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4036, 'ACARI/RN - BRASIL', 'ACARI', 20, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4037, 'ACU/RN - BRASIL', 'ACU', 20, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4038, 'AFONSO BEZERRA/RN - BRASIL', 'AFONSO BEZERRA', 20, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4039, 'AGUA NOVA/RN - BRASIL', 'AGUA NOVA', 20, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4040, 'ALEXANDRIA/RN - BRASIL', 'ALEXANDRIA', 20, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4041, 'ALMINO AFONSO/RN - BRASIL', 'ALMINO AFONSO', 20, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4042, 'ALTO DO RODRIGUES/RN - BRASIL', 'ALTO DO RODRIGUES', 20, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4043, 'ANGICOS/RN - BRASIL', 'ANGICOS', 20, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4044, 'ANTONIO MARTINS/RN - BRASIL', 'ANTONIO MARTINS', 20, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4046, 'AREIA BRANCA/RN - BRASIL', 'AREIA BRANCA', 20, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4047, 'ARES/RN - BRASIL', 'ARES', 20, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4049, 'BARAUNA/RN - BRASIL', 'BARAUNA', 20, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4050, 'BARCELONA/RN - BRASIL', 'BARCELONA', 20, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4052, 'BOA SAUDE/RN - BRASIL', 'BOA SAUDE', 20, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4053, 'BODO/RN - BRASIL', 'BODO', 20, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4054, 'BOM JESUS/RN - BRASIL', 'BOM JESUS', 20, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4056, 'CAICARA DO NORTE/RN - BRASIL', 'CAICARA DO NORTE', 20, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4057, 'CAICARA DO RIO DO VENTO/RN - BRASIL', 'CAICARA DO RIO DO VENTO', 20, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4059, 'CAMPO GRANDE/RN - BRASIL', 'CAMPO GRANDE', 20, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4061, 'CANGUARETAMA/RN - BRASIL', 'CANGUARETAMA', 20, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4062, 'CARAUBAS/RN - BRASIL', 'CARAUBAS', 20, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4063, 'CARNAUBA DOS DANTAS/RN - BRASIL', 'CARNAUBA DOS DANTAS', 20, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4065, 'CEARA-MIRIM/RN - BRASIL', 'CEARA-MIRIM', 20, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4066, 'CERRO CORA/RN - BRASIL', 'CERRO CORA', 20, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4068, 'CORONEL JOAO PESSOA/RN - BRASIL', 'CORONEL JOAO PESSOA', 20, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4069, 'CRUZETA/RN - BRASIL', 'CRUZETA', 20, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4071, 'DOUTOR SEVERIANO/RN - BRASIL', 'DOUTOR SEVERIANO', 20, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4074, 'ESPIRITO SANTO/RN - BRASIL', 'ESPIRITO SANTO', 20, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4076, 'FELIPE GUERRA/RN - BRASIL', 'FELIPE GUERRA', 20, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4079, 'FRANCISCO DANTAS/RN - BRASIL', 'FRANCISCO DANTAS', 20, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4081, 'GALINHOS/RN - BRASIL', 'GALINHOS', 20, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4084, 'GROSSOS/RN - BRASIL', 'GROSSOS', 20, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4085, 'GUAMARE/RN - BRASIL', 'GUAMARE', 20, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4087, 'IPANGUACU/RN - BRASIL', 'IPANGUACU', 20, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4089, 'ITAJA/RN - BRASIL', 'ITAJA', 20, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4092, 'JANDAIRA/RN - BRASIL', 'JANDAIRA', 20, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4093, 'JANDUIS/RN - BRASIL', 'JANDUIS', 20, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4097, 'JARDIM DO SERIDO/RN - BRASIL', 'JARDIM DO SERIDO', 20, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4099, 'JOAO DIAS/RN - BRASIL', 'JOAO DIAS', 20, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4101, 'JUCURUTU/RN - BRASIL', 'JUCURUTU', 20, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4104, 'LAGOA DE VELHOS/RN - BRASIL', 'LAGOA DE VELHOS', 20, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4105, 'LAGOA NOVA/RN - BRASIL', 'LAGOA NOVA', 20, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4107, 'LAJES/RN - BRASIL', 'LAJES', 20, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4110, 'LUIS GOMES/RN - BRASIL', 'LUIS GOMES', 20, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4112, 'MACAU/RN - BRASIL', 'MACAU', 20, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4115, 'MARTINS/RN - BRASIL', 'MARTINS', 20, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4116, 'MAXARANGUAPE/RN - BRASIL', 'MAXARANGUAPE', 20, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4118, 'MONTANHAS/RN - BRASIL', 'MONTANHAS', 20, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4119, 'MONTE ALEGRE/RN - BRASIL', 'MONTE ALEGRE', 20, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4121, 'MOSSORO/RN - BRASIL', 'MOSSORO', 20, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4122, 'NATAL/RN - BRASIL', 'NATAL', 20, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4123, 'NISIA FLORESTA/RN - BRASIL', 'NISIA FLORESTA', 20, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4125, 'OLHO-D´AGUA DO BORGES/RN - BRASIL', 'OLHO-D´AGUA DO BORGES', 20, 28);
commit;
prompt 1100 records committed...
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4127, 'PARANA/RN - BRASIL', 'PARANA', 20, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4128, 'PARAU/RN - BRASIL', 'PARAU', 20, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4130, 'PARELHAS/RN - BRASIL', 'PARELHAS', 20, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4131, 'PARNAMIRIM/RN - BRASIL', 'PARNAMIRIM', 20, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4133, 'PASSAGEM/RN - BRASIL', 'PASSAGEM', 20, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4134, 'PATU/RN - BRASIL', 'PATU', 20, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4136, 'PEDRA GRANDE/RN - BRASIL', 'PEDRA GRANDE', 20, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4137, 'PEDRA PRETA/RN - BRASIL', 'PEDRA PRETA', 20, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4139, 'PEDRO VELHO/RN - BRASIL', 'PEDRO VELHO', 20, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3879, 'SIMOES/PI - BRASIL', 'SIMOES', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3880, 'SIMPLICIO MENDES/PI - BRASIL', 'SIMPLICIO MENDES', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3881, 'SITIO/PI - BRASIL', 'SITIO', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3883, 'SITIOZINHO/PI - BRASIL', 'SITIOZINHO', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3884, 'SOCORRO DO PIAUI/PI - BRASIL', 'SOCORRO DO PIAUI', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3886, 'TAMBORIL DO PIAUI/PI - BRASIL', 'TAMBORIL DO PIAUI', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3888, 'TANQUINHO/PI - BRASIL', 'TANQUINHO', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3889, 'TERESINA/PI - BRASIL', 'TERESINA', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3890, 'TORROES/PI - BRASIL', 'TORROES', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3892, 'UNIAO/PI - BRASIL', 'UNIAO', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3893, 'URUCUI/PI - BRASIL', 'URUCUI', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3895, 'VALPARAISO/PI - BRASIL', 'VALPARAISO', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3896, 'VARZEA BRANCA/PI - BRASIL', 'VARZEA BRANCA', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3898, 'VARZEA QUEIMADA/PI - BRASIL', 'VARZEA QUEIMADA', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3899, 'VERA MENDES/PI - BRASIL', 'VERA MENDES', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3900, 'VEREDAO/PI - BRASIL', 'VEREDAO', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3901, 'VEREDAS/PI - BRASIL', 'VEREDAS', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3902, 'VILA NOVA DO PIAUI/PI - BRASIL', 'VILA NOVA DO PIAUI', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3903, 'WALL FERRAZ/PI - BRASIL', 'WALL FERRAZ', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3904, 'AMPARO/RJ - BRASIL', 'AMPARO', 19, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3906, 'APERIBE/RJ - BRASIL', 'APERIBE', 19, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3907, 'ARARUAMA/RJ - BRASIL', 'ARARUAMA', 19, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3908, 'ARE/RJ - BRASIL', 'ARE', 19, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3910, 'ARMACAO DE BUZIOS/RJ - BRASIL', 'ARMACAO DE BUZIOS', 19, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3912, 'BACAXA/RJ - BRASIL', 'BACAXA', 19, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3913, 'BAIRRO CHALE/RJ - BRASIL', 'BAIRRO CHALE', 19, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3914, 'BANQUETE/RJ - BRASIL', 'BANQUETE', 19, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3916, 'BARRA MANSA/RJ - BRASIL', 'BARRA MANSA', 19, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3917, 'BELFORD ROXO/RJ - BRASIL', 'BELFORD ROXO', 19, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3918, 'BOA SORTE/RJ - BRASIL', 'BOA SORTE', 19, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3920, 'BOM JARDIM/RJ - BRASIL', 'BOM JARDIM', 19, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3921, 'BOM JESUS DO ITABAPOANA/RJ - BRASIL', 'BOM JESUS DO ITABAPOANA', 19, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3923, 'CABO FRIO/RJ - BRASIL', 'CABO FRIO', 19, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3924, 'CACHOEIRAS DE MACACU/RJ - BRASIL', 'CACHOEIRAS DE MACACU', 19, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3925, 'CAMBUCI/RJ - BRASIL', 'CAMBUCI', 19, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3926, 'CAMPO DO COELHO/RJ - BRASIL', 'CAMPO DO COELHO', 19, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3928, 'CANTAGALO/RJ - BRASIL', 'CANTAGALO', 19, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3929, 'CARABUCU/RJ - BRASIL', 'CARABUCU', 19, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3930, 'CARAPEBUS/RJ - BRASIL', 'CARAPEBUS', 19, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3931, 'CARDOSO MOREIRA/RJ - BRASIL', 'CARDOSO MOREIRA', 19, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3934, 'COMENDADOR LEVY GASPARIAN/RJ - BRASIL', 'COMENDADOR LEVY GASPARIAN', 19, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3936, 'CONCEICAO DE MACABU/RJ - BRASIL', 'CONCEICAO DE MACABU', 19, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3939, 'CORDEIRO/RJ - BRASIL', 'CORDEIRO', 19, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3940, 'DUAS BARRAS/RJ - BRASIL', 'DUAS BARRAS', 19, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3944, 'GUAPIMIRIM/RJ - BRASIL', 'GUAPIMIRIM', 19, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3945, 'IGUABA GRANDE/RJ - BRASIL', 'IGUABA GRANDE', 19, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3947, 'ITAGUAI/RJ - BRASIL', 'ITAGUAI', 19, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3948, 'ITALVA/RJ - BRASIL', 'ITALVA', 19, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3949, 'ITAOCARA/RJ - BRASIL', 'ITAOCARA', 19, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3952, 'JACONE/RJ - BRASIL', 'JACONE', 19, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3954, 'JAPERI/RJ - BRASIL', 'JAPERI', 19, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3957, 'MACAE/RJ - BRASIL', 'MACAE', 19, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3958, 'MACUCO/RJ - BRASIL', 'MACUCO', 19, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3961, 'MARICA/RJ - BRASIL', 'MARICA', 19, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3964, 'MIRACEMA/RJ - BRASIL', 'MIRACEMA', 19, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3966, 'NATIVIDADE/RJ - BRASIL', 'NATIVIDADE', 19, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3969, 'NOVA FRIBURGO/RJ - BRASIL', 'NOVA FRIBURGO', 19, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3971, 'OURANIA/RJ - BRASIL', 'OURANIA', 19, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3974, 'PARAISO DO TOBIAS/RJ - BRASIL', 'PARAISO DO TOBIAS', 19, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3976, 'PATY DO ALFERES/RJ - BRASIL', 'PATY DO ALFERES', 19, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3979, 'PIRAI/RJ - BRASIL', 'PIRAI', 19, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3981, 'PORTELA/RJ - BRASIL', 'PORTELA', 19, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3982, 'PRAIA SECA/RJ - BRASIL', 'PRAIA SECA', 19, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3984, 'PURILANDIA/RJ - BRASIL', 'PURILANDIA', 19, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3985, 'QUATIS/RJ - BRASIL', 'QUATIS', 19, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3987, 'QUISSAMA/RJ - BRASIL', 'QUISSAMA', 19, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3988, 'RAPOSO/RJ - BRASIL', 'RAPOSO', 19, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3991, 'RIO BONITO/RJ - BRASIL', 'RIO BONITO', 19, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3992, 'RIO CLARO/RJ - BRASIL', 'RIO CLARO', 19, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3993, 'RIO DAS FLORES/RJ - BRASIL', 'RIO DAS FLORES', 19, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3995, 'RIO DE JANEIRO/RJ - BRASIL', 'RIO DE JANEIRO', 19, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3997, 'ROCHA LEAO/RJ - BRASIL', 'ROCHA LEAO', 19, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3998, 'ROSAL/RJ - BRASIL', 'ROSAL', 19, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3999, 'SANTA CLARA/RJ - BRASIL', 'SANTA CLARA', 19, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4001, 'SANTA RITA DA FLORESTA/RJ - BRASIL', 'SANTA RITA DA FLORESTA', 19, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4003, 'SANTO EDUARDO/RJ - BRASIL', 'SANTO EDUARDO', 19, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4004, 'SAO FIDELIS/RJ - BRASIL', 'SAO FIDELIS', 19, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4006, 'SAO FRANCISCO DE PAULA/RJ - BRASIL', 'SAO FRANCISCO DE PAULA', 19, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4007, 'SAO GONCALO/RJ - BRASIL', 'SAO GONCALO', 19, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3762, 'JUREMA/PI - BRASIL', 'JUREMA', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3763, 'LAGOA ALEGRE/PI - BRASIL', 'LAGOA ALEGRE', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3765, 'LAGOA DE SAO FRANCISCO/PI - BRASIL', 'LAGOA DE SAO FRANCISCO', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3767, 'LAGOA DO PIAUI/PI - BRASIL', 'LAGOA DO PIAUI', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3768, 'LAGOA DO SITIO/PI - BRASIL', 'LAGOA DO SITIO', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3770, 'LANDRI SALES/PI - BRASIL', 'LANDRI SALES', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3771, 'LUIS CORREIA/PI - BRASIL', 'LUIS CORREIA', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3772, 'LUZILANDIA/PI - BRASIL', 'LUZILANDIA', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3774, 'MANDACARU/PI - BRASIL', 'MANDACARU', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3776, 'MARCOLANDIA/PI - BRASIL', 'MARCOLANDIA', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3777, 'MARCOS PARENTE/PI - BRASIL', 'MARCOS PARENTE', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3778, 'MASSAPE DO PIAUI/PI - BRASIL', 'MASSAPE DO PIAUI', 18, 28);
commit;
prompt 1200 records committed...
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3779, 'MATIAS OLIMPIO/PI - BRASIL', 'MATIAS OLIMPIO', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3780, 'MIGUEL ALVES/PI - BRASIL', 'MIGUEL ALVES', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3781, 'MIGUEL LEAO/PI - BRASIL', 'MIGUEL LEAO', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3782, 'MILTON BRANDAO/PI - BRASIL', 'MILTON BRANDAO', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3783, 'MIROLANDIA/PI - BRASIL', 'MIROLANDIA', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3784, 'MONSENHOR GIL/PI - BRASIL', 'MONSENHOR GIL', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3785, 'MONSENHOR HIPOLITO/PI - BRASIL', 'MONSENHOR HIPOLITO', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3786, 'MONTE ALEGRE DO PIAUI/PI - BRASIL', 'MONTE ALEGRE DO PIAUI', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3788, 'MORRO DO CHAPEU DO PIAUI/PI - BRASIL', 'MORRO DO CHAPEU DO PIAUI', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3789, 'MORRO DOS CAVALOS/PI - BRASIL', 'MORRO DOS CAVALOS', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3790, 'MURICI DOS PORTELAS/PI - BRASIL', 'MURICI DOS PORTELAS', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3791, 'NAZARE DO PIAUI/PI - BRASIL', 'NAZARE DO PIAUI', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3793, 'NOSSA SENHORA DOS REMEDIOS/PI - BRASIL', 'NOSSA SENHORA DOS REMEDIOS', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3794, 'NOVA SANTA RITA/PI - BRASIL', 'NOVA SANTA RITA', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3795, 'NOVA SANTA ROSA/PI - BRASIL', 'NOVA SANTA ROSA', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3796, 'NOVO ORIENTE DO PIAUI/PI - BRASIL', 'NOVO ORIENTE DO PIAUI', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3798, 'NOVO SANTO ANTONIO/PI - BRASIL', 'NOVO SANTO ANTONIO', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3799, 'OEIRAS/PI - BRASIL', 'OEIRAS', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3800, 'OITIS/PI - BRASIL', 'OITIS', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3803, 'PAES LANDIM/PI - BRASIL', 'PAES LANDIM', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3804, 'PAJEU/PI - BRASIL', 'PAJEU', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3806, 'PALMEIRA DO PIAUI/PI - BRASIL', 'PALMEIRA DO PIAUI', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3807, 'PALMEIRAIS/PI - BRASIL', 'PALMEIRAIS', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3812, 'PATOS DO PIAUI/PI - BRASIL', 'PATOS DO PIAUI', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3813, 'PAU FERRO/PI - BRASIL', 'PAU FERRO', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3815, 'PAVUSSU/PI - BRASIL', 'PAVUSSU', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3816, 'PEDRO II/PI - BRASIL', 'PEDRO II', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3819, 'PIMENTEIRAS/PI - BRASIL', 'PIMENTEIRAS', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3822, 'PIRIPIRI/PI - BRASIL', 'PIRIPIRI', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3823, 'PITOMBAS/PI - BRASIL', 'PITOMBAS', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3827, 'QUEIMADA NOVA/PI - BRASIL', 'QUEIMADA NOVA', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3829, 'REGENERACAO/PI - BRASIL', 'REGENERACAO', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3831, 'RIACHO DO PADRE/PI - BRASIL', 'RIACHO DO PADRE', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3833, 'RIBEIRA DO PIAUI/PI - BRASIL', 'RIBEIRA DO PIAUI', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3836, 'ROQUE/PI - BRASIL', 'ROQUE', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3838, 'SANTA CRUZ DO PIAUI/PI - BRASIL', 'SANTA CRUZ DO PIAUI', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3840, 'SANTA FILOMENA/PI - BRASIL', 'SANTA FILOMENA', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3841, 'SANTA LUZ/PI - BRASIL', 'SANTA LUZ', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3844, 'SANTO ANTONIO/PI - BRASIL', 'SANTO ANTONIO', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3846, 'SANTO ANTONIO DOS MILAGRES/PI - BRASIL', 'SANTO ANTONIO DOS MILAGRES', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3848, 'SAO BENTO/PI - BRASIL', 'SAO BENTO', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3849, 'SAO BRAZ DO PIAUI/PI - BRASIL', 'SAO BRAZ DO PIAUI', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3851, 'SAO DOMINGOS/PI - BRASIL', 'SAO DOMINGOS', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3853, 'SAO FRANCISCO DE ASSIS DO PIAUI/PI - BRA', 'SAO FRANCISCO DE ASSIS DO PIAUI', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3855, 'SAO GONCALO DO GURGUEIA/PI - BRASIL', 'SAO GONCALO DO GURGUEIA', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3857, 'SAO JOAO DA CANABRAVA/PI - BRASIL', 'SAO JOAO DA CANABRAVA', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3859, 'SAO JOAO DA SERRA/PI - BRASIL', 'SAO JOAO DA SERRA', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3860, 'SAO JOAO DA VARJOTA/PI - BRASIL', 'SAO JOAO DA VARJOTA', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3862, 'SAO JOAO DO PIAUI/PI - BRASIL', 'SAO JOAO DO PIAUI', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3864, 'SAO JOSE DO PEIXE/PI - BRASIL', 'SAO JOSE DO PEIXE', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3865, 'SAO JOSE DO PIAUI/PI - BRASIL', 'SAO JOSE DO PIAUI', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3868, 'SAO LUIS DO PIAUI/PI - BRASIL', 'SAO LUIS DO PIAUI', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3869, 'SAO MIGUEL DA BAIXA GRANDE/PI - BRASIL', 'SAO MIGUEL DA BAIXA GRANDE', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3871, 'SAO PEDRO DO PIAUI/PI - BRASIL', 'SAO PEDRO DO PIAUI', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3873, 'SEBASTIAO LEAL/PI - BRASIL', 'SEBASTIAO LEAL', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3874, 'SERRA DO MARACUJA/PI - BRASIL', 'SERRA DO MARACUJA', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3876, 'SERRA VERMELHA/PI - BRASIL', 'SERRA VERMELHA', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3641, 'ASSENTAMENTO UNIAO/PI - BRASIL', 'ASSENTAMENTO UNIAO', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3643, 'ATALHO/PI - BRASIL', 'ATALHO', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3644, 'AVELINO LOPES/PI - BRASIL', 'AVELINO LOPES', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3646, 'BAIXIO/PI - BRASIL', 'BAIXIO', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3647, 'BARRA D ALCANTARA/PI - BRASIL', 'BARRA D ALCANTARA', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3649, 'BARRA DO LANCE/PI - BRASIL', 'BARRA DO LANCE', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3650, 'BARRAS/PI - BRASIL', 'BARRAS', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3651, 'BARREIRAS DO PIAUI/PI - BRASIL', 'BARREIRAS DO PIAUI', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3652, 'BARRIGUDA/PI - BRASIL', 'BARRIGUDA', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3653, 'BARRO/PI - BRASIL', 'BARRO', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3654, 'BARRO DURO/PI - BRASIL', 'BARRO DURO', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3655, 'BATALHA/PI - BRASIL', 'BATALHA', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3656, 'BELA VISTA DO PIAUI/PI - BRASIL', 'BELA VISTA DO PIAUI', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3657, 'BELEM DO PIAUI/PI - BRASIL', 'BELEM DO PIAUI', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3658, 'BENEDITINOS/PI - BRASIL', 'BENEDITINOS', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3659, 'BERTOLINIA/PI - BRASIL', 'BERTOLINIA', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3660, 'BETANIA DO PIAUI/PI - BRASIL', 'BETANIA DO PIAUI', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3661, 'BOA HORA/PI - BRASIL', 'BOA HORA', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3662, 'BOA VIAGEM/PI - BRASIL', 'BOA VIAGEM', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3663, 'BOCAINA/PI - BRASIL', 'BOCAINA', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3664, 'BOM JESUS/PI - BRASIL', 'BOM JESUS', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3666, 'BONFIM DO PIAUI/PI - BRASIL', 'BONFIM DO PIAUI', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3667, 'BOQUEIRAO DO PIAUI/PI - BRASIL', 'BOQUEIRAO DO PIAUI', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3668, 'BRASILEIRA/PI - BRASIL', 'BRASILEIRA', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3669, 'BREJO DA FORTALEZA/PI - BRASIL', 'BREJO DA FORTALEZA', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3671, 'BURITI DOS LOPES/PI - BRASIL', 'BURITI DOS LOPES', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3672, 'BURITI DOS MONTES/PI - BRASIL', 'BURITI DOS MONTES', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3673, 'BURITI GRANDE/PI - BRASIL', 'BURITI GRANDE', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3675, 'CAJAZEIRAS DO PIAUI/PI - BRASIL', 'CAJAZEIRAS DO PIAUI', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3676, 'CAJUEIRO/PI - BRASIL', 'CAJUEIRO', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3677, 'CAJUEIRO DA PRAIA/PI - BRASIL', 'CAJUEIRO DA PRAIA', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3678, 'CALDEIRAO GRANDE DO PIAUI/PI - BRASIL', 'CALDEIRAO GRANDE DO PIAUI', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3681, 'CAMPO ALEGRE DO FIDALGO/PI - BRASIL', 'CAMPO ALEGRE DO FIDALGO', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3683, 'CAMPO LARGO DO PIAUI/PI - BRASIL', 'CAMPO LARGO DO PIAUI', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3686, 'CANTO DO BURITI/PI - BRASIL', 'CANTO DO BURITI', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3689, 'CAPITAO GERVASIO OLIVEIRA/PI - BRASIL', 'CAPITAO GERVASIO OLIVEIRA', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3690, 'CARACOL/PI - BRASIL', 'CARACOL', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3693, 'CASTELO DO PIAUI/PI - BRASIL', 'CASTELO DO PIAUI', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3694, 'CAXINGO/PI - BRASIL', 'CAXINGO', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3695, 'COCAL/PI - BRASIL', 'COCAL', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3698, 'COIVARAS/PI - BRASIL', 'COIVARAS', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3700, 'COLONIA DO PIAUI/PI - BRASIL', 'COLONIA DO PIAUI', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3701, 'CONCEICAO/PI - BRASIL', 'CONCEICAO', 18, 28);
commit;
prompt 1300 records committed...
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3704, 'CORONEL JOSE DIAS/PI - BRASIL', 'CORONEL JOSE DIAS', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3706, 'COVA DONGA/PI - BRASIL', 'COVA DONGA', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3709, 'CRISTOVINHO/PI - BRASIL', 'CRISTOVINHO', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3710, 'CURIMATA/PI - BRASIL', 'CURIMATA', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3712, 'CURRAL DE PEDRA/PI - BRASIL', 'CURRAL DE PEDRA', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3715, 'CURRALINHOS/PI - BRASIL', 'CURRALINHOS', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3717, 'DIRCEU ARCOVERDE/PI - BRASIL', 'DIRCEU ARCOVERDE', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3720, 'DOMINGOS MOURAO/PI - BRASIL', 'DOMINGOS MOURAO', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3722, 'ELISEU MARTINS/PI - BRASIL', 'ELISEU MARTINS', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3723, 'ESPERANTINA/PI - BRASIL', 'ESPERANTINA', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3725, 'FATIMA DO PIAUI/PI - BRASIL', 'FATIMA DO PIAUI', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3727, 'FLORESTA DO PIAUI/PI - BRASIL', 'FLORESTA DO PIAUI', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3728, 'FLORIANO/PI - BRASIL', 'FLORIANO', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3730, 'FRANCISCO AYRES/PI - BRASIL', 'FRANCISCO AYRES', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3732, 'FRANCISCO SANTOS/PI - BRASIL', 'FRANCISCO SANTOS', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3733, 'FRONTEIRAS/PI - BRASIL', 'FRONTEIRAS', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3735, 'GATURIANO/PI - BRASIL', 'GATURIANO', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3736, 'GEMINIANO/PI - BRASIL', 'GEMINIANO', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3737, 'GILBUES/PI - BRASIL', 'GILBUES', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3739, 'GUARIBAS/PI - BRASIL', 'GUARIBAS', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3741, 'ILHA GRANDE/PI - BRASIL', 'ILHA GRANDE', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3742, 'INHUMA/PI - BRASIL', 'INHUMA', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3744, 'ISAIAS COELHO/PI - BRASIL', 'ISAIAS COELHO', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3745, 'ISIDORIA/PI - BRASIL', 'ISIDORIA', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3746, 'ITAINOPOLIS/PI - BRASIL', 'ITAINOPOLIS', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3748, 'ITAUEIRA/PI - BRASIL', 'ITAUEIRA', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3750, 'JAICOS/PI - BRASIL', 'JAICOS', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3751, 'JAPECANGA/PI - BRASIL', 'JAPECANGA', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3752, 'JARDIM DO MULATO/PI - BRASIL', 'JARDIM DO MULATO', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3754, 'JERUMENHA/PI - BRASIL', 'JERUMENHA', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3755, 'JOAO COSTA/PI - BRASIL', 'JOAO COSTA', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3757, 'JOCA MARQUES/PI - BRASIL', 'JOCA MARQUES', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3759, 'JUAZEIRO DO PIAUI/PI - BRASIL', 'JUAZEIRO DO PIAUI', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3761, 'JULIO BORGES/PI - BRASIL', 'JULIO BORGES', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3518, 'PROJETO SENADOR NILO COELHO NO 4/PE - BR', 'PROJETO SENADOR NILO COELHO NO 4', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3519, 'PROJETO SENADOR NILO COELHO NO 5/PE - BR', 'PROJETO SENADOR NILO COELHO NO 5', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3521, 'PROJETO SENADOR NILO COELHO NO 7/PE - BR', 'PROJETO SENADOR NILO COELHO NO 7', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3522, 'PROJETO SENADOR NILO COELHO NO 8/PE - BR', 'PROJETO SENADOR NILO COELHO NO 8', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3523, 'PROJETO SENADOR NILO COELHO NO 9/PE - BR', 'PROJETO SENADOR NILO COELHO NO 9', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3524, 'QUATI/PE - BRASIL', 'QUATI', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3525, 'QUIPAPA/PE - BRASIL', 'QUIPAPA', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3526, 'QUITIMBU/PE - BRASIL', 'QUITIMBU', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3528, 'RAINHA ISABEL/PE - BRASIL', 'RAINHA ISABEL', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3529, 'RAJADA/PE - BRASIL', 'RAJADA', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3531, 'RECIFE/PE - BRASIL', 'RECIFE', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3532, 'REMEDIO/PE - BRASIL', 'REMEDIO', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3534, 'RIACHO DO GADO/PE - BRASIL', 'RIACHO DO GADO', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3535, 'RIACHO DO MEIO/PE - BRASIL', 'RIACHO DO MEIO', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3536, 'RIACHO PEQUENO/PE - BRASIL', 'RIACHO PEQUENO', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3538, 'RIO DA BARRA/PE - BRASIL', 'RIO DA BARRA', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3539, 'RIO FORMOSO/PE - BRASIL', 'RIO FORMOSO', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3541, 'SALGADINHO/PE - BRASIL', 'SALGADINHO', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3543, 'SALOA/PE - BRASIL', 'SALOA', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3544, 'SALOBRO/PE - BRASIL', 'SALOBRO', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3546, 'SANHARO/PE - BRASIL', 'SANHARO', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3547, 'SANTA CRUZ/PE - BRASIL', 'SANTA CRUZ', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3549, 'SANTA CRUZ DO CAPIBARIBE/PE - BRASIL', 'SANTA CRUZ DO CAPIBARIBE', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3550, 'SANTA FILOMENA/PE - BRASIL', 'SANTA FILOMENA', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3551, 'SANTA LUZIA/PE - BRASIL', 'SANTA LUZIA', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3553, 'SANTA MARIA DO CAMBUCA/PE - BRASIL', 'SANTA MARIA DO CAMBUCA', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3554, 'SANTA RITA/PE - BRASIL', 'SANTA RITA', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3557, 'SANTO ANTONIO/PE - BRASIL', 'SANTO ANTONIO', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3559, 'SAO BENEDITO DO SUL/PE - BRASIL', 'SAO BENEDITO DO SUL', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3562, 'SAO CAITANO/PE - BRASIL', 'SAO CAITANO', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3563, 'SAO FRANCISCO/PE - BRASIL', 'SAO FRANCISCO', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3564, 'SAO JOAO/PE - BRASIL', 'SAO JOAO', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3568, 'SAO JOSE DO BELMONTE/PE - BRASIL', 'SAO JOSE DO BELMONTE', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3569, 'SAO JOSE DO EGITO/PE - BRASIL', 'SAO JOSE DO EGITO', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3571, 'SAO PEDRO/PE - BRASIL', 'SAO PEDRO', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3572, 'SAO PEDRO DO CORDEIRO/PE - BRASIL', 'SAO PEDRO DO CORDEIRO', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3576, 'SERRA TALHADA/PE - BRASIL', 'SERRA TALHADA', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3578, 'SERRITA/PE - BRASIL', 'SERRITA', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3579, 'SERROLANDIA/PE - BRASIL', 'SERROLANDIA', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3580, 'SERTANIA/PE - BRASIL', 'SERTANIA', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3584, 'SOBRADINHO/PE - BRASIL', 'SOBRADINHO', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3585, 'SOCORRO/PE - BRASIL', 'SOCORRO', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3588, 'TABIRA/PE - BRASIL', 'TABIRA', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3589, 'TABOCAS/PE - BRASIL', 'TABOCAS', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3591, 'TACARATU/PE - BRASIL', 'TACARATU', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3592, 'TAMANDARE/PE - BRASIL', 'TAMANDARE', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3595, 'TAUAPIRANGA/PE - BRASIL', 'TAUAPIRANGA', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3596, 'TEREZINHA/PE - BRASIL', 'TEREZINHA', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3597, 'TERRA NOVA/PE - BRASIL', 'TERRA NOVA', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3598, 'TIMBAUBA/PE - BRASIL', 'TIMBAUBA', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3600, 'TORITAMA/PE - BRASIL', 'TORITAMA', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3601, 'TRACUNHAEM/PE - BRASIL', 'TRACUNHAEM', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3603, 'TRIUNFO/PE - BRASIL', 'TRIUNFO', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3604, 'TUPANACI/PE - BRASIL', 'TUPANACI', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3606, 'TUPARETAMA/PE - BRASIL', 'TUPARETAMA', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3607, 'TUPI/PE - BRASIL', 'TUPI', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3608, 'UMAS/PE - BRASIL', 'UMAS', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3610, 'VARZINHA/PE - BRASIL', 'VARZINHA', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3611, 'VENTUROSA/PE - BRASIL', 'VENTUROSA', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3613, 'VERMELHOS/PE - BRASIL', 'VERMELHOS', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3615, 'VERTENTES/PE - BRASIL', 'VERTENTES', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3616, 'VICENCIA/PE - BRASIL', 'VICENCIA', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3617, 'VIRACAO/PE - BRASIL', 'VIRACAO', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3619, 'VOLTA/PE - BRASIL', 'VOLTA', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3620, 'VOLTA DO MOXOTO/PE - BRASIL', 'VOLTA DO MOXOTO', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3621, 'XEXEU/PE - BRASIL', 'XEXEU', 17, 28);
commit;
prompt 1400 records committed...
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3622, 'ZE GOMES/PE - BRASIL', 'ZE GOMES', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3624, 'AGRICOLANDIA/PI - BRASIL', 'AGRICOLANDIA', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3626, 'ALAGOINHA DO PIAUI/PI - BRASIL', 'ALAGOINHA DO PIAUI', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3628, 'ALIANCA DO GURGUEIA/PI - BRASIL', 'ALIANCA DO GURGUEIA', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3630, 'ALTO LONGA/PI - BRASIL', 'ALTO LONGA', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3631, 'ALTOS/PI - BRASIL', 'ALTOS', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3633, 'AMARANTE/PI - BRASIL', 'AMARANTE', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3634, 'ANGICAL DO PIAUI/PI - BRASIL', 'ANGICAL DO PIAUI', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3636, 'ANTONIO ALMEIDA/PI - BRASIL', 'ANTONIO ALMEIDA', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3637, 'APRAZIVEL/PI - BRASIL', 'APRAZIVEL', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3639, 'AROEIRO DO ITAI/PI - BRASIL', 'AROEIRO DO ITAI', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3383, 'GARCIA/PE - BRASIL', 'GARCIA', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3384, 'GERGELIM/PE - BRASIL', 'GERGELIM', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3387, 'GRANITO/PE - BRASIL', 'GRANITO', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3389, 'GRAVATA DOS GOMES/PE - BRASIL', 'GRAVATA DOS GOMES', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3390, 'GROSSOS/PE - BRASIL', 'GROSSOS', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3392, 'GUARANI/PE - BRASIL', 'GUARANI', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3393, 'HORIZONTE ALEGRE/PE - BRASIL', 'HORIZONTE ALEGRE', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3395, 'IATI/PE - BRASIL', 'IATI', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3397, 'IBIRAJUBA/PE - BRASIL', 'IBIRAJUBA', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3398, 'IBITIRANGA/PE - BRASIL', 'IBITIRANGA', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3400, 'IGAPO/PE - BRASIL', 'IGAPO', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3402, 'IGUARACI/PE - BRASIL', 'IGUARACI', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3403, 'INAJA/PE - BRASIL', 'INAJA', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3405, 'INGAZEIRA/PE - BRASIL', 'INGAZEIRA', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3407, 'IPOJUCA/PE - BRASIL', 'IPOJUCA', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3408, 'IPUBI/PE - BRASIL', 'IPUBI', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3410, 'ITA/PE - BRASIL', 'ITA', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3411, 'ITACURUBA/PE - BRASIL', 'ITACURUBA', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3413, 'ITAMARACA/PE - BRASIL', 'ITAMARACA', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3415, 'ITAPARICA/PE - BRASIL', 'ITAPARICA', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3416, 'ITAPETIM/PE - BRASIL', 'ITAPETIM', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3418, 'ITAQUITINGA/PE - BRASIL', 'ITAQUITINGA', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3419, 'JABITACA/PE - BRASIL', 'JABITACA', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3421, 'JACARE/PE - BRASIL', 'JACARE', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3422, 'JAQUEIRA/PE - BRASIL', 'JAQUEIRA', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3423, 'JATAUBA/PE - BRASIL', 'JATAUBA', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3424, 'JATIUCA/PE - BRASIL', 'JATIUCA', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3426, 'JERICO/PE - BRASIL', 'JERICO', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3427, 'JERITACO/PE - BRASIL', 'JERITACO', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3429, 'JOAO ALFREDO/PE - BRASIL', 'JOAO ALFREDO', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3431, 'JUCATI/PE - BRASIL', 'JUCATI', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3432, 'JUPI/PE - BRASIL', 'JUPI', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3433, 'JUREMA/PE - BRASIL', 'JUREMA', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3435, 'LAGOA/PE - BRASIL', 'LAGOA', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3438, 'LAGOA DE FORA/PE - BRASIL', 'LAGOA DE FORA', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3440, 'LAGOA DO BARRO/PE - BRASIL', 'LAGOA DO BARRO', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3441, 'LAGOA DO CARRO/PE - BRASIL', 'LAGOA DO CARRO', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3445, 'LAGOA DOS GATOS/PE - BRASIL', 'LAGOA DOS GATOS', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3446, 'LAGOA GRANDE/PE - BRASIL', 'LAGOA GRANDE', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3448, 'LAJEDO/PE - BRASIL', 'LAJEDO', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3452, 'LUANDA/PE - BRASIL', 'LUANDA', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3453, 'MACAPARANA/PE - BRASIL', 'MACAPARANA', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3455, 'MALHADA REAL/PE - BRASIL', 'MALHADA REAL', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3457, 'MANARI/PE - BRASIL', 'MANARI', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3459, 'MARAIAL/PE - BRASIL', 'MARAIAL', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3461, 'MARCOLANDIA/PE - BRASIL', 'MARCOLANDIA', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3463, 'MATIAS/PE - BRASIL', 'MATIAS', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3464, 'MIMOSO/PE - BRASIL', 'MIMOSO', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3465, 'MIRANDIBA/PE - BRASIL', 'MIRANDIBA', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3467, 'MOREILANDIA/PE - BRASIL', 'MOREILANDIA', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3469, 'MOXOTO/PE - BRASIL', 'MOXOTO', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3470, 'MULUNGU/PE - BRASIL', 'MULUNGU', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3472, 'NASCENTE/PE - BRASIL', 'NASCENTE', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3474, 'NEGRAS/PE - BRASIL', 'NEGRAS', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3475, 'NEVES/PE - BRASIL', 'NEVES', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3476, 'NOVA DESCOBERTA/PE - BRASIL', 'NOVA DESCOBERTA', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3478, 'OLHO D AGUA DE DENTRO/PE - BRASIL', 'OLHO D AGUA DE DENTRO', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3480, 'OLHO D AGUA DOS GOIS/PE - BRASIL', 'OLHO D AGUA DOS GOIS', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3482, 'OLINDA/PE - BRASIL', 'OLINDA', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3483, 'OROBO/PE - BRASIL', 'OROBO', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3484, 'OROCO/PE - BRASIL', 'OROCO', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3485, 'OURICURI/PE - BRASIL', 'OURICURI', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3486, 'PAJEU/PE - BRASIL', 'PAJEU', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3488, 'PALMEIRINA/PE - BRASIL', 'PALMEIRINA', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3489, 'PANELAS/PE - BRASIL', 'PANELAS', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3491, 'PAPAGAIO/PE - BRASIL', 'PAPAGAIO', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3492, 'PAQUEVIRA/PE - BRASIL', 'PAQUEVIRA', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3493, 'PARANATAMA/PE - BRASIL', 'PARANATAMA', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3495, 'PASSIRA/PE - BRASIL', 'PASSIRA', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3496, 'PAU AMARELO/PE - BRASIL', 'PAU AMARELO', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3498, 'PAULISTA/PE - BRASIL', 'PAULISTA', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3499, 'PEDRA/PE - BRASIL', 'PEDRA', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3501, 'PESQUEIRA/PE - BRASIL', 'PESQUEIRA', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3502, 'PETROLANDIA/PE - BRASIL', 'PETROLANDIA', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3504, 'PIEDADE/PE - BRASIL', 'PIEDADE', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3505, 'POCAO/PE - BRASIL', 'POCAO', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3507, 'POCO COMPRIDO/PE - BRASIL', 'POCO COMPRIDO', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3508, 'POCO DA CRUZ/PE - BRASIL', 'POCO DA CRUZ', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3510, 'POMBOS/PE - BRASIL', 'POMBOS', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3511, 'PRIMAVERA/PE - BRASIL', 'PRIMAVERA', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3514, 'PROJETO SENADOR NILO COELHO NO 1/PE - BR', 'PROJETO SENADOR NILO COELHO NO 1', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3516, 'PROJETO SENADOR NILO COELHO NO 11/PE - B', 'PROJETO SENADOR NILO COELHO NO 11', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3247, 'TRES BARRAS DO PARANA/PR - BRASIL', 'TRES BARRAS DO PARANA', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3248, 'TUNAS DO PARANA/PR - BRASIL', 'TUNAS DO PARANA', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3250, 'TUPASSI/PR - BRASIL', 'TUPASSI', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3251, 'TURVO/PR - BRASIL', 'TURVO', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3252, 'UBIRATA/PR - BRASIL', 'UBIRATA', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3254, 'UNIAO DA VITORIA/PR - BRASIL', 'UNIAO DA VITORIA', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3255, 'UNIFLOR/PR - BRASIL', 'UNIFLOR', 16, 28);
commit;
prompt 1500 records committed...
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3257, 'VENTANIA/PR - BRASIL', 'VENTANIA', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3259, 'VERE/PR - BRASIL', 'VERE', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3260, 'VILA ALTA/PR - BRASIL', 'VILA ALTA', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3261, 'VILA NOVA/PR - BRASIL', 'VILA NOVA', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3262, 'VIRMOND/PR - BRASIL', 'VIRMOND', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3264, 'WENCESLAU BRAZ/PR - BRASIL', 'WENCESLAU BRAZ', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3266, 'ABREU E LIMA/PE - BRASIL', 'ABREU E LIMA', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3267, 'AFOGADOS DA INGAZEIRA/PE - BRASIL', 'AFOGADOS DA INGAZEIRA', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3269, 'AGRESTINA/PE - BRASIL', 'AGRESTINA', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3270, 'AGROVILA 4/PE - BRASIL', 'AGROVILA 4', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3272, 'AGROVILA MASSANGANO/PE - BRASIL', 'AGROVILA MASSANGANO', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3273, 'AGUA PRETA/PE - BRASIL', 'AGUA PRETA', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3275, 'ALAGOINHA/PE - BRASIL', 'ALAGOINHA', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3276, 'ALBUQUERQUE NE/PE - BRASIL', 'ALBUQUERQUE NE', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3278, 'ALEXANDRA/PE - BRASIL', 'ALEXANDRA', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3279, 'ALGODOES/PE - BRASIL', 'ALGODOES', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3281, 'ALTINHO/PE - BRASIL', 'ALTINHO', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3283, 'AMARAJI/PE - BRASIL', 'AMARAJI', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3284, 'ANGELIM/PE - BRASIL', 'ANGELIM', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3285, 'ARACOIABA/PE - BRASIL', 'ARACOIABA', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3287, 'ARCOVERDE/PE - BRASIL', 'ARCOVERDE', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3291, 'BARRA DO BREJO/PE - BRASIL', 'BARRA DO BREJO', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3292, 'BARREIROS/PE - BRASIL', 'BARREIROS', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3293, 'BARRO/PE - BRASIL', 'BARRO', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3295, 'BELEM DE MARIA/PE - BRASIL', 'BELEM DE MARIA', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3298, 'BERNARDO VIEIRA/PE - BRASIL', 'BERNARDO VIEIRA', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3299, 'BETANIA/PE - BRASIL', 'BETANIA', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3302, 'BODOCO/PE - BRASIL', 'BODOCO', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3304, 'BOM JARDIM/PE - BRASIL', 'BOM JARDIM', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3307, 'BONITO/PE - BRASIL', 'BONITO', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3309, 'BREJAO/PE - BRASIL', 'BREJAO', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3312, 'BREJO DA MADRE DE DEUS/PE - BRASIL', 'BREJO DA MADRE DE DEUS', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3313, 'BREJO VELHO/PE - BRASIL', 'BREJO VELHO', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3315, 'BUIQUE/PE - BRASIL', 'BUIQUE', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3317, 'CABO DE SANTO AGOSTINHO/PE - BRASIL', 'CABO DE SANTO AGOSTINHO', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3319, 'CABROBO/PE - BRASIL', 'CABROBO', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3320, 'CACHICHOLA/PE - BRASIL', 'CACHICHOLA', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3322, 'CACHOEIRINHA/PE - BRASIL', 'CACHOEIRINHA', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3323, 'CAETES/PE - BRASIL', 'CAETES', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3324, 'CAICARINHA DA PENHA/PE - BRASIL', 'CAICARINHA DA PENHA', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3326, 'CALCADO/PE - BRASIL', 'CALCADO', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3328, 'CALUMBI/PE - BRASIL', 'CALUMBI', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3329, 'CAMARAGIBE/PE - BRASIL', 'CAMARAGIBE', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3331, 'CAMPO ALEGRE/PE - BRASIL', 'CAMPO ALEGRE', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3332, 'CAMPO GRANDE/PE - BRASIL', 'CAMPO GRANDE', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3333, 'CAMPO SANTO/PE - BRASIL', 'CAMPO SANTO', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3335, 'CAMUTANGA/PE - BRASIL', 'CAMUTANGA', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3336, 'CANAAN/PE - BRASIL', 'CANAAN', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3337, 'CANHOTINHO/PE - BRASIL', 'CANHOTINHO', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3339, 'CARAIBAS/PE - BRASIL', 'CARAIBAS', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3341, 'CARIRIMIRIM/PE - BRASIL', 'CARIRIMIRIM', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3342, 'CARMO/PE - BRASIL', 'CARMO', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3343, 'CARNAIBA/PE - BRASIL', 'CARNAIBA', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3345, 'CARNEIRO/PE - BRASIL', 'CARNEIRO', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3346, 'CAROALINA/PE - BRASIL', 'CAROALINA', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3347, 'CARPINA/PE - BRASIL', 'CARPINA', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3349, 'CARUARU/PE - BRASIL', 'CARUARU', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3350, 'CASINHAS/PE - BRASIL', 'CASINHAS', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3352, 'CATIMBAU/PE - BRASIL', 'CATIMBAU', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3353, 'CEDRO/PE - BRASIL', 'CEDRO', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3355, 'CHA DE ALEGRIA/PE - BRASIL', 'CHA DE ALEGRIA', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3357, 'CIMBRES/PE - BRASIL', 'CIMBRES', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3358, 'CLARANA/PE - BRASIL', 'CLARANA', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3360, 'CONDADO/PE - BRASIL', 'CONDADO', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3361, 'CORRENTES/PE - BRASIL', 'CORRENTES', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3362, 'CORTES/PE - BRASIL', 'CORTES', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3364, 'CUMARU/PE - BRASIL', 'CUMARU', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3365, 'CUPIRA/PE - BRASIL', 'CUPIRA', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3367, 'CUSTODIA/PE - BRASIL', 'CUSTODIA', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3369, 'ESCADA/PE - BRASIL', 'ESCADA', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3370, 'ESPIRITO SANTO/PE - BRASIL', 'ESPIRITO SANTO', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3373, 'FATIMA/PE - BRASIL', 'FATIMA', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3377, 'FERREIROS/PE - BRASIL', 'FERREIROS', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3378, 'FLORES/PE - BRASIL', 'FLORES', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3380, 'FREI MIGUELINHO/PE - BRASIL', 'FREI MIGUELINHO', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3128, 'PIEN/PR - BRASIL', 'PIEN', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3129, 'PINHAIS/PR - BRASIL', 'PINHAIS', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3131, 'PINHALAO/PR - BRASIL', 'PINHALAO', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3132, 'PINHAO/PR - BRASIL', 'PINHAO', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3133, 'PIRAI DO SUL/PR - BRASIL', 'PIRAI DO SUL', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3134, 'PIRAQUARA/PR - BRASIL', 'PIRAQUARA', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3136, 'PITANGUEIRAS/PR - BRASIL', 'PITANGUEIRAS', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3137, 'PLANALTINA DO PARANA/PR - BRASIL', 'PLANALTINA DO PARANA', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3139, 'PONTA GROSSA/PR - BRASIL', 'PONTA GROSSA', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3140, 'PONTAL DO PARANA/PR - BRASIL', 'PONTAL DO PARANA', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3142, 'PORTO AMAZONAS/PR - BRASIL', 'PORTO AMAZONAS', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3144, 'PORTO RICO/PR - BRASIL', 'PORTO RICO', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3145, 'PORTO VITORIA/PR - BRASIL', 'PORTO VITORIA', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3146, 'PRADO FERREIRA/PR - BRASIL', 'PRADO FERREIRA', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3148, 'PRESIDENTE CASTELO BRANCO/PR - BRASIL', 'PRESIDENTE CASTELO BRANCO', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3149, 'PRIMEIRO DE MAIO/PR - BRASIL', 'PRIMEIRO DE MAIO', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3151, 'QUARTO CENTENARIO/PR - BRASIL', 'QUARTO CENTENARIO', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3152, 'QUATIGUA/PR - BRASIL', 'QUATIGUA', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3153, 'QUATRO BARRAS/PR - BRASIL', 'QUATRO BARRAS', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3155, 'QUEDAS DO IGUACU/PR - BRASIL', 'QUEDAS DO IGUACU', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3156, 'QUERENCIA DO NORTE/PR - BRASIL', 'QUERENCIA DO NORTE', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3157, 'QUINTA DO SOL/PR - BRASIL', 'QUINTA DO SOL', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3161, 'RANCHO ALEGRE D´OESTE/PR - BRASIL', 'RANCHO ALEGRE D´OESTE', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3163, 'REBOUCAS/PR - BRASIL', 'REBOUCAS', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3167, 'RIBEIRAO CLARO/PR - BRASIL', 'RIBEIRAO CLARO', 16, 28);
commit;
prompt 1600 records committed...
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3168, 'RIBEIRAO DO PINHAL/PR - BRASIL', 'RIBEIRAO DO PINHAL', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3172, 'RIO BRANCO DO IVAI/PR - BRASIL', 'RIO BRANCO DO IVAI', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3173, 'RIO BRANCO DO SUL/PR - BRASIL', 'RIO BRANCO DO SUL', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3176, 'RONCADOR/PR - BRASIL', 'RONCADOR', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3180, 'SALGADO FILHO/PR - BRASIL', 'SALGADO FILHO', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3182, 'SALTO DO LONTRA/PR - BRASIL', 'SALTO DO LONTRA', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3183, 'SANTA AMELIA/PR - BRASIL', 'SANTA AMELIA', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3185, 'SANTA CRUZ DE MONTE CASTELO/PR - BRASIL', 'SANTA CRUZ DE MONTE CASTELO', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3186, 'SANTA FE/PR - BRASIL', 'SANTA FE', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3188, 'SANTA INES/PR - BRASIL', 'SANTA INES', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3190, 'SANTA IZABEL DO OESTE/PR - BRASIL', 'SANTA IZABEL DO OESTE', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3191, 'SANTA LUCIA/PR - BRASIL', 'SANTA LUCIA', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3193, 'SANTA MARIANA/PR - BRASIL', 'SANTA MARIANA', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3194, 'SANTA MONICA/PR - BRASIL', 'SANTA MONICA', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3196, 'SANTA TEREZINHA DE ITAIPU/PR - BRASIL', 'SANTA TEREZINHA DE ITAIPU', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3198, 'SANTO ANTONIO DA PLATINA/PR - BRASIL', 'SANTO ANTONIO DA PLATINA', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3200, 'SANTO ANTONIO DO PARAISO/PR - BRASIL', 'SANTO ANTONIO DO PARAISO', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3202, 'SANTO INACIO/PR - BRASIL', 'SANTO INACIO', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3203, 'SAO CARLOS DO IVAI/PR - BRASIL', 'SAO CARLOS DO IVAI', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3205, 'SAO JOAO/PR - BRASIL', 'SAO JOAO', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3206, 'SAO JOAO DO CAIUA/PR - BRASIL', 'SAO JOAO DO CAIUA', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3208, 'SAO JOAO DO TRIUNFO/PR - BRASIL', 'SAO JOAO DO TRIUNFO', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3210, 'SAO JORGE DO PATROCINIO/PR - BRASIL', 'SAO JORGE DO PATROCINIO', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3212, 'SAO JOSE DA BOA VISTA/PR - BRASIL', 'SAO JOSE DA BOA VISTA', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3214, 'SAO JOSE DO IVAI/PR - BRASIL', 'SAO JOSE DO IVAI', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3215, 'SAO JOSE DOS PINHAIS/PR - BRASIL', 'SAO JOSE DOS PINHAIS', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3217, 'SAO MATEUS DO SUL/PR - BRASIL', 'SAO MATEUS DO SUL', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3219, 'SAO PEDRO DO IGUACU/PR - BRASIL', 'SAO PEDRO DO IGUACU', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3220, 'SAO PEDRO DO IVAI/PR - BRASIL', 'SAO PEDRO DO IVAI', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3222, 'SAO SEBASTIAO DA AMOREIRA/PR - BRASIL', 'SAO SEBASTIAO DA AMOREIRA', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3223, 'SAO TOME/PR - BRASIL', 'SAO TOME', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3225, 'SARANDI/PR - BRASIL', 'SARANDI', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3227, 'SENGES/PR - BRASIL', 'SENGES', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3228, 'SERRANOPOLIS DO IGUACU/PR - BRASIL', 'SERRANOPOLIS DO IGUACU', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3230, 'SERTANOPOLIS/PR - BRASIL', 'SERTANOPOLIS', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3232, 'SOL DE MAIO/PR - BRASIL', 'SOL DE MAIO', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3233, 'SULINA/PR - BRASIL', 'SULINA', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3234, 'TAMARANA/PR - BRASIL', 'TAMARANA', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3236, 'TAPEJARA/PR - BRASIL', 'TAPEJARA', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3237, 'TAPIRA/PR - BRASIL', 'TAPIRA', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3238, 'TEIXEIRA SOARES/PR - BRASIL', 'TEIXEIRA SOARES', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3240, 'TERRA BOA/PR - BRASIL', 'TERRA BOA', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3241, 'TERRA RICA/PR - BRASIL', 'TERRA RICA', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3242, 'TERRA ROXA/PR - BRASIL', 'TERRA ROXA', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3244, 'TIJUCAS DO SUL/PR - BRASIL', 'TIJUCAS DO SUL', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3245, 'TOLEDO/PR - BRASIL', 'TOLEDO', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2992, 'GUAPIRAMA/PR - BRASIL', 'GUAPIRAMA', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2994, 'GUARACI/PR - BRASIL', 'GUARACI', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2995, 'GUARANIACU/PR - BRASIL', 'GUARANIACU', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2997, 'GUARAQUECABA/PR - BRASIL', 'GUARAQUECABA', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2998, 'GUARATUBA/PR - BRASIL', 'GUARATUBA', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2999, 'HONORIO SERPA/PR - BRASIL', 'HONORIO SERPA', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3001, 'IBEMA/PR - BRASIL', 'IBEMA', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3003, 'ICARAIMA/PR - BRASIL', 'ICARAIMA', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3004, 'IGUARACU/PR - BRASIL', 'IGUARACU', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3006, 'IMBAU/PR - BRASIL', 'IMBAU', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3008, 'INACIO MARTINS/PR - BRASIL', 'INACIO MARTINS', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3009, 'INAJA/PR - BRASIL', 'INAJA', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3011, 'IPIRANGA/PR - BRASIL', 'IPIRANGA', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3012, 'IPORA/PR - BRASIL', 'IPORA', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3013, 'IRACEMA DO OESTE/PR - BRASIL', 'IRACEMA DO OESTE', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3015, 'IRETAMA/PR - BRASIL', 'IRETAMA', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3017, 'ITAIPULANDIA/PR - BRASIL', 'ITAIPULANDIA', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3018, 'ITAMBARACA/PR - BRASIL', 'ITAMBARACA', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3020, 'ITAPEJARA D´OESTE/PR - BRASIL', 'ITAPEJARA D´OESTE', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3022, 'ITAUNA DO SUL/PR - BRASIL', 'ITAUNA DO SUL', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3023, 'IVAI/PR - BRASIL', 'IVAI', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3025, 'IVATE/PR - BRASIL', 'IVATE', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3026, 'IVATUBA/PR - BRASIL', 'IVATUBA', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3028, 'JACAREZINHO/PR - BRASIL', 'JACAREZINHO', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3030, 'JAGUARIAIVA/PR - BRASIL', 'JAGUARIAIVA', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3033, 'JAPIRA/PR - BRASIL', 'JAPIRA', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3034, 'JAPURA/PR - BRASIL', 'JAPURA', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3037, 'JATAIZINHO/PR - BRASIL', 'JATAIZINHO', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3039, 'JOAQUIM TAVORA/PR - BRASIL', 'JOAQUIM TAVORA', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3042, 'JUSSARA/PR - BRASIL', 'JUSSARA', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3043, 'KALORE/PR - BRASIL', 'KALORE', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3044, 'LAPA/PR - BRASIL', 'LAPA', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3047, 'LEOPOLIS/PR - BRASIL', 'LEOPOLIS', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3048, 'LIDIANOPOLIS/PR - BRASIL', 'LIDIANOPOLIS', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3049, 'LINDOESTE/PR - BRASIL', 'LINDOESTE', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3050, 'LOANDA/PR - BRASIL', 'LOANDA', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3052, 'LONDRINA/PR - BRASIL', 'LONDRINA', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3054, 'LUNARDELLI/PR - BRASIL', 'LUNARDELLI', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3056, 'MALLET/PR - BRASIL', 'MALLET', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3057, 'MALU/PR - BRASIL', 'MALU', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3058, 'MAMBORE/PR - BRASIL', 'MAMBORE', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3059, 'MANDAGUACU/PR - BRASIL', 'MANDAGUACU', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3061, 'MANDIRITUBA/PR - BRASIL', 'MANDIRITUBA', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3063, 'MANGUEIRINHA/PR - BRASIL', 'MANGUEIRINHA', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3064, 'MANOEL RIBAS/PR - BRASIL', 'MANOEL RIBAS', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3066, 'MARIA HELENA/PR - BRASIL', 'MARIA HELENA', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3067, 'MARIALVA/PR - BRASIL', 'MARIALVA', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3069, 'MARILENA/PR - BRASIL', 'MARILENA', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3070, 'MARILUZ/PR - BRASIL', 'MARILUZ', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3071, 'MARINGA/PR - BRASIL', 'MARINGA', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3072, 'MARIOPOLIS/PR - BRASIL', 'MARIOPOLIS', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3074, 'MARMELEIRO/PR - BRASIL', 'MARMELEIRO', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3076, 'MARUMBI/PR - BRASIL', 'MARUMBI', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3077, 'MATELANDIA/PR - BRASIL', 'MATELANDIA', 16, 28);
commit;
prompt 1700 records committed...
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3079, 'MATO RICO/PR - BRASIL', 'MATO RICO', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3081, 'MEDIANEIRA/PR - BRASIL', 'MEDIANEIRA', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3082, 'MERCEDES/PR - BRASIL', 'MERCEDES', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3083, 'MIRADOR/PR - BRASIL', 'MIRADOR', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3085, 'MISSAL/PR - BRASIL', 'MISSAL', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3087, 'MORRETES/PR - BRASIL', 'MORRETES', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3088, 'MUNHOZ DE MELO/PR - BRASIL', 'MUNHOZ DE MELO', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3090, 'NOVA ALIANCA DO IVAI/PR - BRASIL', 'NOVA ALIANCA DO IVAI', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3092, 'NOVA AURORA/PR - BRASIL', 'NOVA AURORA', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3093, 'NOVA CANTU/PR - BRASIL', 'NOVA CANTU', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3094, 'NOVA ESPERANCA/PR - BRASIL', 'NOVA ESPERANCA', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3097, 'NOVA LARANJEIRAS/PR - BRASIL', 'NOVA LARANJEIRAS', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3098, 'NOVA LONDRINA/PR - BRASIL', 'NOVA LONDRINA', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3102, 'NOVA SANTA BARBARA/PR - BRASIL', 'NOVA SANTA BARBARA', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3103, 'NOVA SANTA ROSA/PR - BRASIL', 'NOVA SANTA ROSA', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3107, 'ORTIGUEIRA/PR - BRASIL', 'ORTIGUEIRA', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3108, 'OURIZONA/PR - BRASIL', 'OURIZONA', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3110, 'PAICANDU/PR - BRASIL', 'PAICANDU', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3112, 'PALMEIRA/PR - BRASIL', 'PALMEIRA', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3114, 'PALOTINA/PR - BRASIL', 'PALOTINA', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3116, 'PARANACITY/PR - BRASIL', 'PARANACITY', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3117, 'PARANAGUA/PR - BRASIL', 'PARANAGUA', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3118, 'PARANAPOEMA/PR - BRASIL', 'PARANAPOEMA', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3120, 'PATO BRAGADO/PR - BRASIL', 'PATO BRAGADO', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3121, 'PATO BRANCO/PR - BRASIL', 'PATO BRANCO', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3123, 'PAULO FRONTIN/PR - BRASIL', 'PAULO FRONTIN', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3124, 'PEABIRU/PR - BRASIL', 'PEABIRU', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3125, 'PEROBAL/PR - BRASIL', 'PEROBAL', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3127, 'PEROLA D´OESTE/PR - BRASIL', 'PEROLA D´OESTE', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2866, 'AMAPORA/PR - BRASIL', 'AMAPORA', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2867, 'AMPERE/PR - BRASIL', 'AMPERE', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2868, 'ANAHY/PR - BRASIL', 'ANAHY', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2870, 'ANGULO/PR - BRASIL', 'ANGULO', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2871, 'ANTONINA/PR - BRASIL', 'ANTONINA', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2873, 'APUCARANA/PR - BRASIL', 'APUCARANA', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2874, 'ARAPONGAS/PR - BRASIL', 'ARAPONGAS', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2876, 'ARAPUA/PR - BRASIL', 'ARAPUA', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2877, 'ARARUNA/PR - BRASIL', 'ARARUNA', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2879, 'ARIRANHA DO IVAI/PR - BRASIL', 'ARIRANHA DO IVAI', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2880, 'ASSAI/PR - BRASIL', 'ASSAI', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2882, 'ASTORGA/PR - BRASIL', 'ASTORGA', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2883, 'ATALAIA/PR - BRASIL', 'ATALAIA', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2884, 'BAIRRO DA OLARIA/PR - BRASIL', 'BAIRRO DA OLARIA', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2885, 'BALSA NOVA/PR - BRASIL', 'BALSA NOVA', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2887, 'BARBOSA FERRAZ/PR - BRASIL', 'BARBOSA FERRAZ', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2888, 'BARRA DO JACARE/PR - BRASIL', 'BARRA DO JACARE', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2891, 'BELA VISTA DO PARAISO/PR - BRASIL', 'BELA VISTA DO PARAISO', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2892, 'BITURUNA/PR - BRASIL', 'BITURUNA', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2896, 'BOA VISTA DA APARECIDA/PR - BRASIL', 'BOA VISTA DA APARECIDA', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2898, 'BOM JESUS DO SUL/PR - BRASIL', 'BOM JESUS DO SUL', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2899, 'BOM SUCESSO/PR - BRASIL', 'BOM SUCESSO', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2901, 'BORRAZOPOLIS/PR - BRASIL', 'BORRAZOPOLIS', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2903, 'BRAGANTINA/PR - BRASIL', 'BRAGANTINA', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2905, 'CAFEARA/PR - BRASIL', 'CAFEARA', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2906, 'CAFELANDIA/PR - BRASIL', 'CAFELANDIA', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2908, 'CALIFORNIA/PR - BRASIL', 'CALIFORNIA', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2909, 'CAMBARA/PR - BRASIL', 'CAMBARA', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2910, 'CAMBE/PR - BRASIL', 'CAMBE', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2912, 'CAMPINA DA LAGOA/PR - BRASIL', 'CAMPINA DA LAGOA', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2914, 'CAMPINA GRANDE DO SUL/PR - BRASIL', 'CAMPINA GRANDE DO SUL', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2916, 'CAMPO DO TENENTE/PR - BRASIL', 'CAMPO DO TENENTE', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2918, 'CAMPO MAGRO/PR - BRASIL', 'CAMPO MAGRO', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2920, 'CANDIDO DE ABREU/PR - BRASIL', 'CANDIDO DE ABREU', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2921, 'CANDOI/PR - BRASIL', 'CANDOI', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2923, 'CAPANEMA/PR - BRASIL', 'CAPANEMA', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2925, 'CARAMBEI/PR - BRASIL', 'CARAMBEI', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2926, 'CARLOPOLIS/PR - BRASIL', 'CARLOPOLIS', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2927, 'CASCAVEL/PR - BRASIL', 'CASCAVEL', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2928, 'CASTRO/PR - BRASIL', 'CASTRO', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2929, 'CATANDUVAS/PR - BRASIL', 'CATANDUVAS', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2931, 'CERRO AZUL/PR - BRASIL', 'CERRO AZUL', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2932, 'CEU AZUL/PR - BRASIL', 'CEU AZUL', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2934, 'CIANORTE/PR - BRASIL', 'CIANORTE', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2935, 'CIDADE GAUCHA/PR - BRASIL', 'CIDADE GAUCHA', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2937, 'COLOMBO/PR - BRASIL', 'COLOMBO', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2938, 'COLORADO/PR - BRASIL', 'COLORADO', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2940, 'CONSELHEIRO MAIRINCK/PR - BRASIL', 'CONSELHEIRO MAIRINCK', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2942, 'CORBELIA/PR - BRASIL', 'CORBELIA', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2944, 'CORONEL DOMINGOS SOARES/PR - BRASIL', 'CORONEL DOMINGOS SOARES', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2946, 'CORUMBATAI DO SUL/PR - BRASIL', 'CORUMBATAI DO SUL', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2947, 'CRUZ MACHADO/PR - BRASIL', 'CRUZ MACHADO', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2949, 'CRUZEIRO DO OESTE/PR - BRASIL', 'CRUZEIRO DO OESTE', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2951, 'CRUZMALTINA/PR - BRASIL', 'CRUZMALTINA', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2952, 'CURITIBA/PR - BRASIL', 'CURITIBA', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2953, 'CURIUVA/PR - BRASIL', 'CURIUVA', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2955, 'DIAMANTE DO SUL/PR - BRASIL', 'DIAMANTE DO SUL', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2957, 'DOIS VIZINHOS/PR - BRASIL', 'DOIS VIZINHOS', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2960, 'DOUTOR ULYSSES/PR - BRASIL', 'DOUTOR ULYSSES', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2962, 'ENEAS MARQUES/PR - BRASIL', 'ENEAS MARQUES', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2965, 'ESPERANCA NOVA/PR - BRASIL', 'ESPERANCA NOVA', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2967, 'FAROL/PR - BRASIL', 'FAROL', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2968, 'FAXINAL/PR - BRASIL', 'FAXINAL', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2970, 'FENIX/PR - BRASIL', 'FENIX', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2972, 'FIGUEIRA/PR - BRASIL', 'FIGUEIRA', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2973, 'FLOR DA SERRA DO SUL/PR - BRASIL', 'FLOR DA SERRA DO SUL', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2974, 'FLORAI/PR - BRASIL', 'FLORAI', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2976, 'FLORESTOPOLIS/PR - BRASIL', 'FLORESTOPOLIS', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2977, 'FLORIDA/PR - BRASIL', 'FLORIDA', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2979, 'FOZ DO IGUACU/PR - BRASIL', 'FOZ DO IGUACU', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2980, 'FOZ DO JORDAO/PR - BRASIL', 'FOZ DO JORDAO', 16, 28);
commit;
prompt 1800 records committed...
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2981, 'FRANCISCO ALVES/PR - BRASIL', 'FRANCISCO ALVES', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2983, 'GENERAL CARNEIRO/PR - BRASIL', 'GENERAL CARNEIRO', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2984, 'GODOY MOREIRA/PR - BRASIL', 'GODOY MOREIRA', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2985, 'GOIOERE/PR - BRASIL', 'GOIOERE', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2987, 'GRANDES RIOS/PR - BRASIL', 'GRANDES RIOS', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2988, 'GUAIRA/PR - BRASIL', 'GUAIRA', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2990, 'GUAMIRANGA/PR - BRASIL', 'GUAMIRANGA', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2991, 'GUAMIRIM/PR - BRASIL', 'GUAMIRIM', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2736, 'JURIPIRANGA/PB - BRASIL', 'JURIPIRANGA', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2737, 'JURU/PB - BRASIL', 'JURU', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2738, 'LAGOA/PB - BRASIL', 'LAGOA', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2740, 'LAGOA SECA/PB - BRASIL', 'LAGOA SECA', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2741, 'LASTRO/PB - BRASIL', 'LASTRO', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2742, 'LIVRAMENTO/PB - BRASIL', 'LIVRAMENTO', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2744, 'MAE D´AGUA/PB - BRASIL', 'MAE D´AGUA', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2746, 'MAMANGUAPE/PB - BRASIL', 'MAMANGUAPE', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2748, 'MARCACAO/PB - BRASIL', 'MARCACAO', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2749, 'MARI/PB - BRASIL', 'MARI', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2751, 'MASSARANDUBA/PB - BRASIL', 'MASSARANDUBA', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2752, 'MATARACA/PB - BRASIL', 'MATARACA', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2754, 'MATUREIA/PB - BRASIL', 'MATUREIA', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2755, 'MOGEIRO/PB - BRASIL', 'MOGEIRO', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2756, 'MONTADAS/PB - BRASIL', 'MONTADAS', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2758, 'MONTEIRO/PB - BRASIL', 'MONTEIRO', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2759, 'MULUNGU/PB - BRASIL', 'MULUNGU', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2763, 'NOVA OLINDA/PB - BRASIL', 'NOVA OLINDA', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2764, 'NOVA PALMEIRA/PB - BRASIL', 'NOVA PALMEIRA', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2766, 'OLIVEDOS/PB - BRASIL', 'OLIVEDOS', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2767, 'OURO VELHO/PB - BRASIL', 'OURO VELHO', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2769, 'PASSAGEM/PB - BRASIL', 'PASSAGEM', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2771, 'PAULISTA/PB - BRASIL', 'PAULISTA', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2773, 'PEDRA LAVRADA/PB - BRASIL', 'PEDRA LAVRADA', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2775, 'PEDRO REGIS/PB - BRASIL', 'PEDRO REGIS', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2776, 'PIANCO/PB - BRASIL', 'PIANCO', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2777, 'PICUI/PB - BRASIL', 'PICUI', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2778, 'PILAR/PB - BRASIL', 'PILAR', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2780, 'PILOEZINHOS/PB - BRASIL', 'PILOEZINHOS', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2782, 'PITIMBU/PB - BRASIL', 'PITIMBU', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2783, 'POCINHOS/PB - BRASIL', 'POCINHOS', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2785, 'POMBAL/PB - BRASIL', 'POMBAL', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2786, 'PRATA/PB - BRASIL', 'PRATA', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2788, 'PUXINANA/PB - BRASIL', 'PUXINANA', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2789, 'QUEIMADAS/PB - BRASIL', 'QUEIMADAS', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2790, 'QUIXABA/PB - BRASIL', 'QUIXABA', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2791, 'REMIGIO/PB - BRASIL', 'REMIGIO', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2793, 'RIACHO DE SANTO ANTONIO/PB - BRASIL', 'RIACHO DE SANTO ANTONIO', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2795, 'RIO TINTO/PB - BRASIL', 'RIO TINTO', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2796, 'SALGADINHO/PB - BRASIL', 'SALGADINHO', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2798, 'SANTA CECILIA/PB - BRASIL', 'SANTA CECILIA', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2799, 'SANTA CRUZ/PB - BRASIL', 'SANTA CRUZ', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2801, 'SANTA INES/PB - BRASIL', 'SANTA INES', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2802, 'SANTA LUZIA/PB - BRASIL', 'SANTA LUZIA', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2804, 'SANTA TERESINHA/PB - BRASIL', 'SANTA TERESINHA', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2806, 'SANTANA DOS GARROTES/PB - BRASIL', 'SANTANA DOS GARROTES', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2807, 'SANTAREM/PB - BRASIL', 'SANTAREM', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2809, 'SAO BENTO/PB - BRASIL', 'SAO BENTO', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2811, 'SAO DOMINGOS DE POMBAL/PB - BRASIL', 'SAO DOMINGOS DE POMBAL', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2813, 'SAO JOAO DO CARIRI/PB - BRASIL', 'SAO JOAO DO CARIRI', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2814, 'SAO JOAO DO RIO DO PEIXE/PB - BRASIL', 'SAO JOAO DO RIO DO PEIXE', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2816, 'SAO JOSE DA LAGOA TAPADA/PB - BRASIL', 'SAO JOSE DA LAGOA TAPADA', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2818, 'SAO JOSE DE ESPINHARAS/PB - BRASIL', 'SAO JOSE DE ESPINHARAS', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2820, 'SAO JOSE DE PRINCESA/PB - BRASIL', 'SAO JOSE DE PRINCESA', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2822, 'SAO JOSE DO BREJO DO CRUZ/PB - BRASIL', 'SAO JOSE DO BREJO DO CRUZ', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2826, 'SAO MAMEDE/PB - BRASIL', 'SAO MAMEDE', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2827, 'SAO MIGUEL DE TAIPU/PB - BRASIL', 'SAO MIGUEL DE TAIPU', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2829, 'SAO SEBASTIAO DO UMBUZEIRO/PB - BRASIL', 'SAO SEBASTIAO DO UMBUZEIRO', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2830, 'SAPE/PB - BRASIL', 'SAPE', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2833, 'SERRA DA RAIZ/PB - BRASIL', 'SERRA DA RAIZ', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2835, 'SERRA REDONDA/PB - BRASIL', 'SERRA REDONDA', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2838, 'SOBRADO/PB - BRASIL', 'SOBRADO', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2840, 'SOLEDADE/PB - BRASIL', 'SOLEDADE', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2841, 'SOSSEGO/PB - BRASIL', 'SOSSEGO', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2843, 'SUME/PB - BRASIL', 'SUME', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2845, 'TAPEROA/PB - BRASIL', 'TAPEROA', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2846, 'TAVARES/PB - BRASIL', 'TAVARES', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2848, 'TENORIO/PB - BRASIL', 'TENORIO', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2849, 'TRIUNFO/PB - BRASIL', 'TRIUNFO', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2851, 'UMBUZEIRO/PB - BRASIL', 'UMBUZEIRO', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2853, 'VIEIROPOLIS/PB - BRASIL', 'VIEIROPOLIS', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2854, 'VISTA SERRANA/PB - BRASIL', 'VISTA SERRANA', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2856, 'ABATIA/PR - BRASIL', 'ABATIA', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2858, 'AGUA BOA/PR - BRASIL', 'AGUA BOA', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2859, 'AGUDOS DO SUL/PR - BRASIL', 'AGUDOS DO SUL', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2860, 'ALMIRANTE TAMANDARE/PR - BRASIL', 'ALMIRANTE TAMANDARE', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2862, 'ALTO PARANA/PR - BRASIL', 'ALTO PARANA', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2863, 'ALTO PIQUIRI/PR - BRASIL', 'ALTO PIQUIRI', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2864, 'ALTONIA/PR - BRASIL', 'ALTONIA', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2606, 'SAO CAETANO DE ODIVELAS/PA - BRASIL', 'SAO CAETANO DE ODIVELAS', 14, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2607, 'SAO DOMINGOS DO ARAGUAIA/PA - BRASIL', 'SAO DOMINGOS DO ARAGUAIA', 14, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2608, 'SAO DOMINGOS DO CAPIM/PA - BRASIL', 'SAO DOMINGOS DO CAPIM', 14, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2609, 'SAO FELIX DO XINGU/PA - BRASIL', 'SAO FELIX DO XINGU', 14, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2611, 'SAO GERALDO DO ARAGUAIA/PA - BRASIL', 'SAO GERALDO DO ARAGUAIA', 14, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2612, 'SAO JOAO DA PONTA/PA - BRASIL', 'SAO JOAO DA PONTA', 14, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2613, 'SAO JOAO DE PIRABAS/PA - BRASIL', 'SAO JOAO DE PIRABAS', 14, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2615, 'SAO JORGE KM 32/PA - BRASIL', 'SAO JORGE KM 32', 14, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2618, 'SAPUCAIA/PA - BRASIL', 'SAPUCAIA', 14, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2619, 'SENADOR JOSE PORFIRIO/PA - BRASIL', 'SENADOR JOSE PORFIRIO', 14, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2621, 'SUDOESTE/PA - BRASIL', 'SUDOESTE', 14, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2623, 'TERRA ALTA/PA - BRASIL', 'TERRA ALTA', 14, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2624, 'TERRA SANTA/PA - BRASIL', 'TERRA SANTA', 14, 28);
commit;
prompt 1900 records committed...
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2626, 'TRACUATEUA/PA - BRASIL', 'TRACUATEUA', 14, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2628, 'TUCUMA/PA - BRASIL', 'TUCUMA', 14, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2629, 'TUCURUI/PA - BRASIL', 'TUCURUI', 14, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2631, 'URUARA/PA - BRASIL', 'URUARA', 14, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2632, 'VIGIA/PA - BRASIL', 'VIGIA', 14, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2633, 'VILA CANAA/PA - BRASIL', 'VILA CANAA', 14, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2636, 'VILA SAO JOSE/PA - BRASIL', 'VILA SAO JOSE', 14, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2637, 'VILA SAO JOSE DO ARAGUAIA/PA - BRASIL', 'VILA SAO JOSE DO ARAGUAIA', 14, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2639, 'VILA UNIAO CURUMU/PA - BRASIL', 'VILA UNIAO CURUMU', 14, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2640, 'VISEU/PA - BRASIL', 'VISEU', 14, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2642, 'XINGUARA/PA - BRASIL', 'XINGUARA', 14, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2643, 'AGUA BRANCA/PB - BRASIL', 'AGUA BRANCA', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2645, 'ALAGOA GRANDE/PB - BRASIL', 'ALAGOA GRANDE', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2647, 'ALAGOINHA/PB - BRASIL', 'ALAGOINHA', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2648, 'ALCANTIL/PB - BRASIL', 'ALCANTIL', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2650, 'ALHANDRA/PB - BRASIL', 'ALHANDRA', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2651, 'AMPARO/PB - BRASIL', 'AMPARO', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2652, 'APARECIDA/PB - BRASIL', 'APARECIDA', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2654, 'ARARA/PB - BRASIL', 'ARARA', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2655, 'ARARUNA/PB - BRASIL', 'ARARUNA', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2656, 'AREIA/PB - BRASIL', 'AREIA', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2658, 'AREIAL/PB - BRASIL', 'AREIAL', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2659, 'AROEIRAS/PB - BRASIL', 'AROEIRAS', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2661, 'ASSUNCAO/PB - BRASIL', 'ASSUNCAO', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2662, 'BAIA DA TRAICAO/PB - BRASIL', 'BAIA DA TRAICAO', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2663, 'BANANEIRAS/PB - BRASIL', 'BANANEIRAS', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2665, 'BARRA DE SANTANA/PB - BRASIL', 'BARRA DE SANTANA', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2667, 'BAYEUX/PB - BRASIL', 'BAYEUX', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2668, 'BELEM/PB - BRASIL', 'BELEM', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2669, 'BELEM DO BREJO DO CRUZ/PB - BRASIL', 'BELEM DO BREJO DO CRUZ', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2671, 'BOA VENTURA/PB - BRASIL', 'BOA VENTURA', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2672, 'BOM JESUS/PB - BRASIL', 'BOM JESUS', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2674, 'BONITO DE SANTA FE/PB - BRASIL', 'BONITO DE SANTA FE', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2678, 'BREJO DOS SANTOS/PB - BRASIL', 'BREJO DOS SANTOS', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2679, 'CAAPORA/PB - BRASIL', 'CAAPORA', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2683, 'CACIMBA DE AREIA/PB - BRASIL', 'CACIMBA DE AREIA', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2684, 'CACIMBA DE DENTRO/PB - BRASIL', 'CACIMBA DE DENTRO', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2687, 'CALDAS BRANDAO/PB - BRASIL', 'CALDAS BRANDAO', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2689, 'CAMPINA GRANDE/PB - BRASIL', 'CAMPINA GRANDE', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2693, 'CATINGUEIRA/PB - BRASIL', 'CATINGUEIRA', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2695, 'CATURITE/PB - BRASIL', 'CATURITE', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2697, 'CONDADO/PB - BRASIL', 'CONDADO', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2698, 'CONDE/PB - BRASIL', 'CONDE', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2703, 'CUBATI/PB - BRASIL', 'CUBATI', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2704, 'CUITE/PB - BRASIL', 'CUITE', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2706, 'CUITEGI/PB - BRASIL', 'CUITEGI', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2707, 'CURRAL DE CIMA/PB - BRASIL', 'CURRAL DE CIMA', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2708, 'CURRAL VELHO/PB - BRASIL', 'CURRAL VELHO', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2709, 'DAMIAO/PB - BRASIL', 'DAMIAO', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2711, 'DIAMANTE/PB - BRASIL', 'DIAMANTE', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2713, 'DUAS ESTRADAS/PB - BRASIL', 'DUAS ESTRADAS', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2714, 'EMAS/PB - BRASIL', 'EMAS', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2716, 'FAGUNDES/PB - BRASIL', 'FAGUNDES', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2717, 'FREI MARTINHO/PB - BRASIL', 'FREI MARTINHO', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2719, 'GUARABIRA/PB - BRASIL', 'GUARABIRA', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2720, 'GURINHEM/PB - BRASIL', 'GURINHEM', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2721, 'GURJAO/PB - BRASIL', 'GURJAO', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2723, 'IGARACY/PB - BRASIL', 'IGARACY', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2725, 'INGA/PB - BRASIL', 'INGA', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2726, 'ITABAIANA/PB - BRASIL', 'ITABAIANA', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2728, 'ITAPOROROCA/PB - BRASIL', 'ITAPOROROCA', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2729, 'ITATUBA/PB - BRASIL', 'ITATUBA', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2731, 'JERICO/PB - BRASIL', 'JERICO', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2732, 'JOAO PESSOA/PB - BRASIL', 'JOAO PESSOA', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2734, 'JUAZEIRINHO/PB - BRASIL', 'JUAZEIRINHO', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2475, 'VIRGOLANDIA/MG - BRASIL', 'VIRGOLANDIA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2476, 'VISCONDE DO RIO BRANCO/MG - BRASIL', 'VISCONDE DO RIO BRANCO', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2478, 'WENCESLAU BRAZ/MG - BRASIL', 'WENCESLAU BRAZ', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2479, 'ABAETETUBA/PA - BRASIL', 'ABAETETUBA', 14, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2481, 'ACARA/PA - BRASIL', 'ACARA', 14, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2482, 'AFUA/PA - BRASIL', 'AFUA', 14, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2483, 'AGROVILA MONTE SINAI DO KM 201/PA - BRAS', 'AGROVILA MONTE SINAI DO KM 201', 14, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2485, 'ALENQUER/PA - BRASIL', 'ALENQUER', 14, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2486, 'ALMEIRIM/PA - BRASIL', 'ALMEIRIM', 14, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2487, 'ALTAMIRA/PA - BRASIL', 'ALTAMIRA', 14, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2489, 'ANANINDEUA/PA - BRASIL', 'ANANINDEUA', 14, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2491, 'ARAMANAI/PA - BRASIL', 'ARAMANAI', 14, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2493, 'AURORA DO PARA/PA - BRASIL', 'AURORA DO PARA', 14, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2494, 'AVEIRO/PA - BRASIL', 'AVEIRO', 14, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2495, 'BAGRE/PA - BRASIL', 'BAGRE', 14, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2497, 'BANNACH/PA - BRASIL', 'BANNACH', 14, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2499, 'BELEM/PA - BRASIL', 'BELEM', 14, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2500, 'BELTERRA/PA - BRASIL', 'BELTERRA', 14, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2502, 'BOM JESUS DO TOCANTINS/PA - BRASIL', 'BOM JESUS DO TOCANTINS', 14, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2504, 'BRAGANCA/PA - BRASIL', 'BRAGANCA', 14, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2507, 'BREU BRANCO/PA - BRASIL', 'BREU BRANCO', 14, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2508, 'BREVES/PA - BRASIL', 'BREVES', 14, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2509, 'BUJARU/PA - BRASIL', 'BUJARU', 14, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2510, 'CABECEIRA DO SILENCIO/PA - BRASIL', 'CABECEIRA DO SILENCIO', 14, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2512, 'CACHOEIRA DO PIRIA/PA - BRASIL', 'CACHOEIRA DO PIRIA', 14, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2513, 'CAMETA/PA - BRASIL', 'CAMETA', 14, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2515, 'CAPANEMA/PA - BRASIL', 'CAPANEMA', 14, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2516, 'CAPISTRANO DE ABREU/PA - BRASIL', 'CAPISTRANO DE ABREU', 14, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2518, 'CARAJAS/PA - BRASIL', 'CARAJAS', 14, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2519, 'CASTANHAL/PA - BRASIL', 'CASTANHAL', 14, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2520, 'CHAVES/PA - BRASIL', 'CHAVES', 14, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2523, 'CONCORDIA DO PARA/PA - BRASIL', 'CONCORDIA DO PARA', 14, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2524, 'CUMARU DO NORTE/PA - BRASIL', 'CUMARU DO NORTE', 14, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2526, 'CURRALINHO/PA - BRASIL', 'CURRALINHO', 14, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2527, 'CURUA/PA - BRASIL', 'CURUA', 14, 28);
commit;
prompt 2000 records committed...
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2528, 'CURUCA/PA - BRASIL', 'CURUCA', 14, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2530, 'ELDORADO DOS CARAJAS/PA - BRASIL', 'ELDORADO DOS CARAJAS', 14, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2533, 'GARRAFAO DO NORTE/PA - BRASIL', 'GARRAFAO DO NORTE', 14, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2534, 'GOIANESIA DO PARA/PA - BRASIL', 'GOIANESIA DO PARA', 14, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2536, 'IGARAPE-ACU/PA - BRASIL', 'IGARAPE-ACU', 14, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2538, 'INHANGAPI/PA - BRASIL', 'INHANGAPI', 14, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2540, 'IRITUIA/PA - BRASIL', 'IRITUIA', 14, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2541, 'ITAITUBA/PA - BRASIL', 'ITAITUBA', 14, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2542, 'ITUPIRANGA/PA - BRASIL', 'ITUPIRANGA', 14, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2544, 'JACUNDA/PA - BRASIL', 'JACUNDA', 14, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2545, 'JURUTI/PA - BRASIL', 'JURUTI', 14, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2548, 'MAE DO RIO/PA - BRASIL', 'MAE DO RIO', 14, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2549, 'MAGALHAES BARATA/PA - BRASIL', 'MAGALHAES BARATA', 14, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2553, 'MARITUBA/PA - BRASIL', 'MARITUBA', 14, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2554, 'MEDICILANDIA/PA - BRASIL', 'MEDICILANDIA', 14, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2557, 'MOJU/PA - BRASIL', 'MOJU', 14, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2559, 'MONTE DOURADO/PA - BRASIL', 'MONTE DOURADO', 14, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2562, 'NETEOLANDIA/PA - BRASIL', 'NETEOLANDIA', 14, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2564, 'NOVA IPIXUNA/PA - BRASIL', 'NOVA IPIXUNA', 14, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2567, 'NOVO REPARTIMENTO/PA - BRASIL', 'NOVO REPARTIMENTO', 14, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2568, 'OBIDOS/PA - BRASIL', 'OBIDOS', 14, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2571, 'OUREM/PA - BRASIL', 'OUREM', 14, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2573, 'PACAJA/PA - BRASIL', 'PACAJA', 14, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2575, 'PARAGOMINAS/PA - BRASIL', 'PARAGOMINAS', 14, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2576, 'PARAUA/PA - BRASIL', 'PARAUA', 14, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2577, 'PARAUAPEBAS/PA - BRASIL', 'PARAUAPEBAS', 14, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2578, 'PAU D ARCO/PA - BRASIL', 'PAU D ARCO', 14, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2580, 'PEIXE-BOI/PA - BRASIL', 'PEIXE-BOI', 14, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2581, 'PICARRA/PA - BRASIL', 'PICARRA', 14, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2583, 'PONTA DE PEDRAS/PA - BRASIL', 'PONTA DE PEDRAS', 14, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2585, 'PORTO DE MOZ/PA - BRASIL', 'PORTO DE MOZ', 14, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2586, 'PORTO TROMBETAS/PA - BRASIL', 'PORTO TROMBETAS', 14, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2588, 'PRIMAVERA/PA - BRASIL', 'PRIMAVERA', 14, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2589, 'QUATIPURU/PA - BRASIL', 'QUATIPURU', 14, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2591, 'RIO MARIA/PA - BRASIL', 'RIO MARIA', 14, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2593, 'RUROPOLIS/PA - BRASIL', 'RUROPOLIS', 14, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2594, 'SALINOPOLIS/PA - BRASIL', 'SALINOPOLIS', 14, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2595, 'SALVATERRA/PA - BRASIL', 'SALVATERRA', 14, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2597, 'SANTA CRUZ DO ARARI/PA - BRASIL', 'SANTA CRUZ DO ARARI', 14, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2598, 'SANTA ISABEL DO PARA/PA - BRASIL', 'SANTA ISABEL DO PARA', 14, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2599, 'SANTA LUZIA DO PARA/PA - BRASIL', 'SANTA LUZIA DO PARA', 14, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2600, 'SANTA MARIA DAS BARREIRAS/PA - BRASIL', 'SANTA MARIA DAS BARREIRAS', 14, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2602, 'SANTANA DO ARAGUAIA/PA - BRASIL', 'SANTANA DO ARAGUAIA', 14, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2603, 'SANTAREM/PA - BRASIL', 'SANTAREM', 14, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2604, 'SANTAREM NOVO/PA - BRASIL', 'SANTAREM NOVO', 14, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2358, 'SAO FRANCISCO DE PAULA/MG - BRASIL', 'SAO FRANCISCO DE PAULA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2361, 'SAO GERALDO/MG - BRASIL', 'SAO GERALDO', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2362, 'SAO GERALDO DA PIEDADE/MG - BRASIL', 'SAO GERALDO DA PIEDADE', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2364, 'SAO GONCALO DO PARA/MG - BRASIL', 'SAO GONCALO DO PARA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2366, 'SAO GONCALO DO RIO PRETO/MG - BRASIL', 'SAO GONCALO DO RIO PRETO', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2368, 'SAO GOTARDO/MG - BRASIL', 'SAO GOTARDO', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2369, 'SAO JOAO BATISTA DO GLORIA/MG - BRASIL', 'SAO JOAO BATISTA DO GLORIA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2371, 'SAO JOAO DA PONTE/MG - BRASIL', 'SAO JOAO DA PONTE', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2373, 'SAO JOAO DEL REI/MG - BRASIL', 'SAO JOAO DEL REI', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2374, 'SAO JOAO DO MANHUACU/MG - BRASIL', 'SAO JOAO DO MANHUACU', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2376, 'SAO JOAO DO ORIENTE/MG - BRASIL', 'SAO JOAO DO ORIENTE', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2378, 'SAO JOAO EVANGELISTA/MG - BRASIL', 'SAO JOAO EVANGELISTA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2380, 'SAO JOSE DA LAPA/MG - BRASIL', 'SAO JOSE DA LAPA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2381, 'SAO JOSE DA SAFIRA/MG - BRASIL', 'SAO JOSE DA SAFIRA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2383, 'SAO JOSE DO ALEGRE/MG - BRASIL', 'SAO JOSE DO ALEGRE', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2385, 'SAO JOSE DO GOIABAL/MG - BRASIL', 'SAO JOSE DO GOIABAL', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2386, 'SAO JOSE DO JACURI/MG - BRASIL', 'SAO JOSE DO JACURI', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2388, 'SAO LOURENCO/MG - BRASIL', 'SAO LOURENCO', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2389, 'SAO MIGUEL DO ANTA/MG - BRASIL', 'SAO MIGUEL DO ANTA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2391, 'SAO PEDRO DO SUACUI/MG - BRASIL', 'SAO PEDRO DO SUACUI', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2393, 'SAO ROMAO/MG - BRASIL', 'SAO ROMAO', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2394, 'SAO ROQUE DE MINAS/MG - BRASIL', 'SAO ROQUE DE MINAS', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2396, 'SAO SEBASTIAO DA VARGEM ALEGRE/MG - BRAS', 'SAO SEBASTIAO DA VARGEM ALEGRE', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2398, 'SAO SEBASTIAO DO OESTE/MG - BRASIL', 'SAO SEBASTIAO DO OESTE', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2400, 'SAO SEBASTIAO DO RIO PRETO/MG - BRASIL', 'SAO SEBASTIAO DO RIO PRETO', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2402, 'SAO THOME DAS LETRAS/MG - BRASIL', 'SAO THOME DAS LETRAS', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2403, 'SAO TOMAS DE AQUINO/MG - BRASIL', 'SAO TOMAS DE AQUINO', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2405, 'SAPUCAI-MIRIM/MG - BRASIL', 'SAPUCAI-MIRIM', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2406, 'SARDOA/MG - BRASIL', 'SARDOA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2407, 'SENADOR AMARAL/MG - BRASIL', 'SENADOR AMARAL', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2409, 'SENADOR FIRMINO/MG - BRASIL', 'SENADOR FIRMINO', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2411, 'SENADOR MODESTINO GONCALVES/MG - BRASIL', 'SENADOR MODESTINO GONCALVES', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2413, 'SENHORA DO PORTO/MG - BRASIL', 'SENHORA DO PORTO', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2415, 'SERICITA/MG - BRASIL', 'SERICITA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2416, 'SERITINGA/MG - BRASIL', 'SERITINGA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2417, 'SERRA AZUL DE MINAS/MG - BRASIL', 'SERRA AZUL DE MINAS', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2419, 'SERRA DO SALITRE/MG - BRASIL', 'SERRA DO SALITRE', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2421, 'SERRANIA/MG - BRASIL', 'SERRANIA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2423, 'SERRO/MG - BRASIL', 'SERRO', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2424, 'SETE LAGOAS/MG - BRASIL', 'SETE LAGOAS', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2428, 'SIMONESIA/MG - BRASIL', 'SIMONESIA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2429, 'SOBRALIA/MG - BRASIL', 'SOBRALIA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2432, 'TAIOBEIRAS/MG - BRASIL', 'TAIOBEIRAS', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2433, 'TAPIRA/MG - BRASIL', 'TAPIRA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2436, 'TARUMIRIM/MG - BRASIL', 'TARUMIRIM', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2437, 'TEIXEIRAS/MG - BRASIL', 'TEIXEIRAS', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2439, 'TIMOTEO/MG - BRASIL', 'TIMOTEO', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2440, 'TIRADENTES/MG - BRASIL', 'TIRADENTES', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2441, 'TIROS/MG - BRASIL', 'TIROS', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2443, 'TOLEDO/MG - BRASIL', 'TOLEDO', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2444, 'TOMBOS/MG - BRASIL', 'TOMBOS', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2446, 'TRES MARIAS/MG - BRASIL', 'TRES MARIAS', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2447, 'TRES PONTAS/MG - BRASIL', 'TRES PONTAS', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2449, 'TUPACIGUARA/MG - BRASIL', 'TUPACIGUARA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2450, 'TURMALINA/MG - BRASIL', 'TURMALINA', 13, 28);
commit;
prompt 2100 records committed...
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2451, 'TURVOLANDIA/MG - BRASIL', 'TURVOLANDIA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2453, 'UBAI/MG - BRASIL', 'UBAI', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2455, 'UBERABA/MG - BRASIL', 'UBERABA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2456, 'UBERLANDIA/MG - BRASIL', 'UBERLANDIA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2458, 'UNAI/MG - BRASIL', 'UNAI', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2459, 'URUANA DE MINAS/MG - BRASIL', 'URUANA DE MINAS', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2461, 'URUCUIA/MG - BRASIL', 'URUCUIA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2462, 'VARGEM BONITA/MG - BRASIL', 'VARGEM BONITA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2464, 'VARJAO DE MINAS/MG - BRASIL', 'VARJAO DE MINAS', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2465, 'VARZEA DA PALMA/MG - BRASIL', 'VARZEA DA PALMA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2467, 'VAZANTE/MG - BRASIL', 'VAZANTE', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2468, 'VERISSIMO/MG - BRASIL', 'VERISSIMO', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2470, 'VICOSA/MG - BRASIL', 'VICOSA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2471, 'VIEIRAS/MG - BRASIL', 'VIEIRAS', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2473, 'VIRGINIA/MG - BRASIL', 'VIRGINIA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2474, 'VIRGINOPOLIS/MG - BRASIL', 'VIRGINOPOLIS', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2240, 'PIEDADE DE PONTE NOVA/MG - BRASIL', 'PIEDADE DE PONTE NOVA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2241, 'PIEDADE DO RIO GRANDE/MG - BRASIL', 'PIEDADE DO RIO GRANDE', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2243, 'PIMENTA/MG - BRASIL', 'PIMENTA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2244, 'PINGO D´AGUA/MG - BRASIL', 'PINGO D´AGUA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2245, 'PINTOPOLIS/MG - BRASIL', 'PINTOPOLIS', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2247, 'PIRAJUBA/MG - BRASIL', 'PIRAJUBA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2248, 'PIRANGA/MG - BRASIL', 'PIRANGA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2250, 'PIRANGUINHO/MG - BRASIL', 'PIRANGUINHO', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2252, 'PIRAPORA/MG - BRASIL', 'PIRAPORA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2253, 'PIRAUBA/MG - BRASIL', 'PIRAUBA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2255, 'PIUI/MG - BRASIL', 'PIUI', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2256, 'PLANURA/MG - BRASIL', 'PLANURA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2257, 'POCO FUNDO/MG - BRASIL', 'POCO FUNDO', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2259, 'POCRANE/MG - BRASIL', 'POCRANE', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2260, 'POMPEU/MG - BRASIL', 'POMPEU', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2262, 'PONTO CHIQUE/MG - BRASIL', 'PONTO CHIQUE', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2264, 'PORTEIRINHA/MG - BRASIL', 'PORTEIRINHA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2265, 'PORTO FIRME/MG - BRASIL', 'PORTO FIRME', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2266, 'POTE/MG - BRASIL', 'POTE', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2268, 'POUSO ALTO/MG - BRASIL', 'POUSO ALTO', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2269, 'PRADOS/MG - BRASIL', 'PRADOS', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2270, 'PRATA/MG - BRASIL', 'PRATA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2272, 'PRATINHA/MG - BRASIL', 'PRATINHA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2274, 'PRESIDENTE JUSCELINO/MG - BRASIL', 'PRESIDENTE JUSCELINO', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2275, 'PRESIDENTE KUBITSCHEK/MG - BRASIL', 'PRESIDENTE KUBITSCHEK', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2277, 'PRUDENTE DE MORAIS/MG - BRASIL', 'PRUDENTE DE MORAIS', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2279, 'QUELUZITA/MG - BRASIL', 'QUELUZITA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2280, 'RAPOSOS/MG - BRASIL', 'RAPOSOS', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2282, 'RECREIO/MG - BRASIL', 'RECREIO', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2283, 'RESENDE COSTA/MG - BRASIL', 'RESENDE COSTA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2285, 'RESSAQUINHA/MG - BRASIL', 'RESSAQUINHA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2286, 'RIACHINHO/MG - BRASIL', 'RIACHINHO', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2288, 'RIBEIRAO DAS NEVES/MG - BRASIL', 'RIBEIRAO DAS NEVES', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2290, 'RIO ACIMA/MG - BRASIL', 'RIO ACIMA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2291, 'RIO CASCA/MG - BRASIL', 'RIO CASCA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2292, 'RIO DO PRADO/MG - BRASIL', 'RIO DO PRADO', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2296, 'RIO NOVO/MG - BRASIL', 'RIO NOVO', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2297, 'RIO PARANAIBA/MG - BRASIL', 'RIO PARANAIBA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2300, 'RIO POMBA/MG - BRASIL', 'RIO POMBA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2302, 'RIO VERMELHO/MG - BRASIL', 'RIO VERMELHO', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2304, 'ROCHEDO DE MINAS/MG - BRASIL', 'ROCHEDO DE MINAS', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2307, 'RUBELITA/MG - BRASIL', 'RUBELITA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2309, 'SABARA/MG - BRASIL', 'SABARA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2312, 'SALINAS/MG - BRASIL', 'SALINAS', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2314, 'SANTA BARBARA/MG - BRASIL', 'SANTA BARBARA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2318, 'SANTA EFIGENIA DE MINAS/MG - BRASIL', 'SANTA EFIGENIA DE MINAS', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2319, 'SANTA FE DE MINAS/MG - BRASIL', 'SANTA FE DE MINAS', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2321, 'SANTA LUZIA/MG - BRASIL', 'SANTA LUZIA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2322, 'SANTA MARGARIDA/MG - BRASIL', 'SANTA MARGARIDA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2324, 'SANTA MARIA DO SALTO/MG - BRASIL', 'SANTA MARIA DO SALTO', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2328, 'SANTA RITA DE JACUTINGA/MG - BRASIL', 'SANTA RITA DE JACUTINGA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2329, 'SANTA RITA DE MINAS/MG - BRASIL', 'SANTA RITA DE MINAS', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2330, 'SANTA RITA DO ITUETO/MG - BRASIL', 'SANTA RITA DO ITUETO', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2332, 'SANTA ROSA DA SERRA/MG - BRASIL', 'SANTA ROSA DA SERRA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2333, 'SANTA VITORIA/MG - BRASIL', 'SANTA VITORIA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2334, 'SANTANA DA VARGEM/MG - BRASIL', 'SANTANA DA VARGEM', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2335, 'SANTANA DE CATAGUASES/MG - BRASIL', 'SANTANA DE CATAGUASES', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2337, 'SANTANA DO DESERTO/MG - BRASIL', 'SANTANA DO DESERTO', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2338, 'SANTANA DO GARAMBEU/MG - BRASIL', 'SANTANA DO GARAMBEU', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2339, 'SANTANA DO JACARE/MG - BRASIL', 'SANTANA DO JACARE', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2340, 'SANTANA DO MANHUACU/MG - BRASIL', 'SANTANA DO MANHUACU', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2342, 'SANTANA DO RIACHO/MG - BRASIL', 'SANTANA DO RIACHO', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2343, 'SANTANA DOS MONTES/MG - BRASIL', 'SANTANA DOS MONTES', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2344, 'SANTO ANTONIO DA BARRA/MG - BRASIL', 'SANTO ANTONIO DA BARRA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2345, 'SANTO ANTONIO DO AMPARO/MG - BRASIL', 'SANTO ANTONIO DO AMPARO', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2347, 'SANTO ANTONIO DO GRAMA/MG - BRASIL', 'SANTO ANTONIO DO GRAMA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2349, 'SANTO ANTONIO DO JACINTO/MG - BRASIL', 'SANTO ANTONIO DO JACINTO', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2351, 'SANTO ANTONIO DO RIO ABAIXO/MG - BRASIL', 'SANTO ANTONIO DO RIO ABAIXO', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2352, 'SANTO HIPOLITO/MG - BRASIL', 'SANTO HIPOLITO', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2354, 'SAO BENTO ABADE/MG - BRASIL', 'SAO BENTO ABADE', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2356, 'SAO DOMINGOS DO PRATA/MG - BRASIL', 'SAO DOMINGOS DO PRATA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2239, 'PIAU/MG - BRASIL', 'PIAU', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2104, 'LASSANCE/MG - BRASIL', 'LASSANCE', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2105, 'LAVRAS/MG - BRASIL', 'LAVRAS', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2107, 'LEOPOLDINA/MG - BRASIL', 'LEOPOLDINA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2108, 'LIBERDADE/MG - BRASIL', 'LIBERDADE', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2109, 'LIMA DUARTE/MG - BRASIL', 'LIMA DUARTE', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2111, 'LONTRA/MG - BRASIL', 'LONTRA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2112, 'LUMINARIAS/MG - BRASIL', 'LUMINARIAS', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2113, 'LUZ/MG - BRASIL', 'LUZ', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2115, 'MACHADO/MG - BRASIL', 'MACHADO', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2117, 'MALACACHETA/MG - BRASIL', 'MALACACHETA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2118, 'MAMONAS/MG - BRASIL', 'MAMONAS', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2119, 'MANGA/MG - BRASIL', 'MANGA', 13, 28);
commit;
prompt 2200 records committed...
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2120, 'MANHUACU/MG - BRASIL', 'MANHUACU', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2121, 'MANHUMIRIM/MG - BRASIL', 'MANHUMIRIM', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2124, 'MARAVILHAS/MG - BRASIL', 'MARAVILHAS', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2125, 'MARIA DA FE/MG - BRASIL', 'MARIA DA FE', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2126, 'MARIANA/MG - BRASIL', 'MARIANA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2128, 'MARIPA DE MINAS/MG - BRASIL', 'MARIPA DE MINAS', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2130, 'MARMELOPOLIS/MG - BRASIL', 'MARMELOPOLIS', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2132, 'MARTINS SOARES/MG - BRASIL', 'MARTINS SOARES', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2133, 'MATA VERDE/MG - BRASIL', 'MATA VERDE', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2135, 'MATEUS LEME/MG - BRASIL', 'MATEUS LEME', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2137, 'MATIAS BARBOSA/MG - BRASIL', 'MATIAS BARBOSA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2138, 'MATIAS CARDOSO/MG - BRASIL', 'MATIAS CARDOSO', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2140, 'MATO VERDE/MG - BRASIL', 'MATO VERDE', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2142, 'MATUTINA/MG - BRASIL', 'MATUTINA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2143, 'MEDEIROS/MG - BRASIL', 'MEDEIROS', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2145, 'MENDES PIMENTEL/MG - BRASIL', 'MENDES PIMENTEL', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2147, 'MESQUITA/MG - BRASIL', 'MESQUITA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2150, 'MIRABELA/MG - BRASIL', 'MIRABELA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2152, 'MIRAI/MG - BRASIL', 'MIRAI', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2154, 'MOEMA/MG - BRASIL', 'MOEMA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2158, 'MONTE ALEGRE DE MINAS/MG - BRASIL', 'MONTE ALEGRE DE MINAS', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2160, 'MONTE BELO/MG - BRASIL', 'MONTE BELO', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2162, 'MONTE SANTO DE MINAS/MG - BRASIL', 'MONTE SANTO DE MINAS', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2165, 'MONTEZUMA/MG - BRASIL', 'MONTEZUMA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2167, 'MORRO DA GARCA/MG - BRASIL', 'MORRO DA GARCA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2169, 'MUNHOZ/MG - BRASIL', 'MUNHOZ', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2171, 'MUTUM/MG - BRASIL', 'MUTUM', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2172, 'MUZAMBINHO/MG - BRASIL', 'MUZAMBINHO', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2175, 'NATALANDIA/MG - BRASIL', 'NATALANDIA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2178, 'NEPOMUCENO/MG - BRASIL', 'NEPOMUCENO', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2180, 'NOVA ERA/MG - BRASIL', 'NOVA ERA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2183, 'NOVA PONTE/MG - BRASIL', 'NOVA PONTE', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2185, 'NOVA SERRANA/MG - BRASIL', 'NOVA SERRANA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2189, 'NOVORIZONTE/MG - BRASIL', 'NOVORIZONTE', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2190, 'OLARIA/MG - BRASIL', 'OLARIA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2191, 'OLIMPIO NORONHA/MG - BRASIL', 'OLIMPIO NORONHA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2194, 'ONCA DE PITANGUI/MG - BRASIL', 'ONCA DE PITANGUI', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2195, 'ORATORIOS/MG - BRASIL', 'ORATORIOS', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2196, 'OURO BRANCO/MG - BRASIL', 'OURO BRANCO', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2198, 'OURO PRETO/MG - BRASIL', 'OURO PRETO', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2199, 'OURO VERDE DE MINAS/MG - BRASIL', 'OURO VERDE DE MINAS', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2201, 'PAINEIRAS/MG - BRASIL', 'PAINEIRAS', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2202, 'PAINS/MG - BRASIL', 'PAINS', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2203, 'PAIVA/MG - BRASIL', 'PAIVA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2205, 'PALMOPOLIS/MG - BRASIL', 'PALMOPOLIS', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2207, 'PARA DE MINAS/MG - BRASIL', 'PARA DE MINAS', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2208, 'PARACATU/MG - BRASIL', 'PARACATU', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2210, 'PARAISOPOLIS/MG - BRASIL', 'PARAISOPOLIS', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2211, 'PARAOPEBA/MG - BRASIL', 'PARAOPEBA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2213, 'PASSA TEMPO/MG - BRASIL', 'PASSA TEMPO', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2214, 'PASSA VINTE/MG - BRASIL', 'PASSA VINTE', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2215, 'PASSABEM/MG - BRASIL', 'PASSABEM', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2217, 'PATOS DE MINAS/MG - BRASIL', 'PATOS DE MINAS', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2219, 'PATROCINIO DO MURIAE/MG - BRASIL', 'PATROCINIO DO MURIAE', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2220, 'PAULA CANDIDO/MG - BRASIL', 'PAULA CANDIDO', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2222, 'PAVAO/MG - BRASIL', 'PAVAO', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2223, 'PECANHA/MG - BRASIL', 'PECANHA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2225, 'PEDRA DO ANTA/MG - BRASIL', 'PEDRA DO ANTA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2226, 'PEDRA DO INDAIA/MG - BRASIL', 'PEDRA DO INDAIA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2227, 'PEDRA DOURADA/MG - BRASIL', 'PEDRA DOURADA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2228, 'PEDRALVA/MG - BRASIL', 'PEDRALVA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2229, 'PEDRAS DE MARIA DA CRUZ/MG - BRASIL', 'PEDRAS DE MARIA DA CRUZ', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2230, 'PEDRINOPOLIS/MG - BRASIL', 'PEDRINOPOLIS', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2232, 'PEDRO TEIXEIRA/MG - BRASIL', 'PEDRO TEIXEIRA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2233, 'PEQUERI/MG - BRASIL', 'PEQUERI', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2234, 'PEQUI/MG - BRASIL', 'PEQUI', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2236, 'PERDIZES/MG - BRASIL', 'PERDIZES', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2237, 'PERDOES/MG - BRASIL', 'PERDOES', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1964, 'EXTREMA/MG - BRASIL', 'EXTREMA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1965, 'FAMA/MG - BRASIL', 'FAMA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1967, 'FELICIO DOS SANTOS/MG - BRASIL', 'FELICIO DOS SANTOS', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1969, 'FELIXLANDIA/MG - BRASIL', 'FELIXLANDIA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1971, 'FERROS/MG - BRASIL', 'FERROS', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1972, 'FERVEDOURO/MG - BRASIL', 'FERVEDOURO', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1973, 'FLORESTAL/MG - BRASIL', 'FLORESTAL', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1975, 'FORMOSO/MG - BRASIL', 'FORMOSO', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1977, 'FORTUNA DE MINAS/MG - BRASIL', 'FORTUNA DE MINAS', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1978, 'FRANCISCO BADARO/MG - BRASIL', 'FRANCISCO BADARO', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1980, 'FRANCISCO SA/MG - BRASIL', 'FRANCISCO SA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1981, 'FREI GASPAR/MG - BRASIL', 'FREI GASPAR', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1983, 'FREI LAGONEGRO/MG - BRASIL', 'FREI LAGONEGRO', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1984, 'FRONTEIRA/MG - BRASIL', 'FRONTEIRA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1986, 'FRUTA DE LEITE/MG - BRASIL', 'FRUTA DE LEITE', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1987, 'FRUTAL/MG - BRASIL', 'FRUTAL', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1989, 'GALILEIA/MG - BRASIL', 'GALILEIA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1990, 'GONCALVES/MG - BRASIL', 'GONCALVES', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1992, 'GOUVEA/MG - BRASIL', 'GOUVEA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1994, 'GRAO MOGOL/MG - BRASIL', 'GRAO MOGOL', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1995, 'GRUPIARA/MG - BRASIL', 'GRUPIARA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1996, 'GUANHAES/MG - BRASIL', 'GUANHAES', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1999, 'GUARANESIA/MG - BRASIL', 'GUARANESIA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2000, 'GUARANI/MG - BRASIL', 'GUARANI', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2003, 'GUAXUPE/MG - BRASIL', 'GUAXUPE', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2005, 'GUIMARANIA/MG - BRASIL', 'GUIMARANIA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2008, 'HELIODORA/MG - BRASIL', 'HELIODORA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2010, 'IBERTIOGA/MG - BRASIL', 'IBERTIOGA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2013, 'IBIRACI/MG - BRASIL', 'IBIRACI', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2017, 'ICARAI DE MINAS/MG - BRASIL', 'ICARAI DE MINAS', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2018, 'IGARAPE/MG - BRASIL', 'IGARAPE', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2021, 'IJACI/MG - BRASIL', 'IJACI', 13, 28);
commit;
prompt 2300 records committed...
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2022, 'ILICINEA/MG - BRASIL', 'ILICINEA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2026, 'INGAI/MG - BRASIL', 'INGAI', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2027, 'INHAPIM/MG - BRASIL', 'INHAPIM', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2028, 'INHAUMA/MG - BRASIL', 'INHAUMA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2031, 'IPANEMA/MG - BRASIL', 'IPANEMA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2034, 'IPUIUNA/MG - BRASIL', 'IPUIUNA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2036, 'ITABIRA/MG - BRASIL', 'ITABIRA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2039, 'ITACAMBIRA/MG - BRASIL', 'ITACAMBIRA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2040, 'ITACARAMBI/MG - BRASIL', 'ITACARAMBI', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2042, 'ITAIPE/MG - BRASIL', 'ITAIPE', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2044, 'ITAMARANDIBA/MG - BRASIL', 'ITAMARANDIBA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2048, 'ITAMOGI/MG - BRASIL', 'ITAMOGI', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2049, 'ITAMONTE/MG - BRASIL', 'ITAMONTE', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2051, 'ITANHOMI/MG - BRASIL', 'ITANHOMI', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2052, 'ITAOBIM/MG - BRASIL', 'ITAOBIM', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2054, 'ITAPECERICA/MG - BRASIL', 'ITAPECERICA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2055, 'ITAPEVA/MG - BRASIL', 'ITAPEVA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2057, 'ITAU DE MINAS/MG - BRASIL', 'ITAU DE MINAS', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2058, 'ITAUNA/MG - BRASIL', 'ITAUNA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2060, 'ITINGA/MG - BRASIL', 'ITINGA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2061, 'ITUETA/MG - BRASIL', 'ITUETA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2063, 'ITUMIRIM/MG - BRASIL', 'ITUMIRIM', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2064, 'ITURAMA/MG - BRASIL', 'ITURAMA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2066, 'JABOTICATUBAS/MG - BRASIL', 'JABOTICATUBAS', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2067, 'JACINTO/MG - BRASIL', 'JACINTO', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2069, 'JACUTINGA/MG - BRASIL', 'JACUTINGA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2071, 'JAIBA/MG - BRASIL', 'JAIBA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2072, 'JAMPRUCA/MG - BRASIL', 'JAMPRUCA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2074, 'JANUARIA/MG - BRASIL', 'JANUARIA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2075, 'JAPARAIBA/MG - BRASIL', 'JAPARAIBA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2077, 'JEQUERI/MG - BRASIL', 'JEQUERI', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2078, 'JEQUITAI/MG - BRASIL', 'JEQUITAI', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2080, 'JEQUITINHONHA/MG - BRASIL', 'JEQUITINHONHA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2081, 'JESUANIA/MG - BRASIL', 'JESUANIA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2083, 'JOANESIA/MG - BRASIL', 'JOANESIA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2084, 'JOAO MONLEVADE/MG - BRASIL', 'JOAO MONLEVADE', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2085, 'JOAO PINHEIRO/MG - BRASIL', 'JOAO PINHEIRO', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2086, 'JOAQUIM FELICIO/MG - BRASIL', 'JOAQUIM FELICIO', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2087, 'JORDANIA/MG - BRASIL', 'JORDANIA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2088, 'JUATUBA/MG - BRASIL', 'JUATUBA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2089, 'JUIZ DE FORA/MG - BRASIL', 'JUIZ DE FORA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2090, 'JURAMENTO/MG - BRASIL', 'JURAMENTO', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2091, 'JURUAIA/MG - BRASIL', 'JURUAIA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2092, 'LADAINHA/MG - BRASIL', 'LADAINHA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2093, 'LAGAMAR/MG - BRASIL', 'LAGAMAR', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2094, 'LAGOA DA PRATA/MG - BRASIL', 'LAGOA DA PRATA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2095, 'LAGOA DOS PATOS/MG - BRASIL', 'LAGOA DOS PATOS', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2096, 'LAGOA DOURADA/MG - BRASIL', 'LAGOA DOURADA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2098, 'LAGOA GRANDE/MG - BRASIL', 'LAGOA GRANDE', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2099, 'LAGOA SANTA/MG - BRASIL', 'LAGOA SANTA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2100, 'LAJINHA/MG - BRASIL', 'LAJINHA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2102, 'LAMIM/MG - BRASIL', 'LAMIM', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2103, 'LARANJAL/MG - BRASIL', 'LARANJAL', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1842, 'CARMESIA/MG - BRASIL', 'CARMESIA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1844, 'CARMO DA MATA/MG - BRASIL', 'CARMO DA MATA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1845, 'CARMO DE MINAS/MG - BRASIL', 'CARMO DE MINAS', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1847, 'CARMO DO PARANAIBA/MG - BRASIL', 'CARMO DO PARANAIBA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1849, 'CARMOPOLIS DE MINAS/MG - BRASIL', 'CARMOPOLIS DE MINAS', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1850, 'CARNEIRINHO/MG - BRASIL', 'CARNEIRINHO', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1852, 'CARVALHOPOLIS/MG - BRASIL', 'CARVALHOPOLIS', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1854, 'CASA GRANDE/MG - BRASIL', 'CASA GRANDE', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1856, 'CASSIA/MG - BRASIL', 'CASSIA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1857, 'CATAGUASES/MG - BRASIL', 'CATAGUASES', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1859, 'CATUJI/MG - BRASIL', 'CATUJI', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1860, 'CATUTI/MG - BRASIL', 'CATUTI', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1861, 'CAXAMBU/MG - BRASIL', 'CAXAMBU', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1862, 'CEDRO DO ABAETE/MG - BRASIL', 'CEDRO DO ABAETE', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1864, 'CENTRALINA/MG - BRASIL', 'CENTRALINA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1865, 'CHACARA/MG - BRASIL', 'CHACARA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1868, 'CHAPADA GAUCHA/MG - BRASIL', 'CHAPADA GAUCHA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1870, 'CIPOTANEA/MG - BRASIL', 'CIPOTANEA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1873, 'CLAUDIO/MG - BRASIL', 'CLAUDIO', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1875, 'COLUNA/MG - BRASIL', 'COLUNA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1879, 'CONCEICAO DA BARRA DE MINAS/MG - BRASIL', 'CONCEICAO DA BARRA DE MINAS', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1881, 'CONCEICAO DAS PEDRAS/MG - BRASIL', 'CONCEICAO DAS PEDRAS', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1882, 'CONCEICAO DE IPANEMA/MG - BRASIL', 'CONCEICAO DE IPANEMA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1884, 'CONCEICAO DO PARA/MG - BRASIL', 'CONCEICAO DO PARA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1887, 'CONEGO MARINHO/MG - BRASIL', 'CONEGO MARINHO', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1888, 'CONGONHAL/MG - BRASIL', 'CONGONHAL', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1890, 'CONGONHAS DO NORTE/MG - BRASIL', 'CONGONHAS DO NORTE', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1894, 'CONSOLACAO/MG - BRASIL', 'CONSOLACAO', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1895, 'CONTAGEM/MG - BRASIL', 'CONTAGEM', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1897, 'CORACAO DE JESUS/MG - BRASIL', 'CORACAO DE JESUS', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1900, 'CORINTO/MG - BRASIL', 'CORINTO', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1902, 'COROMANDEL/MG - BRASIL', 'COROMANDEL', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1904, 'CORONEL MURTA/MG - BRASIL', 'CORONEL MURTA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1907, 'CORREGO DANTA/MG - BRASIL', 'CORREGO DANTA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1909, 'CORREGO NOVO/MG - BRASIL', 'CORREGO NOVO', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1910, 'COUTO DE MAGALHAES DE MINAS/MG - BRASIL', 'COUTO DE MAGALHAES DE MINAS', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1913, 'CRISTIANO OTONI/MG - BRASIL', 'CRISTIANO OTONI', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1914, 'CRISTINA/MG - BRASIL', 'CRISTINA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1916, 'CRUZEIRO DA FORTALEZA/MG - BRASIL', 'CRUZEIRO DA FORTALEZA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1917, 'CRUZILIA/MG - BRASIL', 'CRUZILIA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1919, 'DATAS/MG - BRASIL', 'DATAS', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1920, 'DELFIM MOREIRA/MG - BRASIL', 'DELFIM MOREIRA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1922, 'DELTA/MG - BRASIL', 'DELTA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1923, 'DESCOBERTO/MG - BRASIL', 'DESCOBERTO', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1925, 'DESTERRO DO MELO/MG - BRASIL', 'DESTERRO DO MELO', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1926, 'DIAMANTINA/MG - BRASIL', 'DIAMANTINA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1927, 'DIOGO DE VASCONCELOS/MG - BRASIL', 'DIOGO DE VASCONCELOS', 13, 28);
commit;
prompt 2400 records committed...
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1928, 'DIONISIO/MG - BRASIL', 'DIONISIO', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1929, 'DIVINESIA/MG - BRASIL', 'DIVINESIA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1931, 'DIVINO DAS LARANJEIRAS/MG - BRASIL', 'DIVINO DAS LARANJEIRAS', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1933, 'DIVINOPOLIS/MG - BRASIL', 'DIVINOPOLIS', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1934, 'DIVISA NOVA/MG - BRASIL', 'DIVISA NOVA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1935, 'DIVISOPOLIS/MG - BRASIL', 'DIVISOPOLIS', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1936, 'DOM CAVATI/MG - BRASIL', 'DOM CAVATI', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1937, 'DOM JOAQUIM/MG - BRASIL', 'DOM JOAQUIM', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1938, 'DOM SILVERIO/MG - BRASIL', 'DOM SILVERIO', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1939, 'DOM VICOSO/MG - BRASIL', 'DOM VICOSO', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1940, 'DONA EUZEBIA/MG - BRASIL', 'DONA EUZEBIA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1941, 'DORES DE CAMPOS/MG - BRASIL', 'DORES DE CAMPOS', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1942, 'DORES DE GUANHAES/MG - BRASIL', 'DORES DE GUANHAES', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1943, 'DORES DO INDAIA/MG - BRASIL', 'DORES DO INDAIA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1944, 'DORES DO TURVO/MG - BRASIL', 'DORES DO TURVO', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1946, 'DOURADOQUARA/MG - BRASIL', 'DOURADOQUARA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1947, 'DURANDE/MG - BRASIL', 'DURANDE', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1949, 'ENGENHEIRO CALDAS/MG - BRASIL', 'ENGENHEIRO CALDAS', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1951, 'ENTRE FOLHAS/MG - BRASIL', 'ENTRE FOLHAS', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1953, 'ERVALIA/MG - BRASIL', 'ERVALIA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1954, 'ESMERALDAS/MG - BRASIL', 'ESMERALDAS', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1955, 'ESPERA FELIZ/MG - BRASIL', 'ESPERA FELIZ', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1956, 'ESPINOSA/MG - BRASIL', 'ESPINOSA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1958, 'ESTIVA/MG - BRASIL', 'ESTIVA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1959, 'ESTRELA DALVA/MG - BRASIL', 'ESTRELA DALVA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1961, 'ESTRELA DO SUL/MG - BRASIL', 'ESTRELA DO SUL', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1962, 'EUGENOPOLIS/MG - BRASIL', 'EUGENOPOLIS', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1708, 'AGUANIL/MG - BRASIL', 'AGUANIL', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1709, 'AGUAS FORMOSAS/MG - BRASIL', 'AGUAS FORMOSAS', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1711, 'AIMORES/MG - BRASIL', 'AIMORES', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1712, 'AIURUOCA/MG - BRASIL', 'AIURUOCA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1713, 'ALAGOA/MG - BRASIL', 'ALAGOA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1714, 'ALBERTINA/MG - BRASIL', 'ALBERTINA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1716, 'ALFENAS/MG - BRASIL', 'ALFENAS', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1718, 'ALMENARA/MG - BRASIL', 'ALMENARA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1719, 'ALPERCATA/MG - BRASIL', 'ALPERCATA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1720, 'ALPINOPOLIS/MG - BRASIL', 'ALPINOPOLIS', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1721, 'ALTEROSA/MG - BRASIL', 'ALTEROSA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1723, 'ALTO RIO DOCE/MG - BRASIL', 'ALTO RIO DOCE', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1724, 'ALVARENGA/MG - BRASIL', 'ALVARENGA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1726, 'ALVORADA DE MINAS/MG - BRASIL', 'ALVORADA DE MINAS', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1728, 'ANDRADAS/MG - BRASIL', 'ANDRADAS', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1731, 'ANTONIO DIAS/MG - BRASIL', 'ANTONIO DIAS', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1733, 'ARACAI/MG - BRASIL', 'ARACAI', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1735, 'ARACUAI/MG - BRASIL', 'ARACUAI', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1736, 'ARAGUARI/MG - BRASIL', 'ARAGUARI', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1739, 'ARAPORA/MG - BRASIL', 'ARAPORA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1740, 'ARAPUA/MG - BRASIL', 'ARAPUA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1743, 'ARCEBURGO/MG - BRASIL', 'ARCEBURGO', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1747, 'ARINOS/MG - BRASIL', 'ARINOS', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1748, 'ASTOLFO DUTRA/MG - BRASIL', 'ASTOLFO DUTRA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1752, 'BALDIM/MG - BRASIL', 'BALDIM', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1754, 'BANDEIRA/MG - BRASIL', 'BANDEIRA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1756, 'BARAO DE COCAIS/MG - BRASIL', 'BARAO DE COCAIS', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1759, 'BARRA LONGA/MG - BRASIL', 'BARRA LONGA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1760, 'BARROSO/MG - BRASIL', 'BARROSO', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1763, 'BELO HORIZONTE/MG - BRASIL', 'BELO HORIZONTE', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1765, 'BELO VALE/MG - BRASIL', 'BELO VALE', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1766, 'BERILO/MG - BRASIL', 'BERILO', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1769, 'BIAS FORTES/MG - BRASIL', 'BIAS FORTES', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1771, 'BIQUINHAS/MG - BRASIL', 'BIQUINHAS', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1775, 'BOM DESPACHO/MG - BRASIL', 'BOM DESPACHO', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1777, 'BOM JESUS DA PENHA/MG - BRASIL', 'BOM JESUS DA PENHA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1779, 'BOM JESUS DO GALHO/MG - BRASIL', 'BOM JESUS DO GALHO', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1781, 'BOM SUCESSO/MG - BRASIL', 'BOM SUCESSO', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1783, 'BONFINOPOLIS DE MINAS/MG - BRASIL', 'BONFINOPOLIS DE MINAS', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1785, 'BOTELHOS/MG - BRASIL', 'BOTELHOS', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1786, 'BOTUMIRIM/MG - BRASIL', 'BOTUMIRIM', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1787, 'BRAS PIRES/MG - BRASIL', 'BRAS PIRES', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1789, 'BRASILIA DE MINAS/MG - BRASIL', 'BRASILIA DE MINAS', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1790, 'BRASOPOLIS/MG - BRASIL', 'BRASOPOLIS', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1791, 'BRAUNAS/MG - BRASIL', 'BRAUNAS', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1792, 'BRUMADINHO/MG - BRASIL', 'BRUMADINHO', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1794, 'BUENOPOLIS/MG - BRASIL', 'BUENOPOLIS', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1795, 'BURITIS/MG - BRASIL', 'BURITIS', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1797, 'CABO VERDE/MG - BRASIL', 'CABO VERDE', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1798, 'CACHOEIRA DA PRATA/MG - BRASIL', 'CACHOEIRA DA PRATA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1799, 'CACHOEIRA DE MINAS/MG - BRASIL', 'CACHOEIRA DE MINAS', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1801, 'CACHOEIRA DOURADA/MG - BRASIL', 'CACHOEIRA DOURADA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1802, 'CAETANOPOLIS/MG - BRASIL', 'CAETANOPOLIS', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1803, 'CAETE/MG - BRASIL', 'CAETE', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1805, 'CAJURI/MG - BRASIL', 'CAJURI', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1806, 'CALDAS/MG - BRASIL', 'CALDAS', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1807, 'CAMACHO/MG - BRASIL', 'CAMACHO', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1808, 'CAMANDUCAIA/MG - BRASIL', 'CAMANDUCAIA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1809, 'CAMBUI/MG - BRASIL', 'CAMBUI', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1810, 'CAMBUQUIRA/MG - BRASIL', 'CAMBUQUIRA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1811, 'CAMPANARIO/MG - BRASIL', 'CAMPANARIO', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1812, 'CAMPANHA/MG - BRASIL', 'CAMPANHA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1813, 'CAMPESTRE/MG - BRASIL', 'CAMPESTRE', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1814, 'CAMPINA VERDE/MG - BRASIL', 'CAMPINA VERDE', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1815, 'CAMPO BELO/MG - BRASIL', 'CAMPO BELO', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1816, 'CAMPO DO MEIO/MG - BRASIL', 'CAMPO DO MEIO', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1817, 'CAMPO FLORIDO/MG - BRASIL', 'CAMPO FLORIDO', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1818, 'CAMPOS ALTOS/MG - BRASIL', 'CAMPOS ALTOS', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1819, 'CAMPOS GERAIS/MG - BRASIL', 'CAMPOS GERAIS', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1821, 'CANAA/MG - BRASIL', 'CANAA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1822, 'CANAPOLIS/MG - BRASIL', 'CANAPOLIS', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1824, 'CAPARAO/MG - BRASIL', 'CAPARAO', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1826, 'CAPELINHA/MG - BRASIL', 'CAPELINHA', 13, 28);
commit;
prompt 2500 records committed...
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1827, 'CAPETINGA/MG - BRASIL', 'CAPETINGA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1829, 'CAPINOPOLIS/MG - BRASIL', 'CAPINOPOLIS', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1830, 'CAPITAO ANDRADE/MG - BRASIL', 'CAPITAO ANDRADE', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1707, 'AGUA COMPRIDA/MG - BRASIL', 'AGUA COMPRIDA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1833, 'CAPUTIRA/MG - BRASIL', 'CAPUTIRA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1834, 'CARAI/MG - BRASIL', 'CARAI', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1836, 'CARANDAI/MG - BRASIL', 'CARANDAI', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1837, 'CARANGOLA/MG - BRASIL', 'CARANGOLA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1839, 'CARBONITA/MG - BRASIL', 'CARBONITA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1840, 'CAREACU/MG - BRASIL', 'CAREACU', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1581, 'PONTE BRANCA/MT - BRASIL', 'PONTE BRANCA', 11, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1582, 'PONTES E LACERDA/MT - BRASIL', 'PONTES E LACERDA', 11, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1584, 'PORTO DOS GAUCHOS/MT - BRASIL', 'PORTO DOS GAUCHOS', 11, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1585, 'PORTO ESPERIDIAO/MT - BRASIL', 'PORTO ESPERIDIAO', 11, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1587, 'POXOREO/MT - BRASIL', 'POXOREO', 11, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1590, 'QUERENCIA/MT - BRASIL', 'QUERENCIA', 11, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1591, 'RESERVA DO CABACAL/MT - BRASIL', 'RESERVA DO CABACAL', 11, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1594, 'RIO BRANCO/MT - BRASIL', 'RIO BRANCO', 11, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1596, 'ROSARIO OESTE/MT - BRASIL', 'ROSARIO OESTE', 11, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1597, 'SALTO DO CEU/MT - BRASIL', 'SALTO DO CEU', 11, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1601, 'SANTA TEREZINHA/MT - BRASIL', 'SANTA TEREZINHA', 11, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1602, 'SANTO AFONSO/MT - BRASIL', 'SANTO AFONSO', 11, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1605, 'SAO JOSE DO POVO/MT - BRASIL', 'SAO JOSE DO POVO', 11, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1607, 'SAO JOSE DO XINGU/MT - BRASIL', 'SAO JOSE DO XINGU', 11, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1609, 'SAO PEDRO DA CIPA/MT - BRASIL', 'SAO PEDRO DA CIPA', 11, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1610, 'SINOP/MT - BRASIL', 'SINOP', 11, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1612, 'TABAPORA/MT - BRASIL', 'TABAPORA', 11, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1614, 'TAPURAH/MT - BRASIL', 'TAPURAH', 11, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1617, 'TORIXOREU/MT - BRASIL', 'TORIXOREU', 11, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1619, 'VARZEA GRANDE/MT - BRASIL', 'VARZEA GRANDE', 11, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1620, 'VERA/MT - BRASIL', 'VERA', 11, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1622, 'VILA RICA/MT - BRASIL', 'VILA RICA', 11, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1624, 'ALCINOPOLIS/MS - BRASIL', 'ALCINOPOLIS', 12, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1625, 'AMAMBAI/MS - BRASIL', 'AMAMBAI', 12, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1628, 'ANGELICA/MS - BRASIL', 'ANGELICA', 12, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1629, 'ANHANDUI/MS - BRASIL', 'ANHANDUI', 12, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1633, 'ARAL MOREIRA/MS - BRASIL', 'ARAL MOREIRA', 12, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1635, 'BATAGUASSU/MS - BRASIL', 'BATAGUASSU', 12, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1636, 'BATAIPORA/MS - BRASIL', 'BATAIPORA', 12, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1638, 'BODOQUENA/MS - BRASIL', 'BODOQUENA', 12, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1641, 'CAARAPO/MS - BRASIL', 'CAARAPO', 12, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1644, 'CARACOL/MS - BRASIL', 'CARACOL', 12, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1645, 'CASSILANDIA/MS - BRASIL', 'CASSILANDIA', 12, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1647, 'CORGUINHO/MS - BRASIL', 'CORGUINHO', 12, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1648, 'CORONEL SAPUCAIA/MS - BRASIL', 'CORONEL SAPUCAIA', 12, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1649, 'CORUMBA/MS - BRASIL', 'CORUMBA', 12, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1651, 'COXIM/MS - BRASIL', 'COXIM', 12, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1652, 'DEODAPOLIS/MS - BRASIL', 'DEODAPOLIS', 12, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1654, 'DOURADINA/MS - BRASIL', 'DOURADINA', 12, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1655, 'DOURADOS/MS - BRASIL', 'DOURADOS', 12, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1656, 'ELDORADO/MS - BRASIL', 'ELDORADO', 12, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1657, 'FATIMA DO SUL/MS - BRASIL', 'FATIMA DO SUL', 12, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1659, 'GUIA LOPES DA LAGUNA/MS - BRASIL', 'GUIA LOPES DA LAGUNA', 12, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1660, 'IGUATEMI/MS - BRASIL', 'IGUATEMI', 12, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1661, 'INOCENCIA/MS - BRASIL', 'INOCENCIA', 12, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1663, 'ITAQUIRAI/MS - BRASIL', 'ITAQUIRAI', 12, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1664, 'IVINHEMA/MS - BRASIL', 'IVINHEMA', 12, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1666, 'JARAGUARI/MS - BRASIL', 'JARAGUARI', 12, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1667, 'JARDIM/MS - BRASIL', 'JARDIM', 12, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1668, 'JATEI/MS - BRASIL', 'JATEI', 12, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1669, 'JUTI/MS - BRASIL', 'JUTI', 12, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1670, 'LADARIO/MS - BRASIL', 'LADARIO', 12, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1671, 'LAGUNA CARAPA/MS - BRASIL', 'LAGUNA CARAPA', 12, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1672, 'MARACAJU/MS - BRASIL', 'MARACAJU', 12, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1673, 'MIRANDA/MS - BRASIL', 'MIRANDA', 12, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1674, 'MUNDO NOVO/MS - BRASIL', 'MUNDO NOVO', 12, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1675, 'NAVIRAI/MS - BRASIL', 'NAVIRAI', 12, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1676, 'NIOAQUE/MS - BRASIL', 'NIOAQUE', 12, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1677, 'NOVA ALVORADA DO SUL/MS - BRASIL', 'NOVA ALVORADA DO SUL', 12, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1678, 'NOVA ANDRADINA/MS - BRASIL', 'NOVA ANDRADINA', 12, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1679, 'NOVO HORIZONTE DO SUL/MS - BRASIL', 'NOVO HORIZONTE DO SUL', 12, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1680, 'PARANAIBA/MS - BRASIL', 'PARANAIBA', 12, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1681, 'PARANHOS/MS - BRASIL', 'PARANHOS', 12, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1682, 'PEDRO GOMES/MS - BRASIL', 'PEDRO GOMES', 12, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1684, 'PORTO MURTINHO/MS - BRASIL', 'PORTO MURTINHO', 12, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1686, 'RIO BRILHANTE/MS - BRASIL', 'RIO BRILHANTE', 12, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1687, 'RIO NEGRO/MS - BRASIL', 'RIO NEGRO', 12, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1689, 'ROCHEDO/MS - BRASIL', 'ROCHEDO', 12, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1690, 'SANTA RITA DO PARDO/MS - BRASIL', 'SANTA RITA DO PARDO', 12, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1692, 'SELVIRIA/MS - BRASIL', 'SELVIRIA', 12, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1693, 'SETE QUEDAS/MS - BRASIL', 'SETE QUEDAS', 12, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1694, 'SIDROLANDIA/MS - BRASIL', 'SIDROLANDIA', 12, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1695, 'SONORA/MS - BRASIL', 'SONORA', 12, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1697, 'TAQUARUSSU/MS - BRASIL', 'TAQUARUSSU', 12, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1699, 'TRES LAGOAS/MS - BRASIL', 'TRES LAGOAS', 12, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1701, 'ABADIA DOS DOURADOS/MG - BRASIL', 'ABADIA DOS DOURADOS', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1703, 'ABRE CAMPO/MG - BRASIL', 'ABRE CAMPO', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1705, 'ACUCENA/MG - BRASIL', 'ACUCENA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1706, 'AGUA BOA/MG - BRASIL', 'AGUA BOA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1454, 'SAO RAIMUNDO DO DOCA BEZERRA/MA - BRASIL', 'SAO RAIMUNDO DO DOCA BEZERRA', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1455, 'SAO ROBERTO/MA - BRASIL', 'SAO ROBERTO', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1457, 'SATUBINHA/MA - BRASIL', 'SATUBINHA', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1458, 'SENADOR ALEXANDRE COSTA/MA - BRASIL', 'SENADOR ALEXANDRE COSTA', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1462, 'SUCUPIRA DO NORTE/MA - BRASIL', 'SUCUPIRA DO NORTE', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1464, 'SUMAUMA/MA - BRASIL', 'SUMAUMA', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1465, 'TASSO FRAGOSO/MA - BRASIL', 'TASSO FRAGOSO', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1467, 'TIMON/MA - BRASIL', 'TIMON', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1470, 'TRIZIDELA DO VALE/MA - BRASIL', 'TRIZIDELA DO VALE', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1472, 'TUNTUM/MA - BRASIL', 'TUNTUM', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1473, 'TURIACU/MA - BRASIL', 'TURIACU', 10, 28);
commit;
prompt 2600 records committed...
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1476, 'URBANO SANTOS/MA - BRASIL', 'URBANO SANTOS', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1478, 'VARGEM GRANDE/MA - BRASIL', 'VARGEM GRANDE', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1481, 'VIRACAO/MA - BRASIL', 'VIRACAO', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1484, 'ZE DOCA/MA - BRASIL', 'ZE DOCA', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1485, 'ACORIZAL/MT - BRASIL', 'ACORIZAL', 11, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1486, 'AGUA BOA/MT - BRASIL', 'AGUA BOA', 11, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1490, 'ALTO COITE/MT - BRASIL', 'ALTO COITE', 11, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1491, 'ALTO GARCAS/MT - BRASIL', 'ALTO GARCAS', 11, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1493, 'ALTO TAQUARI/MT - BRASIL', 'ALTO TAQUARI', 11, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1496, 'ARAGUAIANA/MT - BRASIL', 'ARAGUAIANA', 11, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1497, 'ARAGUAINHA/MT - BRASIL', 'ARAGUAINHA', 11, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1500, 'ARIPUANA/MT - BRASIL', 'ARIPUANA', 11, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1501, 'ASSARI/MT - BRASIL', 'ASSARI', 11, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1505, 'BOA ESPERANCA/MT - BRASIL', 'BOA ESPERANCA', 11, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1506, 'BOM JESUS/MT - BRASIL', 'BOM JESUS', 11, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1507, 'BRASNORTE/MT - BRASIL', 'BRASNORTE', 11, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1511, 'CAMPO VERDE/MT - BRASIL', 'CAMPO VERDE', 11, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1512, 'CAMPOS DE JULIO/MT - BRASIL', 'CAMPOS DE JULIO', 11, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1515, 'CARAMUJO/MT - BRASIL', 'CARAMUJO', 11, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1516, 'CARLINDA/MT - BRASIL', 'CARLINDA', 11, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1518, 'CHAPADA DOS GUIMARAES/MT - BRASIL', 'CHAPADA DOS GUIMARAES', 11, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1519, 'CLAUDIA/MT - BRASIL', 'CLAUDIA', 11, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1520, 'COCALINHO/MT - BRASIL', 'COCALINHO', 11, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1522, 'COLNIZA/MT - BRASIL', 'COLNIZA', 11, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1524, 'CONFRESA/MT - BRASIL', 'CONFRESA', 11, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1525, 'COTRIGUACU/MT - BRASIL', 'COTRIGUACU', 11, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1527, 'DENISE/MT - BRASIL', 'DENISE', 11, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1528, 'DIAMANTINO/MT - BRASIL', 'DIAMANTINO', 11, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1530, 'FELIZ NATAL/MT - BRASIL', 'FELIZ NATAL', 11, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1531, 'FIGUEIROPOLIS D´OESTE/MT - BRASIL', 'FIGUEIROPOLIS D´OESTE', 11, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1533, 'GENERAL CARNEIRO/MT - BRASIL', 'GENERAL CARNEIRO', 11, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1534, 'GLORIA D´OESTE/MT - BRASIL', 'GLORIA D´OESTE', 11, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1535, 'GUARANTA DO NORTE/MT - BRASIL', 'GUARANTA DO NORTE', 11, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1536, 'GUIRATINGA/MT - BRASIL', 'GUIRATINGA', 11, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1537, 'INDIAVAI/MT - BRASIL', 'INDIAVAI', 11, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1538, 'IPIRANGA/MT - BRASIL', 'IPIRANGA', 11, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1539, 'ITANHANGA/MT - BRASIL', 'ITANHANGA', 11, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1540, 'ITAUBA/MT - BRASIL', 'ITAUBA', 11, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1541, 'ITIQUIRA/MT - BRASIL', 'ITIQUIRA', 11, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1542, 'JACIARA/MT - BRASIL', 'JACIARA', 11, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1543, 'JANGADA/MT - BRASIL', 'JANGADA', 11, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1544, 'JAURU/MT - BRASIL', 'JAURU', 11, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1545, 'JUARA/MT - BRASIL', 'JUARA', 11, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1546, 'JUINA/MT - BRASIL', 'JUINA', 11, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1547, 'JURUENA/MT - BRASIL', 'JURUENA', 11, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1548, 'JUSCIMEIRA/MT - BRASIL', 'JUSCIMEIRA', 11, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1549, 'LAMBARI D´OESTE/MT - BRASIL', 'LAMBARI D´OESTE', 11, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1550, 'LUCAS DO RIO VERDE/MT - BRASIL', 'LUCAS DO RIO VERDE', 11, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1551, 'LUCIARA/MT - BRASIL', 'LUCIARA', 11, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1552, 'MARCELANDIA/MT - BRASIL', 'MARCELANDIA', 11, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1553, 'MATUPA/MT - BRASIL', 'MATUPA', 11, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1554, 'MIRASSOL D¿OESTE/MT - BRASIL', 'MIRASSOL D¿OESTE', 11, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1556, 'NOBRES/MT - BRASIL', 'NOBRES', 11, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1557, 'NORTELANDIA/MT - BRASIL', 'NORTELANDIA', 11, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1559, 'NOVA BANDEIRANTES/MT - BRASIL', 'NOVA BANDEIRANTES', 11, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1560, 'NOVA BRASILANDIA/MT - BRASIL', 'NOVA BRASILANDIA', 11, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1561, 'NOVA CANAA DO NORTE/MT - BRASIL', 'NOVA CANAA DO NORTE', 11, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1563, 'NOVA MARILANDIA/MT - BRASIL', 'NOVA MARILANDIA', 11, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1565, 'NOVA MONTE VERDE/MT - BRASIL', 'NOVA MONTE VERDE', 11, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1567, 'NOVA OLIMPIA/MT - BRASIL', 'NOVA OLIMPIA', 11, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1569, 'NOVA UBIRATA/MT - BRASIL', 'NOVA UBIRATA', 11, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1570, 'NOVA XAVANTINA/MT - BRASIL', 'NOVA XAVANTINA', 11, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1572, 'NOVO MUNDO/MT - BRASIL', 'NOVO MUNDO', 11, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1573, 'NOVO SAO JOAQUIM/MT - BRASIL', 'NOVO SAO JOAQUIM', 11, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1574, 'PARANAITA/MT - BRASIL', 'PARANAITA', 11, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1578, 'PLANALTO DA SERRA/MT - BRASIL', 'PLANALTO DA SERRA', 11, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1333, 'LAGOA DO MATO/MA - BRASIL', 'LAGOA DO MATO', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1337, 'LAJEADO NOVO/MA - BRASIL', 'LAJEADO NOVO', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1339, 'LEANDRO/MA - BRASIL', 'LEANDRO', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1340, 'LIMA CAMPOS/MA - BRASIL', 'LIMA CAMPOS', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1342, 'LUIS DOMINGUES/MA - BRASIL', 'LUIS DOMINGUES', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1344, 'MANGUEIRA/MA - BRASIL', 'MANGUEIRA', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1347, 'MARANHAOZINHO/MA - BRASIL', 'MARANHAOZINHO', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1348, 'MARIANOPOLIS/MA - BRASIL', 'MARIANOPOLIS', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1351, 'MATOES/MA - BRASIL', 'MATOES', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1353, 'MILAGRES DO MARANHAO/MA - BRASIL', 'MILAGRES DO MARANHAO', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1357, 'MIRINZAL/MA - BRASIL', 'MIRINZAL', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1359, 'MONTE CASTELO/MA - BRASIL', 'MONTE CASTELO', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1361, 'MORRO DOS CABOCLOS/MA - BRASIL', 'MORRO DOS CABOCLOS', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1364, 'NAZARE DO BRUNO/MA - BRASIL', 'NAZARE DO BRUNO', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1368, 'NOVA IORQUE/MA - BRASIL', 'NOVA IORQUE', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1370, 'NOVO BACABAL/MA - BRASIL', 'NOVO BACABAL', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1371, 'OLHO DAGUA/MA - BRASIL', 'OLHO DAGUA', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1374, 'PACAS/MA - BRASIL', 'PACAS', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1375, 'PACIENCIA/MA - BRASIL', 'PACIENCIA', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1376, 'PACO DO LUMIAR/MA - BRASIL', 'PACO DO LUMIAR', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1378, 'PALMEIRANDIA/MA - BRASIL', 'PALMEIRANDIA', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1382, 'PASSAGEM FRANCA/MA - BRASIL', 'PASSAGEM FRANCA', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1383, 'PASTOS BONS/MA - BRASIL', 'PASTOS BONS', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1386, 'PEDREIRAS/MA - BRASIL', 'PEDREIRAS', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1388, 'PENALVA/MA - BRASIL', 'PENALVA', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1390, 'PERI MIRIM/MA - BRASIL', 'PERI MIRIM', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1392, 'PINDARE MIRIM/MA - BRASIL', 'PINDARE MIRIM', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1394, 'PINHEIRO/MA - BRASIL', 'PINHEIRO', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1395, 'PIO XII/MA - BRASIL', 'PIO XII', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1397, 'POCAO DE PEDRAS/MA - BRASIL', 'POCAO DE PEDRAS', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1398, 'PORTO FRANCO/MA - BRASIL', 'PORTO FRANCO', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1400, 'PRESIDENTE DUTRA/MA - BRASIL', 'PRESIDENTE DUTRA', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1401, 'PRESIDENTE JUSCELINO/MA - BRASIL', 'PRESIDENTE JUSCELINO', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1402, 'PRESIDENTE MEDICI/MA - BRASIL', 'PRESIDENTE MEDICI', 10, 28);
commit;
prompt 2700 records committed...
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1403, 'PRESIDENTE SARNEY/MA - BRASIL', 'PRESIDENTE SARNEY', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1405, 'PRIMEIRA CRUZ/MA - BRASIL', 'PRIMEIRA CRUZ', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1406, 'PRIMEIRO COCAL/MA - BRASIL', 'PRIMEIRO COCAL', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1407, 'RAPOSA/MA - BRASIL', 'RAPOSA', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1408, 'REMANSO/MA - BRASIL', 'REMANSO', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1409, 'RIACHAO/MA - BRASIL', 'RIACHAO', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1410, 'RIBAMAR FIQUENE/MA - BRASIL', 'RIBAMAR FIQUENE', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1411, 'RIO NOVO/MA - BRASIL', 'RIO NOVO', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1412, 'ROSARIO/MA - BRASIL', 'ROSARIO', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1413, 'SABONETE/MA - BRASIL', 'SABONETE', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1414, 'SALGADINHO/MA - BRASIL', 'SALGADINHO', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1415, 'SAMBAIBA/MA - BRASIL', 'SAMBAIBA', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1416, 'SANTA FILOMENA DO MARANHAO/MA - BRASIL', 'SANTA FILOMENA DO MARANHAO', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1417, 'SANTA HELENA/MA - BRASIL', 'SANTA HELENA', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1418, 'SANTA INES/MA - BRASIL', 'SANTA INES', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1419, 'SANTA LUZIA/MA - BRASIL', 'SANTA LUZIA', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1420, 'SANTA LUZIA DO PARUA/MA - BRASIL', 'SANTA LUZIA DO PARUA', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1421, 'SANTA QUITERIA DO MARANHAO/MA - BRASIL', 'SANTA QUITERIA DO MARANHAO', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1422, 'SANTA RITA/MA - BRASIL', 'SANTA RITA', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1423, 'SANTA VITORIA/MA - BRASIL', 'SANTA VITORIA', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1425, 'SANTO AMARO DO MARANHAO/MA - BRASIL', 'SANTO AMARO DO MARANHAO', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1427, 'SANTO ANTONIO DOS VIEIRAS/MA - BRASIL', 'SANTO ANTONIO DOS VIEIRAS', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1429, 'SAO BENTO/MA - BRASIL', 'SAO BENTO', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1430, 'SAO BERNARDO/MA - BRASIL', 'SAO BERNARDO', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1432, 'SAO DOMINGOS DO MARANHAO/MA - BRASIL', 'SAO DOMINGOS DO MARANHAO', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1433, 'SAO FELIX DE BALSAS/MA - BRASIL', 'SAO FELIX DE BALSAS', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1435, 'SAO FRANCISCO DO MARANHAO/MA - BRASIL', 'SAO FRANCISCO DO MARANHAO', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1437, 'SAO JOAO BATISTA/MA - BRASIL', 'SAO JOAO BATISTA', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1439, 'SAO JOAO DO PARAISO/MA - BRASIL', 'SAO JOAO DO PARAISO', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1441, 'SAO JOAO DOS PATOS/MA - BRASIL', 'SAO JOAO DOS PATOS', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1443, 'SAO JOSE DE RIBAMAR/MA - BRASIL', 'SAO JOSE DE RIBAMAR', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1444, 'SAO JOSE DO MEARIM/MA - BRASIL', 'SAO JOSE DO MEARIM', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1446, 'SAO LUIS/MA - BRASIL', 'SAO LUIS', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1448, 'SAO MATEUS DO MARANHAO/MA - BRASIL', 'SAO MATEUS DO MARANHAO', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1449, 'SAO PAULO APOSTOLO/MA - BRASIL', 'SAO PAULO APOSTOLO', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1451, 'SAO PEDRO DOS CRENTES/MA - BRASIL', 'SAO PEDRO DOS CRENTES', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1207, 'ARAIOSES/MA - BRASIL', 'ARAIOSES', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1208, 'ARAME/MA - BRASIL', 'ARAME', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1209, 'ARARI/MA - BRASIL', 'ARARI', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1212, 'BACABAL/MA - BRASIL', 'BACABAL', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1214, 'BACURI/MA - BRASIL', 'BACURI', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1217, 'BALSAS/MA - BRASIL', 'BALSAS', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1218, 'BARAO DE GRAJAU/MA - BRASIL', 'BARAO DE GRAJAU', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1221, 'BATATEIRA/MA - BRASIL', 'BATATEIRA', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1223, 'BELAGUA/MA - BRASIL', 'BELAGUA', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1224, 'BENEDITO LEITE/MA - BRASIL', 'BENEDITO LEITE', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1227, 'BOA VISTA DA TABUA/MA - BRASIL', 'BOA VISTA DA TABUA', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1230, 'BOM JESUS DAS SELVAS/MA - BRASIL', 'BOM JESUS DAS SELVAS', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1232, 'BOM PRINCIPIO/MA - BRASIL', 'BOM PRINCIPIO', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1234, 'BREJO/MA - BRASIL', 'BREJO', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1237, 'BURITI BRAVO/MA - BRASIL', 'BURITI BRAVO', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1239, 'BURITIRAMA/MA - BRASIL', 'BURITIRAMA', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1243, 'CAJAPIO/MA - BRASIL', 'CAJAPIO', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1244, 'CAJARI/MA - BRASIL', 'CAJARI', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1245, 'CAJAZEIRAS/MA - BRASIL', 'CAJAZEIRAS', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1247, 'CAJUAPARA/MA - BRASIL', 'CAJUAPARA', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1250, 'CANDIDO MENDES/MA - BRASIL', 'CANDIDO MENDES', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1253, 'CAPINZAL DO NORTE/MA - BRASIL', 'CAPINZAL DO NORTE', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1255, 'CARUTAPERA/MA - BRASIL', 'CARUTAPERA', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1256, 'CAXIAS/MA - BRASIL', 'CAXIAS', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1260, 'CENTRO DO MARCOLINO/MA - BRASIL', 'CENTRO DO MARCOLINO', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1262, 'CENTRO DO TOINHO/MA - BRASIL', 'CENTRO DO TOINHO', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1263, 'CENTRO DOS CARLOS/MA - BRASIL', 'CENTRO DOS CARLOS', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1265, 'CENTRO NOVO DO MARANHAO/MA - BRASIL', 'CENTRO NOVO DO MARANHAO', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1266, 'CHAPADINHA/MA - BRASIL', 'CHAPADINHA', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1267, 'CIDELANDIA/MA - BRASIL', 'CIDELANDIA', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1268, 'CLEMENTE/MA - BRASIL', 'CLEMENTE', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1270, 'COCOS/MA - BRASIL', 'COCOS', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1271, 'CODO/MA - BRASIL', 'CODO', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1272, 'COELHO NETO/MA - BRASIL', 'COELHO NETO', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1274, 'CONCEICAO DO LAGO-ACU/MA - BRASIL', 'CONCEICAO DO LAGO-ACU', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1275, 'COPAIBA/MA - BRASIL', 'COPAIBA', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1277, 'CORREGO NOVO/MA - BRASIL', 'CORREGO NOVO', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1278, 'CRIOLI DO JOVIANO/MA - BRASIL', 'CRIOLI DO JOVIANO', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1279, 'CRIOLIZAO/MA - BRASIL', 'CRIOLIZAO', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1280, 'CRIOLIZINHO/MA - BRASIL', 'CRIOLIZINHO', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1281, 'CUMARU/MA - BRASIL', 'CUMARU', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1282, 'CURURUPU/MA - BRASIL', 'CURURUPU', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1283, 'CURVELANDIA/MA - BRASIL', 'CURVELANDIA', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1284, 'DAVINOPOLIS/MA - BRASIL', 'DAVINOPOLIS', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1285, 'DOM PEDRO/MA - BRASIL', 'DOM PEDRO', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1286, 'DUQUE BACELAR/MA - BRASIL', 'DUQUE BACELAR', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1287, 'ENGENHO D AGUA/MA - BRASIL', 'ENGENHO D AGUA', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1288, 'ESPERANTINOPOLIS/MA - BRASIL', 'ESPERANTINOPOLIS', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1289, 'ESTREITO/MA - BRASIL', 'ESTREITO', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1290, 'FEIRA NOVA DO MARANHAO/MA - BRASIL', 'FEIRA NOVA DO MARANHAO', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1291, 'FERNANDO FALCAO/MA - BRASIL', 'FERNANDO FALCAO', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1292, 'FLORES/MA - BRASIL', 'FLORES', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1293, 'FORMOSA DA SERRA NEGRA/MA - BRASIL', 'FORMOSA DA SERRA NEGRA', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1294, 'FORTALEZA DOS NOGUEIRAS/MA - BRASIL', 'FORTALEZA DOS NOGUEIRAS', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1295, 'FORTUNA/MA - BRASIL', 'FORTUNA', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1297, 'GERAIS DE BALSAS/MA - BRASIL', 'GERAIS DE BALSAS', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1299, 'GONCALVES DIAS/MA - BRASIL', 'GONCALVES DIAS', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1301, 'GOVERNADOR EDISON LOBAO/MA - BRASIL', 'GOVERNADOR EDISON LOBAO', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1303, 'GOVERNADOR LUIZ ROCHA/MA - BRASIL', 'GOVERNADOR LUIZ ROCHA', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1305, 'GOVERNADOR NUNES FREIRE/MA - BRASIL', 'GOVERNADOR NUNES FREIRE', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1306, 'GRACA ARANHA/MA - BRASIL', 'GRACA ARANHA', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1307, 'GRAJAU/MA - BRASIL', 'GRAJAU', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1308, 'GROTAO/MA - BRASIL', 'GROTAO', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1311, 'ICATU/MA - BRASIL', 'ICATU', 10, 28);
commit;
prompt 2800 records committed...
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1312, 'IGARAPE DO MEIO/MA - BRASIL', 'IGARAPE DO MEIO', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1313, 'IGARAPE GRANDE/MA - BRASIL', 'IGARAPE GRANDE', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1315, 'IPIRANGA/MA - BRASIL', 'IPIRANGA', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1317, 'ITAPECURU MIRIM/MA - BRASIL', 'ITAPECURU MIRIM', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1318, 'ITINGA DO MARANHAO/MA - BRASIL', 'ITINGA DO MARANHAO', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1320, 'JATOBA/MA - BRASIL', 'JATOBA', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1321, 'JENIPAPO/MA - BRASIL', 'JENIPAPO', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1323, 'JOAO LISBOA/MA - BRASIL', 'JOAO LISBOA', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1324, 'JOSELANDIA/MA - BRASIL', 'JOSELANDIA', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1327, 'LAGO DA PEDRA/MA - BRASIL', 'LAGO DA PEDRA', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1329, 'LAGO DOS RODRIGUES/MA - BRASIL', 'LAGO DOS RODRIGUES', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1332, 'LAGOA DO COCO/MA - BRASIL', 'LAGOA DO COCO', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1086, 'NAZARIO/GO - BRASIL', 'NAZARIO', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1088, 'NILOPOLIS/GO - BRASIL', 'NILOPOLIS', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1090, 'NOVA AMERICA/GO - BRASIL', 'NOVA AMERICA', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1093, 'NOVA GLORIA/GO - BRASIL', 'NOVA GLORIA', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1095, 'NOVA ROMA/GO - BRASIL', 'NOVA ROMA', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1098, 'NOVO GAMA/GO - BRASIL', 'NOVO GAMA', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1099, 'NOVO PLANALTO/GO - BRASIL', 'NOVO PLANALTO', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1102, 'OUROANA/GO - BRASIL', 'OUROANA', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1104, 'PADRE BERNARDO/GO - BRASIL', 'PADRE BERNARDO', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1107, 'PALMELO/GO - BRASIL', 'PALMELO', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1108, 'PALMEUNA/GO - BRASIL', 'PALMEUNA', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1110, 'PANAMA/GO - BRASIL', 'PANAMA', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1111, 'PARANAIGUARA/GO - BRASIL', 'PARANAIGUARA', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1115, 'PILAR DE GOIAS/GO - BRASIL', 'PILAR DE GOIAS', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1116, 'PIRACANJUBA/GO - BRASIL', 'PIRACANJUBA', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1120, 'PIRES DO RIO/GO - BRASIL', 'PIRES DO RIO', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1121, 'PLANALTINA/GO - BRASIL', 'PLANALTINA', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1125, 'PORTELANDIA/GO - BRASIL', 'PORTELANDIA', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1126, 'POSSE/GO - BRASIL', 'POSSE', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1129, 'RIALMA/GO - BRASIL', 'RIALMA', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1130, 'RIANAPOLIS/GO - BRASIL', 'RIANAPOLIS', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1132, 'RIO VERDE/GO - BRASIL', 'RIO VERDE', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1135, 'RUBIATABA/GO - BRASIL', 'RUBIATABA', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1138, 'SANTA CRUZ DE GOIAS/GO - BRASIL', 'SANTA CRUZ DE GOIAS', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1139, 'SANTA FE DE GOIAS/GO - BRASIL', 'SANTA FE DE GOIAS', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1140, 'SANTA HELENA DE GOIAS/GO - BRASIL', 'SANTA HELENA DE GOIAS', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1141, 'SANTA ISABEL/GO - BRASIL', 'SANTA ISABEL', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1142, 'SANTA RITA DO ARAGUAIA/GO - BRASIL', 'SANTA RITA DO ARAGUAIA', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1144, 'SANTA ROSA DA MEIA PONTE/GO - BRASIL', 'SANTA ROSA DA MEIA PONTE', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1145, 'SANTA ROSA DE GOIAS/GO - BRASIL', 'SANTA ROSA DE GOIAS', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1146, 'SANTA TEREZA DE GOIAS/GO - BRASIL', 'SANTA TEREZA DE GOIAS', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1147, 'SANTA TEREZINHA DE GOIAS/GO - BRASIL', 'SANTA TEREZINHA DE GOIAS', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1148, 'SANTO ANTONIO DA BARRA/GO - BRASIL', 'SANTO ANTONIO DA BARRA', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1149, 'SANTO ANTONIO DE GOIAS/GO - BRASIL', 'SANTO ANTONIO DE GOIAS', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1150, 'SANTO ANTONIO DO DESCOBERTO/GO - BRASIL', 'SANTO ANTONIO DO DESCOBERTO', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1151, 'SANTO ANTONIO DO RIO VERDE/GO - BRASIL', 'SANTO ANTONIO DO RIO VERDE', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1152, 'SAO DOMINGOS/GO - BRASIL', 'SAO DOMINGOS', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1153, 'SAO FRANCISCO DE GOIAS/GO - BRASIL', 'SAO FRANCISCO DE GOIAS', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1154, 'SAO JOAO DA PARAUNA/GO - BRASIL', 'SAO JOAO DA PARAUNA', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1155, 'SAO JOAO D´ALIANCA/GO - BRASIL', 'SAO JOAO D´ALIANCA', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1156, 'SAO LUIS DE MONTES BELOS/GO - BRASIL', 'SAO LUIS DE MONTES BELOS', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1158, 'SAO MIGUEL DO ARAGUAIA/GO - BRASIL', 'SAO MIGUEL DO ARAGUAIA', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1160, 'SAO PATRICIO/GO - BRASIL', 'SAO PATRICIO', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1161, 'SAO SIMAO/GO - BRASIL', 'SAO SIMAO', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1162, 'SENADOR CANEDO/GO - BRASIL', 'SENADOR CANEDO', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1164, 'SILVANIA/GO - BRASIL', 'SILVANIA', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1165, 'SITIO D´ABADIA/GO - BRASIL', 'SITIO D´ABADIA', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1167, 'TERESINA DE GOIAS/GO - BRASIL', 'TERESINA DE GOIAS', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1169, 'TRES RANCHOS/GO - BRASIL', 'TRES RANCHOS', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1170, 'TRINDADE/GO - BRASIL', 'TRINDADE', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1171, 'TROMBAS/GO - BRASIL', 'TROMBAS', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1173, 'TURVELANDIA/GO - BRASIL', 'TURVELANDIA', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1174, 'UIRAPURU/GO - BRASIL', 'UIRAPURU', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1176, 'URUANA/GO - BRASIL', 'URUANA', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1177, 'URUTAI/GO - BRASIL', 'URUTAI', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1179, 'VARJAO/GO - BRASIL', 'VARJAO', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1180, 'VIANOPOLIS/GO - BRASIL', 'VIANOPOLIS', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1182, 'VILA PROPICIO/GO - BRASIL', 'VILA PROPICIO', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1183, 'ACAILANDIA/MA - BRASIL', 'ACAILANDIA', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1185, 'AFONSO CUNHA/MA - BRASIL', 'AFONSO CUNHA', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1187, 'ALCANTARA/MA - BRASIL', 'ALCANTARA', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1188, 'ALDEIAS ALTAS/MA - BRASIL', 'ALDEIAS ALTAS', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1189, 'ALTAMIRA DO MARANHAO/MA - BRASIL', 'ALTAMIRA DO MARANHAO', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1191, 'ALTO ALEGRE DO PINDARE/MA - BRASIL', 'ALTO ALEGRE DO PINDARE', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1193, 'ALTO BONITO/MA - BRASIL', 'ALTO BONITO', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1194, 'ALTO BRASIL/MA - BRASIL', 'ALTO BRASIL', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1198, 'ALTO PARNAIBA/MA - BRASIL', 'ALTO PARNAIBA', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1200, 'AMARANTE DO MARANHAO/MA - BRASIL', 'AMARANTE DO MARANHAO', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1201, 'ANAJATUBA/MA - BRASIL', 'ANAJATUBA', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1204, 'ANGICAL/MA - BRASIL', 'ANGICAL', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1206, 'ARAGUANA/MA - BRASIL', 'ARAGUANA', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (953, 'AVELINOPOLIS/GO - BRASIL', 'AVELINOPOLIS', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (954, 'BALIZA/GO - BRASIL', 'BALIZA', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (958, 'BOM JESUS/GO - BRASIL', 'BOM JESUS', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (959, 'BONFINOPOLIS/GO - BRASIL', 'BONFINOPOLIS', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (961, 'BRAZABRANTES/GO - BRASIL', 'BRAZABRANTES', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (962, 'BRITANIA/GO - BRASIL', 'BRITANIA', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (966, 'CABECEIRAS/GO - BRASIL', 'CABECEIRAS', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (968, 'CACHOEIRA DE GOIAS/GO - BRASIL', 'CACHOEIRA DE GOIAS', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (970, 'CACU/GO - BRASIL', 'CACU', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (972, 'CALDAS NOVAS/GO - BRASIL', 'CALDAS NOVAS', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (973, 'CALDAZINHA/GO - BRASIL', 'CALDAZINHA', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (976, 'CAMPINORTE/GO - BRASIL', 'CAMPINORTE', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (978, 'CAMPOS BELOS/GO - BRASIL', 'CAMPOS BELOS', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (980, 'CAPELINHA/GO - BRASIL', 'CAPELINHA', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (982, 'CASTELANDIA/GO - BRASIL', 'CASTELANDIA', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (984, 'CATURAI/GO - BRASIL', 'CATURAI', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (986, 'CERES/GO - BRASIL', 'CERES', 9, 28);
commit;
prompt 2900 records committed...
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (989, 'CHOUPANA/GO - BRASIL', 'CHOUPANA', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (990, 'CIDADE OCIDENTAL/GO - BRASIL', 'CIDADE OCIDENTAL', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (994, 'CORREGO DO OURO/GO - BRASIL', 'CORREGO DO OURO', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (996, 'CORUMBAIBA/GO - BRASIL', 'CORUMBAIBA', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (997, 'CRISTALINA/GO - BRASIL', 'CRISTALINA', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (999, 'CRIXAS/GO - BRASIL', 'CRIXAS', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1000, 'CROMINIA/GO - BRASIL', 'CROMINIA', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1001, 'CUMARI/GO - BRASIL', 'CUMARI', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1003, 'DAMOLANDIA/GO - BRASIL', 'DAMOLANDIA', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1004, 'DAVINOPOLIS/GO - BRASIL', 'DAVINOPOLIS', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1005, 'DIORAMA/GO - BRASIL', 'DIORAMA', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1007, 'DOIS IRMAOS/GO - BRASIL', 'DOIS IRMAOS', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1008, 'DOMICIANO RIBEIRO/GO - BRASIL', 'DOMICIANO RIBEIRO', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1009, 'DOVERLANDIA/GO - BRASIL', 'DOVERLANDIA', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1010, 'EDEALINA/GO - BRASIL', 'EDEALINA', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1011, 'EDEIA/GO - BRASIL', 'EDEIA', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1012, 'ESTRELA DO NORTE/GO - BRASIL', 'ESTRELA DO NORTE', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1013, 'FAINA/GO - BRASIL', 'FAINA', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1014, 'FAZENDA NOVA/GO - BRASIL', 'FAZENDA NOVA', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1015, 'FIRMINOPOLIS/GO - BRASIL', 'FIRMINOPOLIS', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1016, 'FLORES DE GOIAS/GO - BRASIL', 'FLORES DE GOIAS', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1017, 'FORMOSA/GO - BRASIL', 'FORMOSA', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1018, 'FORMOSO/GO - BRASIL', 'FORMOSO', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1019, 'GOIANAPOLIS/GO - BRASIL', 'GOIANAPOLIS', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1020, 'GOIANDIRA/GO - BRASIL', 'GOIANDIRA', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1021, 'GOIANESIA/GO - BRASIL', 'GOIANESIA', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1022, 'GOIANIA/GO - BRASIL', 'GOIANIA', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1023, 'GOIANIRA/GO - BRASIL', 'GOIANIRA', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1024, 'GOIAS/GO - BRASIL', 'GOIAS', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1025, 'GOIATUBA/GO - BRASIL', 'GOIATUBA', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1026, 'GOUVELANDIA/GO - BRASIL', 'GOUVELANDIA', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1027, 'GUAPO/GO - BRASIL', 'GUAPO', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1028, 'GUARAITA/GO - BRASIL', 'GUARAITA', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1029, 'GUARANI DE GOIAS/GO - BRASIL', 'GUARANI DE GOIAS', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1030, 'GUARINOS/GO - BRASIL', 'GUARINOS', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1031, 'HEITORAI/GO - BRASIL', 'HEITORAI', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1032, 'HIDROLANDIA/GO - BRASIL', 'HIDROLANDIA', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1033, 'HIDROLINA/GO - BRASIL', 'HIDROLINA', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1034, 'IACIARA/GO - BRASIL', 'IACIARA', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1035, 'INACIOLANDIA/GO - BRASIL', 'INACIOLANDIA', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1036, 'INDIARA/GO - BRASIL', 'INDIARA', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1037, 'INHUMAS/GO - BRASIL', 'INHUMAS', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1038, 'IPAMERI/GO - BRASIL', 'IPAMERI', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1039, 'IPORA/GO - BRASIL', 'IPORA', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1041, 'ITABERAI/GO - BRASIL', 'ITABERAI', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1042, 'ITAGUACU/GO - BRASIL', 'ITAGUACU', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1045, 'ITAJA/GO - BRASIL', 'ITAJA', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1046, 'ITAPACI/GO - BRASIL', 'ITAPACI', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1049, 'ITARUMA/GO - BRASIL', 'ITARUMA', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1051, 'ITUMBIARA/GO - BRASIL', 'ITUMBIARA', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1054, 'JARAGUA/GO - BRASIL', 'JARAGUA', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1055, 'JATAI/GO - BRASIL', 'JATAI', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1059, 'JUSSARA/GO - BRASIL', 'JUSSARA', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1061, 'LAGOA SANTA/GO - BRASIL', 'LAGOA SANTA', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1064, 'LUZIANIA/GO - BRASIL', 'LUZIANIA', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1065, 'MAIRIPOTABA/GO - BRASIL', 'MAIRIPOTABA', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1067, 'MARA ROSA/GO - BRASIL', 'MARA ROSA', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1069, 'MARZAGAO/GO - BRASIL', 'MARZAGAO', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1072, 'MIMOSO DE GOIAS/GO - BRASIL', 'MIMOSO DE GOIAS', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1073, 'MINACU/GO - BRASIL', 'MINACU', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1077, 'MONTES CLAROS DE GOIAS/GO - BRASIL', 'MONTES CLAROS DE GOIAS', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1080, 'MORRINHOS/GO - BRASIL', 'MORRINHOS', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1081, 'MORRO AGUDO DE GOIAS/GO - BRASIL', 'MORRO AGUDO DE GOIAS', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1083, 'MOZARLANDIA/GO - BRASIL', 'MOZARLANDIA', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (823, 'SAO LUIS DO CURU/CE - BRASIL', 'SAO LUIS DO CURU', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (824, 'SENADOR POMPEU/CE - BRASIL', 'SENADOR POMPEU', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (826, 'SOBRAL/CE - BRASIL', 'SOBRAL', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (827, 'SOLONOPOLE/CE - BRASIL', 'SOLONOPOLE', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (830, 'TARRAFAS/CE - BRASIL', 'TARRAFAS', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (833, 'TIANGUA/CE - BRASIL', 'TIANGUA', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (834, 'TRAIRI/CE - BRASIL', 'TRAIRI', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (837, 'UMARI/CE - BRASIL', 'UMARI', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (840, 'URUOCA/CE - BRASIL', 'URUOCA', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (841, 'VARJOTA/CE - BRASIL', 'VARJOTA', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (844, 'BRASILIA/DF - BRASIL', 'BRASILIA', 7, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (846, 'AGUA DOCE DO NORTE/ES - BRASIL', 'AGUA DOCE DO NORTE', 8, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (848, 'ALEGRE/ES - BRASIL', 'ALEGRE', 8, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (851, 'ANCHIETA/ES - BRASIL', 'ANCHIETA', 8, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (852, 'APIACA/ES - BRASIL', 'APIACA', 8, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (855, 'BAIXO GUANDU/ES - BRASIL', 'BAIXO GUANDU', 8, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (857, 'BOA ESPERANCA/ES - BRASIL', 'BOA ESPERANCA', 8, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (861, 'CARIACICA/ES - BRASIL', 'CARIACICA', 8, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (862, 'CASTELO/ES - BRASIL', 'CASTELO', 8, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (863, 'COLATINA/ES - BRASIL', 'COLATINA', 8, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (864, 'CONCEICAO DA BARRA/ES - BRASIL', 'CONCEICAO DA BARRA', 8, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (866, 'DIVINO DE SAO LOURENCO/ES - BRASIL', 'DIVINO DE SAO LOURENCO', 8, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (867, 'DOMINGOS MARTINS/ES - BRASIL', 'DOMINGOS MARTINS', 8, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (868, 'DORES DO RIO PRETO/ES - BRASIL', 'DORES DO RIO PRETO', 8, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (870, 'FUNDAO/ES - BRASIL', 'FUNDAO', 8, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (871, 'GUACUI/ES - BRASIL', 'GUACUI', 8, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (872, 'GUARAPARI/ES - BRASIL', 'GUARAPARI', 8, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (873, 'IBATIBA/ES - BRASIL', 'IBATIBA', 8, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (874, 'IBIRACU/ES - BRASIL', 'IBIRACU', 8, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (875, 'IBITIRAMA/ES - BRASIL', 'IBITIRAMA', 8, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (876, 'ICONHA/ES - BRASIL', 'ICONHA', 8, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (877, 'IRUPI/ES - BRASIL', 'IRUPI', 8, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (878, 'ITAGUACU/ES - BRASIL', 'ITAGUACU', 8, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (879, 'ITAPEMIRIM/ES - BRASIL', 'ITAPEMIRIM', 8, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (880, 'ITARANA/ES - BRASIL', 'ITARANA', 8, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (881, 'IUNA/ES - BRASIL', 'IUNA', 8, 28);
commit;
prompt 3000 records committed...
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (882, 'JAGUARE/ES - BRASIL', 'JAGUARE', 8, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (883, 'JERONIMO MONTEIRO/ES - BRASIL', 'JERONIMO MONTEIRO', 8, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (884, 'JOAO NEIVA/ES - BRASIL', 'JOAO NEIVA', 8, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (885, 'LARANJA DA TERRA/ES - BRASIL', 'LARANJA DA TERRA', 8, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (886, 'LINHARES/ES - BRASIL', 'LINHARES', 8, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (887, 'MANTENOPOLIS/ES - BRASIL', 'MANTENOPOLIS', 8, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (888, 'MARATAIZES/ES - BRASIL', 'MARATAIZES', 8, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (889, 'MARECHAL FLORIANO/ES - BRASIL', 'MARECHAL FLORIANO', 8, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (890, 'MARILANDIA/ES - BRASIL', 'MARILANDIA', 8, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (891, 'MIMOSO DO SUL/ES - BRASIL', 'MIMOSO DO SUL', 8, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (892, 'MONTANHA/ES - BRASIL', 'MONTANHA', 8, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (893, 'MUCURICI/ES - BRASIL', 'MUCURICI', 8, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (894, 'MUNIZ FREIRE/ES - BRASIL', 'MUNIZ FREIRE', 8, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (895, 'MUQUI/ES - BRASIL', 'MUQUI', 8, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (896, 'NOVA VENECIA/ES - BRASIL', 'NOVA VENECIA', 8, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (897, 'PANCAS/ES - BRASIL', 'PANCAS', 8, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (898, 'PEDRO CANARIO/ES - BRASIL', 'PEDRO CANARIO', 8, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (899, 'PINHEIROS/ES - BRASIL', 'PINHEIROS', 8, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (900, 'PIUMA/ES - BRASIL', 'PIUMA', 8, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (901, 'PONTO BELO/ES - BRASIL', 'PONTO BELO', 8, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (902, 'PRESIDENTE KENNEDY/ES - BRASIL', 'PRESIDENTE KENNEDY', 8, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (903, 'RIO BANANAL/ES - BRASIL', 'RIO BANANAL', 8, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (905, 'SANTA LEOPOLDINA/ES - BRASIL', 'SANTA LEOPOLDINA', 8, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (907, 'SANTA TERESA/ES - BRASIL', 'SANTA TERESA', 8, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (908, 'SAO DOMINGOS DO NORTE/ES - BRASIL', 'SAO DOMINGOS DO NORTE', 8, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (912, 'SAO ROQUE DO CANAA/ES - BRASIL', 'SAO ROQUE DO CANAA', 8, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (913, 'SERRA/ES - BRASIL', 'SERRA', 8, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (915, 'VARGEM ALTA/ES - BRASIL', 'VARGEM ALTA', 8, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (917, 'VIANA/ES - BRASIL', 'VIANA', 8, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (919, 'VILA VALERIO/ES - BRASIL', 'VILA VALERIO', 8, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (921, 'VITORIA/ES - BRASIL', 'VITORIA', 8, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (924, 'ACREUNA/GO - BRASIL', 'ACREUNA', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (925, 'ADELANDIA/GO - BRASIL', 'ADELANDIA', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (927, 'AGUA LIMPA/GO - BRASIL', 'AGUA LIMPA', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (930, 'ALMERINDONOPOLIS/GO - BRASIL', 'ALMERINDONOPOLIS', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (931, 'ALOANDIA/GO - BRASIL', 'ALOANDIA', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (935, 'AMARALINA/GO - BRASIL', 'AMARALINA', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (936, 'AMERICANO DO BRASIL/GO - BRASIL', 'AMERICANO DO BRASIL', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (938, 'ANAPOLIS/GO - BRASIL', 'ANAPOLIS', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (939, 'ANHANGUERA/GO - BRASIL', 'ANHANGUERA', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (943, 'APARECIDA FARTURA/GO - BRASIL', 'APARECIDA FARTURA', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (945, 'ARACU/GO - BRASIL', 'ARACU', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (946, 'ARAGARCAS/GO - BRASIL', 'ARAGARCAS', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (948, 'ARAGUAPAZ/GO - BRASIL', 'ARAGUAPAZ', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (678, 'ASSARE/CE - BRASIL', 'ASSARE', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (681, 'BANABUIU/CE - BRASIL', 'BANABUIU', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (682, 'BARBALHA/CE - BRASIL', 'BARBALHA', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (686, 'BATURITE/CE - BRASIL', 'BATURITE', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (688, 'BELA CRUZ/CE - BRASIL', 'BELA CRUZ', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (690, 'BREJO SANTO/CE - BRASIL', 'BREJO SANTO', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (693, 'CANINDE/CE - BRASIL', 'CANINDE', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (695, 'CARIDADE/CE - BRASIL', 'CARIDADE', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (696, 'CARIRE/CE - BRASIL', 'CARIRE', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (699, 'CARNAUBAL/CE - BRASIL', 'CARNAUBAL', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (702, 'CATUNDA/CE - BRASIL', 'CATUNDA', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (704, 'CEDRO/CE - BRASIL', 'CEDRO', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (707, 'CHOROZINHO/CE - BRASIL', 'CHOROZINHO', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (710, 'CRATO/CE - BRASIL', 'CRATO', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (712, 'CRUZ/CE - BRASIL', 'CRUZ', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (715, 'EUSEBIO/CE - BRASIL', 'EUSEBIO', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (717, 'FORQUILHA/CE - BRASIL', 'FORQUILHA', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (718, 'FORTALEZA/CE - BRASIL', 'FORTALEZA', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (720, 'FRECHEIRINHA/CE - BRASIL', 'FRECHEIRINHA', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (723, 'GRANJA/CE - BRASIL', 'GRANJA', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (725, 'GROAIRAS/CE - BRASIL', 'GROAIRAS', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (726, 'GUAIUBA/CE - BRASIL', 'GUAIUBA', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (728, 'GUARAMIRANGA/CE - BRASIL', 'GUARAMIRANGA', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (729, 'HIDROLANDIA/CE - BRASIL', 'HIDROLANDIA', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (730, 'HORIZONTE/CE - BRASIL', 'HORIZONTE', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (731, 'IBARETAMA/CE - BRASIL', 'IBARETAMA', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (732, 'IBIAPINA/CE - BRASIL', 'IBIAPINA', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (733, 'IBICUITINGA/CE - BRASIL', 'IBICUITINGA', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (734, 'ICAPUI/CE - BRASIL', 'ICAPUI', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (735, 'ICO/CE - BRASIL', 'ICO', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (736, 'IGUATU/CE - BRASIL', 'IGUATU', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (737, 'INDEPENDENCIA/CE - BRASIL', 'INDEPENDENCIA', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (738, 'IPAPORANGA/CE - BRASIL', 'IPAPORANGA', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (739, 'IPAUMIRIM/CE - BRASIL', 'IPAUMIRIM', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (740, 'IPU/CE - BRASIL', 'IPU', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (741, 'IPUEIRAS/CE - BRASIL', 'IPUEIRAS', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (742, 'IRACEMA/CE - BRASIL', 'IRACEMA', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (743, 'IRAUCUBA/CE - BRASIL', 'IRAUCUBA', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (744, 'ITAICABA/CE - BRASIL', 'ITAICABA', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (745, 'ITAITINGA/CE - BRASIL', 'ITAITINGA', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (746, 'ITAPAGE/CE - BRASIL', 'ITAPAGE', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (747, 'ITAPIPOCA/CE - BRASIL', 'ITAPIPOCA', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (748, 'ITAPIUNA/CE - BRASIL', 'ITAPIUNA', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (749, 'ITAREMA/CE - BRASIL', 'ITAREMA', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (750, 'ITATIRA/CE - BRASIL', 'ITATIRA', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (751, 'JAGUARETAMA/CE - BRASIL', 'JAGUARETAMA', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (752, 'JAGUARIBARA/CE - BRASIL', 'JAGUARIBARA', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (753, 'JAGUARIBE/CE - BRASIL', 'JAGUARIBE', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (754, 'JAGUARUANA/CE - BRASIL', 'JAGUARUANA', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (755, 'JARDIM/CE - BRASIL', 'JARDIM', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (756, 'JATI/CE - BRASIL', 'JATI', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (757, 'JIJOCA DE JERICOACOARA/CE - BRASIL', 'JIJOCA DE JERICOACOARA', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (758, 'JUAZEIRO DO NORTE/CE - BRASIL', 'JUAZEIRO DO NORTE', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (759, 'JUCAS/CE - BRASIL', 'JUCAS', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (760, 'LAVRAS DA MANGABEIRA/CE - BRASIL', 'LAVRAS DA MANGABEIRA', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (761, 'LIMOEIRO DO NORTE/CE - BRASIL', 'LIMOEIRO DO NORTE', 6, 28);
commit;
prompt 3100 records committed...
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (763, 'MARACANAU/CE - BRASIL', 'MARACANAU', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (764, 'MARANGUAPE/CE - BRASIL', 'MARANGUAPE', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (767, 'MASSAPE/CE - BRASIL', 'MASSAPE', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (769, 'MERUOCA/CE - BRASIL', 'MERUOCA', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (771, 'MILHA/CE - BRASIL', 'MILHA', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (774, 'MOMBACA/CE - BRASIL', 'MOMBACA', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (777, 'MORAUJO/CE - BRASIL', 'MORAUJO', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (778, 'MORRINHOS/CE - BRASIL', 'MORRINHOS', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (780, 'MULUNGU/CE - BRASIL', 'MULUNGU', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (782, 'NOVA RUSSAS/CE - BRASIL', 'NOVA RUSSAS', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (785, 'OROS/CE - BRASIL', 'OROS', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (786, 'PACAJUS/CE - BRASIL', 'PACAJUS', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (789, 'PACUJA/CE - BRASIL', 'PACUJA', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (791, 'PALMACIA/CE - BRASIL', 'PALMACIA', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (794, 'PARAMBU/CE - BRASIL', 'PARAMBU', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (797, 'PENAFORTE/CE - BRASIL', 'PENAFORTE', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (798, 'PENTECOSTE/CE - BRASIL', 'PENTECOSTE', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (802, 'PIRES FERREIRA/CE - BRASIL', 'PIRES FERREIRA', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (803, 'PORANGA/CE - BRASIL', 'PORANGA', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (806, 'POTIRETAMA/CE - BRASIL', 'POTIRETAMA', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (808, 'QUIXADA/CE - BRASIL', 'QUIXADA', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (811, 'QUIXERE/CE - BRASIL', 'QUIXERE', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (812, 'REDENCAO/CE - BRASIL', 'REDENCAO', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (815, 'SABOEIRO/CE - BRASIL', 'SABOEIRO', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (816, 'SALITRE/CE - BRASIL', 'SALITRE', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (820, 'SAO BENEDITO/CE - BRASIL', 'SAO BENEDITO', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (548, 'PLANALTINO/BA - BRASIL', 'PLANALTINO', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (550, 'POCOES/BA - BRASIL', 'POCOES', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (553, 'PORTO SEGURO/BA - BRASIL', 'PORTO SEGURO', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (554, 'POTIRAGUA/BA - BRASIL', 'POTIRAGUA', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (559, 'QUEIMADAS/BA - BRASIL', 'QUEIMADAS', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (560, 'QUIJINGUE/BA - BRASIL', 'QUIJINGUE', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (561, 'QUIXABEIRA/BA - BRASIL', 'QUIXABEIRA', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (563, 'REMANSO/BA - BRASIL', 'REMANSO', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (566, 'RIACHAO DO JACUIPE/BA - BRASIL', 'RIACHAO DO JACUIPE', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (567, 'RIACHO DE SANTANA/BA - BRASIL', 'RIACHO DE SANTANA', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (569, 'RIBEIRA DO POMBAL/BA - BRASIL', 'RIBEIRA DO POMBAL', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (572, 'RIO DO ANTONIO/BA - BRASIL', 'RIO DO ANTONIO', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (574, 'RIO REAL/BA - BRASIL', 'RIO REAL', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (577, 'SALINAS DA MARGARIDA/BA - BRASIL', 'SALINAS DA MARGARIDA', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (579, 'SANTA BARBARA/BA - BRASIL', 'SANTA BARBARA', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (582, 'SANTA CRUZ DA VITORIA/BA - BRASIL', 'SANTA CRUZ DA VITORIA', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (583, 'SANTA INES/BA - BRASIL', 'SANTA INES', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (584, 'SANTA LUZIA/BA - BRASIL', 'SANTA LUZIA', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (585, 'SANTA MARIA DA VITORIA/BA - BRASIL', 'SANTA MARIA DA VITORIA', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (586, 'SANTA RITA DE CASSIA/BA - BRASIL', 'SANTA RITA DE CASSIA', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (587, 'SANTA TERESINHA/BA - BRASIL', 'SANTA TERESINHA', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (588, 'SANTALUZ/BA - BRASIL', 'SANTALUZ', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (589, 'SANTANA/BA - BRASIL', 'SANTANA', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (590, 'SANTANOPOLIS/BA - BRASIL', 'SANTANOPOLIS', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (591, 'SANTO AMARO/BA - BRASIL', 'SANTO AMARO', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (592, 'SANTO ANTONIO DE JESUS/BA - BRASIL', 'SANTO ANTONIO DE JESUS', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (593, 'SANTO ESTEVAO/BA - BRASIL', 'SANTO ESTEVAO', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (594, 'SAO DESIDERIO/BA - BRASIL', 'SAO DESIDERIO', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (595, 'SAO DOMINGOS/BA - BRASIL', 'SAO DOMINGOS', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (596, 'SAO FELIPE/BA - BRASIL', 'SAO FELIPE', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (597, 'SAO FELIX/BA - BRASIL', 'SAO FELIX', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (598, 'SAO FELIX DO CORIBE/BA - BRASIL', 'SAO FELIX DO CORIBE', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (599, 'SAO FRANCISCO DO CONDE/BA - BRASIL', 'SAO FRANCISCO DO CONDE', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (600, 'SAO GABRIEL/BA - BRASIL', 'SAO GABRIEL', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (601, 'SAO GONCALO DOS CAMPOS/BA - BRASIL', 'SAO GONCALO DOS CAMPOS', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (602, 'SAO JOSE DA VITORIA/BA - BRASIL', 'SAO JOSE DA VITORIA', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (603, 'SAO JOSE DO JACUIPE/BA - BRASIL', 'SAO JOSE DO JACUIPE', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (604, 'SAO MIGUEL DAS MATAS/BA - BRASIL', 'SAO MIGUEL DAS MATAS', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (605, 'SAO SEBASTIAO DO PASSE/BA - BRASIL', 'SAO SEBASTIAO DO PASSE', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (606, 'SAPEACU/BA - BRASIL', 'SAPEACU', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (608, 'SAUBARA/BA - BRASIL', 'SAUBARA', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (609, 'SAUDE/BA - BRASIL', 'SAUDE', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (610, 'SEABRA/BA - BRASIL', 'SEABRA', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (612, 'SENHOR DO BONFIM/BA - BRASIL', 'SENHOR DO BONFIM', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (613, 'SENTO SE/BA - BRASIL', 'SENTO SE', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (615, 'SERRA DOURADA/BA - BRASIL', 'SERRA DOURADA', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (616, 'SERRA PRETA/BA - BRASIL', 'SERRA PRETA', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (617, 'SERRINHA/BA - BRASIL', 'SERRINHA', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (619, 'SIMOES FILHO/BA - BRASIL', 'SIMOES FILHO', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (621, 'SITIO DO QUINTO/BA - BRASIL', 'SITIO DO QUINTO', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (625, 'TANHACU/BA - BRASIL', 'TANHACU', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (626, 'TANQUE NOVO/BA - BRASIL', 'TANQUE NOVO', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (628, 'TAPEROA/BA - BRASIL', 'TAPEROA', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (629, 'TAPIRAMUTA/BA - BRASIL', 'TAPIRAMUTA', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (632, 'TEOFILANDIA/BA - BRASIL', 'TEOFILANDIA', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (634, 'TERRA NOVA/BA - BRASIL', 'TERRA NOVA', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (636, 'TUCANO/BA - BRASIL', 'TUCANO', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (638, 'UBAIRA/BA - BRASIL', 'UBAIRA', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (641, 'UIBAI/BA - BRASIL', 'UIBAI', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (642, 'UMBURANAS/BA - BRASIL', 'UMBURANAS', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (646, 'UTINGA/BA - BRASIL', 'UTINGA', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (649, 'VARZEA DA ROCA/BA - BRASIL', 'VARZEA DA ROCA', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (651, 'VARZEA NOVA/BA - BRASIL', 'VARZEA NOVA', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (654, 'VEREDA/BA - BRASIL', 'VEREDA', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (656, 'WAGNER/BA - BRASIL', 'WAGNER', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (658, 'WENCESLAU GUIMARAES/BA - BRASIL', 'WENCESLAU GUIMARAES', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (660, 'ABAIARA/CE - BRASIL', 'ABAIARA', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (662, 'ACARAU/CE - BRASIL', 'ACARAU', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (665, 'ALCANTARAS/CE - BRASIL', 'ALCANTARAS', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (667, 'ALTO SANTO/CE - BRASIL', 'ALTO SANTO', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (671, 'AQUIRAZ/CE - BRASIL', 'AQUIRAZ', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (672, 'ARACATI/CE - BRASIL', 'ARACATI', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (674, 'ARARENDA/CE - BRASIL', 'ARARENDA', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (677, 'ARNEIROZ/CE - BRASIL', 'ARNEIROZ', 6, 28);
commit;
prompt 3200 records committed...
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (407, 'ILHEUS/BA - BRASIL', 'ILHEUS', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (410, 'IPIAU/BA - BRASIL', 'IPIAU', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (412, 'IPUPIARA/BA - BRASIL', 'IPUPIARA', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (415, 'IRAQUARA/BA - BRASIL', 'IRAQUARA', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (418, 'ITABELA/BA - BRASIL', 'ITABELA', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (420, 'ITABUNA/BA - BRASIL', 'ITABUNA', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (423, 'ITAGI/BA - BRASIL', 'ITAGI', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (426, 'ITAGUACU DA BAHIA/BA - BRASIL', 'ITAGUACU DA BAHIA', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (428, 'ITAJUIPE/BA - BRASIL', 'ITAJUIPE', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (430, 'ITAMARI/BA - BRASIL', 'ITAMARI', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (432, 'ITANAGRA/BA - BRASIL', 'ITANAGRA', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (435, 'ITAPE/BA - BRASIL', 'ITAPE', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (437, 'ITAPETINGA/BA - BRASIL', 'ITAPETINGA', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (440, 'ITAQUARA/BA - BRASIL', 'ITAQUARA', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (441, 'ITARANTIM/BA - BRASIL', 'ITARANTIM', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (443, 'ITIRUCU/BA - BRASIL', 'ITIRUCU', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (444, 'ITIUBA/BA - BRASIL', 'ITIUBA', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (445, 'ITORORO/BA - BRASIL', 'ITORORO', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (446, 'ITUACU/BA - BRASIL', 'ITUACU', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (447, 'ITUBERA/BA - BRASIL', 'ITUBERA', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (448, 'IUIU/BA - BRASIL', 'IUIU', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (449, 'JABORANDI/BA - BRASIL', 'JABORANDI', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (450, 'JACARACI/BA - BRASIL', 'JACARACI', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (451, 'JACOBINA/BA - BRASIL', 'JACOBINA', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (452, 'JAGUAQUARA/BA - BRASIL', 'JAGUAQUARA', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (453, 'JAGUARARI/BA - BRASIL', 'JAGUARARI', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (454, 'JAGUARIPE/BA - BRASIL', 'JAGUARIPE', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (455, 'JANDAIRA/BA - BRASIL', 'JANDAIRA', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (456, 'JEQUIE/BA - BRASIL', 'JEQUIE', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (457, 'JEREMOABO/BA - BRASIL', 'JEREMOABO', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (458, 'JIQUIRICA/BA - BRASIL', 'JIQUIRICA', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (459, 'JITAUNA/BA - BRASIL', 'JITAUNA', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (460, 'JOAO DOURADO/BA - BRASIL', 'JOAO DOURADO', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (461, 'JUAZEIRO/BA - BRASIL', 'JUAZEIRO', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (462, 'JUCURUCU/BA - BRASIL', 'JUCURUCU', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (463, 'JUSSARA/BA - BRASIL', 'JUSSARA', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (464, 'JUSSARI/BA - BRASIL', 'JUSSARI', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (465, 'JUSSIAPE/BA - BRASIL', 'JUSSIAPE', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (466, 'LAFAIETE COUTINHO/BA - BRASIL', 'LAFAIETE COUTINHO', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (467, 'LAGOA REAL/BA - BRASIL', 'LAGOA REAL', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (468, 'LAJE/BA - BRASIL', 'LAJE', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (469, 'LAJEDAO/BA - BRASIL', 'LAJEDAO', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (470, 'LAJEDINHO/BA - BRASIL', 'LAJEDINHO', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (471, 'LAJEDO DO TABOCAL/BA - BRASIL', 'LAJEDO DO TABOCAL', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (472, 'LAMARAO/BA - BRASIL', 'LAMARAO', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (473, 'LAPAO/BA - BRASIL', 'LAPAO', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (474, 'LAURO DE FREITAS/BA - BRASIL', 'LAURO DE FREITAS', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (475, 'LENCOIS/BA - BRASIL', 'LENCOIS', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (476, 'LICINIO DE ALMEIDA/BA - BRASIL', 'LICINIO DE ALMEIDA', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (477, 'LIVRAMENTO DO BRUMADO/BA - BRASIL', 'LIVRAMENTO DO BRUMADO', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (478, 'MACAJUBA/BA - BRASIL', 'MACAJUBA', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (480, 'MACAUBAS/BA - BRASIL', 'MACAUBAS', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (481, 'MACURURE/BA - BRASIL', 'MACURURE', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (483, 'MAETINGA/BA - BRASIL', 'MAETINGA', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (484, 'MAIQUINIQUE/BA - BRASIL', 'MAIQUINIQUE', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (486, 'MALHADA/BA - BRASIL', 'MALHADA', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (488, 'MANOEL VITORINO/BA - BRASIL', 'MANOEL VITORINO', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (490, 'MARACAS/BA - BRASIL', 'MARACAS', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (492, 'MARAU/BA - BRASIL', 'MARAU', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (495, 'MATA DE SAO JOAO/BA - BRASIL', 'MATA DE SAO JOAO', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (498, 'MIGUEL CALMON/BA - BRASIL', 'MIGUEL CALMON', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (499, 'MILAGRES/BA - BRASIL', 'MILAGRES', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (503, 'MORPARA/BA - BRASIL', 'MORPARA', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (506, 'MUCUGE/BA - BRASIL', 'MUCUGE', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (507, 'MUCURI/BA - BRASIL', 'MUCURI', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (509, 'MUNDO NOVO/BA - BRASIL', 'MUNDO NOVO', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (512, 'MURITIBA/BA - BRASIL', 'MURITIBA', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (513, 'MUTUIPE/BA - BRASIL', 'MUTUIPE', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (514, 'NAZARE/BA - BRASIL', 'NAZARE', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (517, 'NOVA CANAA/BA - BRASIL', 'NOVA CANAA', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (519, 'NOVA IBIA/BA - BRASIL', 'NOVA IBIA', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (520, 'NOVA ITARANA/BA - BRASIL', 'NOVA ITARANA', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (523, 'NOVA VICOSA/BA - BRASIL', 'NOVA VICOSA', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (525, 'NOVO TRIUNFO/BA - BRASIL', 'NOVO TRIUNFO', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (528, 'OURICANGAS/BA - BRASIL', 'OURICANGAS', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (529, 'OUROLANDIA/BA - BRASIL', 'OUROLANDIA', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (532, 'PARAMIRIM/BA - BRASIL', 'PARAMIRIM', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (533, 'PARATINGA/BA - BRASIL', 'PARATINGA', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (536, 'PAULO AFONSO/BA - BRASIL', 'PAULO AFONSO', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (538, 'PEDRAO/BA - BRASIL', 'PEDRAO', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (542, 'PINDAI/BA - BRASIL', 'PINDAI', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (543, 'PINDOBACU/BA - BRASIL', 'PINDOBACU', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (544, 'PINTADAS/BA - BRASIL', 'PINTADAS', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (547, 'PIRITIBA/BA - BRASIL', 'PIRITIBA', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (273, 'BAIANOPOLIS/BA - BRASIL', 'BAIANOPOLIS', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (274, 'BAIXA GRANDE/BA - BRASIL', 'BAIXA GRANDE', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (278, 'BARRA DO CHOCA/BA - BRASIL', 'BARRA DO CHOCA', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (280, 'BARRA DO ROCHA/BA - BRASIL', 'BARRA DO ROCHA', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (282, 'BARRO ALTO/BA - BRASIL', 'BARRO ALTO', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (284, 'BELMONTE/BA - BRASIL', 'BELMONTE', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (287, 'BOA NOVA/BA - BRASIL', 'BOA NOVA', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (289, 'BOM JESUS DA LAPA/BA - BRASIL', 'BOM JESUS DA LAPA', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (292, 'BONITO/BA - BRASIL', 'BONITO', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (294, 'BOTUPORA/BA - BRASIL', 'BOTUPORA', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (295, 'BREJOES/BA - BRASIL', 'BREJOES', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (296, 'BREJOLANDIA/BA - BRASIL', 'BREJOLANDIA', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (297, 'BROTAS DE MACAUBAS/BA - BRASIL', 'BROTAS DE MACAUBAS', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (298, 'BRUMADO/BA - BRASIL', 'BRUMADO', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (299, 'BUERAREMA/BA - BRASIL', 'BUERAREMA', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (300, 'BURITIRAMA/BA - BRASIL', 'BURITIRAMA', 5, 28);
commit;
prompt 3300 records committed...
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (301, 'CAATIBA/BA - BRASIL', 'CAATIBA', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (302, 'CABACEIRAS DO PARAGUACU/BA - BRASIL', 'CABACEIRAS DO PARAGUACU', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (303, 'CACHOEIRA/BA - BRASIL', 'CACHOEIRA', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (304, 'CACULE/BA - BRASIL', 'CACULE', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (305, 'CAEM/BA - BRASIL', 'CAEM', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (306, 'CAETANOS/BA - BRASIL', 'CAETANOS', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (307, 'CAETITE/BA - BRASIL', 'CAETITE', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (308, 'CAFARNAUM/BA - BRASIL', 'CAFARNAUM', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (309, 'CAIRU/BA - BRASIL', 'CAIRU', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (310, 'CALDEIRAO GRANDE/BA - BRASIL', 'CALDEIRAO GRANDE', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (311, 'CAMACAN/BA - BRASIL', 'CAMACAN', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (312, 'CAMACARI/BA - BRASIL', 'CAMACARI', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (313, 'CAMAMU/BA - BRASIL', 'CAMAMU', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (314, 'CAMPO ALEGRE DE LOURDES/BA - BRASIL', 'CAMPO ALEGRE DE LOURDES', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (315, 'CAMPO FORMOSO/BA - BRASIL', 'CAMPO FORMOSO', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (316, 'CANAL/BA - BRASIL', 'CANAL', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (317, 'CANAPOLIS/BA - BRASIL', 'CANAPOLIS', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (318, 'CANARANA/BA - BRASIL', 'CANARANA', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (319, 'CANAVIEIRAS/BA - BRASIL', 'CANAVIEIRAS', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (320, 'CANDEAL/BA - BRASIL', 'CANDEAL', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (321, 'CANDEIAS/BA - BRASIL', 'CANDEIAS', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (322, 'CANDIBA/BA - BRASIL', 'CANDIBA', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (323, 'CANDIDO SALES/BA - BRASIL', 'CANDIDO SALES', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (324, 'CANSANCAO/BA - BRASIL', 'CANSANCAO', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (325, 'CANUDOS/BA - BRASIL', 'CANUDOS', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (326, 'CAPELA DO ALTO ALEGRE/BA - BRASIL', 'CAPELA DO ALTO ALEGRE', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (327, 'CAPIM GROSSO/BA - BRASIL', 'CAPIM GROSSO', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (328, 'CARAIBAS/BA - BRASIL', 'CARAIBAS', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (330, 'CARDEAL DA SILVA/BA - BRASIL', 'CARDEAL DA SILVA', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (331, 'CARINHANHA/BA - BRASIL', 'CARINHANHA', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (333, 'CASTRO ALVES/BA - BRASIL', 'CASTRO ALVES', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (334, 'CATOLANDIA/BA - BRASIL', 'CATOLANDIA', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (336, 'CATURAMA/BA - BRASIL', 'CATURAMA', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (339, 'CICERO DANTAS/BA - BRASIL', 'CICERO DANTAS', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (340, 'CIPO/BA - BRASIL', 'CIPO', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (344, 'CONCEICAO DO ALMEIDA/BA - BRASIL', 'CONCEICAO DO ALMEIDA', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (347, 'CONDE/BA - BRASIL', 'CONDE', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (348, 'CONDEUBA/BA - BRASIL', 'CONDEUBA', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (350, 'CORACAO DE MARIA/BA - BRASIL', 'CORACAO DE MARIA', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (351, 'CORDEIROS/BA - BRASIL', 'CORDEIROS', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (354, 'CORRENTINA/BA - BRASIL', 'CORRENTINA', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (355, 'COTEGIPE/BA - BRASIL', 'COTEGIPE', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (358, 'CRISTOPOLIS/BA - BRASIL', 'CRISTOPOLIS', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (360, 'CURACA/BA - BRASIL', 'CURACA', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (363, 'DOM BASILIO/BA - BRASIL', 'DOM BASILIO', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (365, 'ELISIO MEDRADO/BA - BRASIL', 'ELISIO MEDRADO', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (368, 'ERICO CARDOSO/BA - BRASIL', 'ERICO CARDOSO', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (369, 'ESPLANADA/BA - BRASIL', 'ESPLANADA', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (371, 'EUNAPOLIS/BA - BRASIL', 'EUNAPOLIS', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (374, 'FEIRA DE SANTANA/BA - BRASIL', 'FEIRA DE SANTANA', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (377, 'FLORESTA AZUL/BA - BRASIL', 'FLORESTA AZUL', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (379, 'GANDU/BA - BRASIL', 'GANDU', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (381, 'GENTIO DO OURO/BA - BRASIL', 'GENTIO DO OURO', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (382, 'GLORIA/BA - BRASIL', 'GLORIA', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (386, 'GUANAMBI/BA - BRASIL', 'GUANAMBI', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (387, 'GUARATINGA/BA - BRASIL', 'GUARATINGA', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (389, 'IACU/BA - BRASIL', 'IACU', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (391, 'IBICARAI/BA - BRASIL', 'IBICARAI', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (394, 'IBIPEBA/BA - BRASIL', 'IBIPEBA', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (396, 'IBIQUERA/BA - BRASIL', 'IBIQUERA', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (399, 'IBIRATAIA/BA - BRASIL', 'IBIRATAIA', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (400, 'IBITIARA/BA - BRASIL', 'IBITIARA', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (403, 'ICHU/BA - BRASIL', 'ICHU', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (405, 'IGRAPIUNA/BA - BRASIL', 'IGRAPIUNA', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (135, 'VITORIA DO JARI/AP - BRASIL', 'VITORIA DO JARI', 3, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (137, 'AMATURA/AM - BRASIL', 'AMATURA', 4, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (138, 'ANAMA/AM - BRASIL', 'ANAMA', 4, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (140, 'APUI/AM - BRASIL', 'APUI', 4, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (143, 'BARCELOS/AM - BRASIL', 'BARCELOS', 4, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (145, 'BELA VISTA/AM - BRASIL', 'BELA VISTA', 4, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (148, 'BERURI/AM - BRASIL', 'BERURI', 4, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (150, 'BITENCOURT/AM - BRASIL', 'BITENCOURT', 4, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (152, 'BOCA DO ACRE/AM - BRASIL', 'BOCA DO ACRE', 4, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (153, 'BOM CAMINHO/AM - BRASIL', 'BOM CAMINHO', 4, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (154, 'BOM FIM/AM - BRASIL', 'BOM FIM', 4, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (155, 'BORBA/AM - BRASIL', 'BORBA', 4, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (156, 'CAAPIRANGA/AM - BRASIL', 'CAAPIRANGA', 4, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (157, 'CAIAMBE/AM - BRASIL', 'CAIAMBE', 4, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (158, 'CAMPO ALEGRE/AM - BRASIL', 'CAMPO ALEGRE', 4, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (159, 'CAMPO NOVO/AM - BRASIL', 'CAMPO NOVO', 4, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (160, 'CANARIA/AM - BRASIL', 'CANARIA', 4, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (161, 'CANIMARU/AM - BRASIL', 'CANIMARU', 4, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (162, 'CANTO ESCURO/AM - BRASIL', 'CANTO ESCURO', 4, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (163, 'CANUTAMA/AM - BRASIL', 'CANUTAMA', 4, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (164, 'CARAUARI/AM - BRASIL', 'CARAUARI', 4, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (165, 'CAREIRO/AM - BRASIL', 'CAREIRO', 4, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (166, 'CAREIRO DA VARZEA/AM - BRASIL', 'CAREIRO DA VARZEA', 4, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (167, 'CEU DO MAPIA/AM - BRASIL', 'CEU DO MAPIA', 4, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (168, 'COARI/AM - BRASIL', 'COARI', 4, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (169, 'CODAJAS/AM - BRASIL', 'CODAJAS', 4, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (170, 'COPATANA/AM - BRASIL', 'COPATANA', 4, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (171, 'CUCUI/AM - BRASIL', 'CUCUI', 4, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (172, 'CUIUANA/AM - BRASIL', 'CUIUANA', 4, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (173, 'EIRUNEPE/AM - BRASIL', 'EIRUNEPE', 4, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (174, 'ENVIRA/AM - BRASIL', 'ENVIRA', 4, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (175, 'ESTIRAO DO EQUADOR/AM - BRASIL', 'ESTIRAO DO EQUADOR', 4, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (176, 'FEIJOAL/AM - BRASIL', 'FEIJOAL', 4, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (177, 'FILADELFIA/AM - BRASIL', 'FILADELFIA', 4, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (178, 'FONTE BOA/AM - BRASIL', 'FONTE BOA', 4, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (179, 'GUAJARA/AM - BRASIL', 'GUAJARA', 4, 28);
commit;
prompt 3400 records committed...
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (180, 'HUMAITA/AM - BRASIL', 'HUMAITA', 4, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (181, 'IAUARETE/AM - BRASIL', 'IAUARETE', 4, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (182, 'IPIRANGA/AM - BRASIL', 'IPIRANGA', 4, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (183, 'IPIXUNA/AM - BRASIL', 'IPIXUNA', 4, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (184, 'IRANDUBA/AM - BRASIL', 'IRANDUBA', 4, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (186, 'ITAMARATI/AM - BRASIL', 'ITAMARATI', 4, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (187, 'ITAPIRANGA/AM - BRASIL', 'ITAPIRANGA', 4, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (188, 'JAPURA/AM - BRASIL', 'JAPURA', 4, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (190, 'JURUA/AM - BRASIL', 'JURUA', 4, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (192, 'LABREA/AM - BRASIL', 'LABREA', 4, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (194, 'MANACAPURU/AM - BRASIL', 'MANACAPURU', 4, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (195, 'MANAQUIRI/AM - BRASIL', 'MANAQUIRI', 4, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (197, 'MANICORE/AM - BRASIL', 'MANICORE', 4, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (199, 'MATUCA/AM - BRASIL', 'MATUCA', 4, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (200, 'MAUES/AM - BRASIL', 'MAUES', 4, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (202, 'MOURA/AM - BRASIL', 'MOURA', 4, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (204, 'NOVA ITALIA/AM - BRASIL', 'NOVA ITALIA', 4, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (207, 'NOVO ARIPUANA/AM - BRASIL', 'NOVO ARIPUANA', 4, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (209, 'PARINTINS/AM - BRASIL', 'PARINTINS', 4, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (211, 'PERNAMBUCO/AM - BRASIL', 'PERNAMBUCO', 4, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (213, 'PORTO ESPIRITUAL/AM - BRASIL', 'PORTO ESPIRITUAL', 4, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (217, 'RIO PRETO DA EVA/AM - BRASIL', 'RIO PRETO DA EVA', 4, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (220, 'SANTA RITA DO WEIL/AM - BRASIL', 'SANTA RITA DO WEIL', 4, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (221, 'SANTO ANTONIO/AM - BRASIL', 'SANTO ANTONIO', 4, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (223, 'SANTO ISIDORO/AM - BRASIL', 'SANTO ISIDORO', 4, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (226, 'SAO GABRIEL DA CACHOEIRA/AM - BRASIL', 'SAO GABRIEL DA CACHOEIRA', 4, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (227, 'SAO JOAQUIM/AM - BRASIL', 'SAO JOAQUIM', 4, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (229, 'SAO LEOPOLDO/AM - BRASIL', 'SAO LEOPOLDO', 4, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (232, 'SAO SEBASTIAO DO UATUMA/AM - BRASIL', 'SAO SEBASTIAO DO UATUMA', 4, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (233, 'SAPOTAL/AM - BRASIL', 'SAPOTAL', 4, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (236, 'TABATINGA/AM - BRASIL', 'TABATINGA', 4, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (238, 'TEFE/AM - BRASIL', 'TEFE', 4, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (239, 'TONANTINS/AM - BRASIL', 'TONANTINS', 4, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (243, 'VENDAVAL/AM - BRASIL', 'VENDAVAL', 4, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (245, 'ABARE/BA - BRASIL', 'ABARE', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (247, 'ADUSTINA/BA - BRASIL', 'ADUSTINA', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (250, 'ALAGOINHAS/BA - BRASIL', 'ALAGOINHAS', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (252, 'ALMADINA/BA - BRASIL', 'ALMADINA', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (255, 'AMERICA DOURADA/BA - BRASIL', 'AMERICA DOURADA', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (256, 'ANAGE/BA - BRASIL', 'ANAGE', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (259, 'ANGICAL/BA - BRASIL', 'ANGICAL', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (261, 'ANTAS/BA - BRASIL', 'ANTAS', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (264, 'APORA/BA - BRASIL', 'APORA', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (265, 'APUAREMA/BA - BRASIL', 'APUAREMA', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (267, 'ARACATU/BA - BRASIL', 'ARACATU', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (270, 'ARATACA/BA - BRASIL', 'ARATACA', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (98, 'PORTO DE PEDRAS/AL - BRASIL', 'PORTO DE PEDRAS', 2, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (100, 'QUEBRANGULO/AL - BRASIL', 'QUEBRANGULO', 2, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (101, 'RIO LARGO/AL - BRASIL', 'RIO LARGO', 2, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (102, 'ROTEIRO/AL - BRASIL', 'ROTEIRO', 2, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (104, 'SANTANA DO IPANEMA/AL - BRASIL', 'SANTANA DO IPANEMA', 2, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (106, 'SAO BRAS/AL - BRASIL', 'SAO BRAS', 2, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (107, 'SAO JOSE DA LAJE/AL - BRASIL', 'SAO JOSE DA LAJE', 2, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (109, 'SAO LUIS DO QUITUNDE/AL - BRASIL', 'SAO LUIS DO QUITUNDE', 2, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (110, 'SAO MIGUEL DOS CAMPOS/AL - BRASIL', 'SAO MIGUEL DOS CAMPOS', 2, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (111, 'SAO MIGUEL DOS MILAGRES/AL - BRASIL', 'SAO MIGUEL DOS MILAGRES', 2, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (112, 'SAO SEBASTIAO/AL - BRASIL', 'SAO SEBASTIAO', 2, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (113, 'SATUBA/AL - BRASIL', 'SATUBA', 2, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (114, 'SENADOR RUI PALMEIRA/AL - BRASIL', 'SENADOR RUI PALMEIRA', 2, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (115, 'TANQUE D´ARCA/AL - BRASIL', 'TANQUE D´ARCA', 2, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (116, 'TAQUARANA/AL - BRASIL', 'TAQUARANA', 2, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (117, 'TEOTONIO VILELA/AL - BRASIL', 'TEOTONIO VILELA', 2, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (118, 'TRAIPU/AL - BRASIL', 'TRAIPU', 2, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (119, 'UNIAO DOS PALMARES/AL - BRASIL', 'UNIAO DOS PALMARES', 2, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (120, 'VICOSA/AL - BRASIL', 'VICOSA', 2, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (121, 'AMAPA/AP - BRASIL', 'AMAPA', 3, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (122, 'CALCOENE/AP - BRASIL', 'CALCOENE', 3, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (123, 'CUTIAS/AP - BRASIL', 'CUTIAS', 3, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (124, 'FERREIRA GOMES/AP - BRASIL', 'FERREIRA GOMES', 3, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (125, 'ITAUBAL/AP - BRASIL', 'ITAUBAL', 3, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (126, 'LARANJAL DO JARI/AP - BRASIL', 'LARANJAL DO JARI', 3, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (127, 'MACAPA/AP - BRASIL', 'MACAPA', 3, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (128, 'MAZAGAO/AP - BRASIL', 'MAZAGAO', 3, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1, 'ACRELANDIA/AC - BRASIL', 'ACRELANDIA', 1, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2, 'ASSIS BRASIL/AC - BRASIL', 'ASSIS BRASIL', 1, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3, 'BRASILEIA/AC - BRASIL', 'BRASILEIA', 1, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4, 'BUJARI/AC - BRASIL', 'BUJARI', 1, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5, 'CAPIXABA/AC - BRASIL', 'CAPIXABA', 1, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (6, 'CRUZEIRO DO SUL/AC - BRASIL', 'CRUZEIRO DO SUL', 1, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (7, 'EPITACIOLANDIA/AC - BRASIL', 'EPITACIOLANDIA', 1, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (8, 'FEIJO/AC - BRASIL', 'FEIJO', 1, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (9, 'JORDAO/AC - BRASIL', 'JORDAO', 1, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (10, 'MANCIO LIMA/AC - BRASIL', 'MANCIO LIMA', 1, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (11, 'MANOEL URBANO/AC - BRASIL', 'MANOEL URBANO', 1, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (13, 'PLACIDO DE CASTRO/AC - BRASIL', 'PLACIDO DE CASTRO', 1, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (14, 'RIO BRANCO/AC - BRASIL', 'RIO BRANCO', 1, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (15, 'RODRIGUES ALVES/AC - BRASIL', 'RODRIGUES ALVES', 1, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (16, 'SANTA ROSA DO PURUS/AC - BRASIL', 'SANTA ROSA DO PURUS', 1, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (19, 'TARAUACA/AC - BRASIL', 'TARAUACA', 1, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (20, 'XAPURI/AC - BRASIL', 'XAPURI', 1, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (21, 'AGUA BRANCA/AL - BRASIL', 'AGUA BRANCA', 2, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (26, 'BARRA DE SAO MIGUEL/AL - BRASIL', 'BARRA DE SAO MIGUEL', 2, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (27, 'BATALHA/AL - BRASIL', 'BATALHA', 2, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (29, 'BELO MONTE/AL - BRASIL', 'BELO MONTE', 2, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (32, 'CACIMBINHAS/AL - BRASIL', 'CACIMBINHAS', 2, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (34, 'CAMPO ALEGRE/AL - BRASIL', 'CAMPO ALEGRE', 2, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (37, 'CAPELA/AL - BRASIL', 'CAPELA', 2, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (39, 'CHA PRETA/AL - BRASIL', 'CHA PRETA', 2, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (43, 'CORURIPE/AL - BRASIL', 'CORURIPE', 2, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (44, 'CRAIBAS/AL - BRASIL', 'CRAIBAS', 2, 28);
commit;
prompt 3500 records committed...
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (46, 'DOIS RIACHOS/AL - BRASIL', 'DOIS RIACHOS', 2, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (49, 'FELIZ DESERTO/AL - BRASIL', 'FELIZ DESERTO', 2, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (51, 'GIRAU DO PONCIANO/AL - BRASIL', 'GIRAU DO PONCIANO', 2, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (53, 'IGACI/AL - BRASIL', 'IGACI', 2, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (57, 'JACUIPE/AL - BRASIL', 'JACUIPE', 2, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (58, 'JAPARATINGA/AL - BRASIL', 'JAPARATINGA', 2, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (59, 'JARAMATAIA/AL - BRASIL', 'JARAMATAIA', 2, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (62, 'JUNQUEIRO/AL - BRASIL', 'JUNQUEIRO', 2, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (65, 'MACEIO/AL - BRASIL', 'MACEIO', 2, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (67, 'MAR VERMELHO/AL - BRASIL', 'MAR VERMELHO', 2, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (68, 'MARAGOGI/AL - BRASIL', 'MARAGOGI', 2, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (70, 'MARECHAL DEODORO/AL - BRASIL', 'MARECHAL DEODORO', 2, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (74, 'MESSIAS/AL - BRASIL', 'MESSIAS', 2, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (75, 'MINADOR DO NEGRAO/AL - BRASIL', 'MINADOR DO NEGRAO', 2, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (78, 'NOVO LINO/AL - BRASIL', 'NOVO LINO', 2, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (82, 'OLIVENCA/AL - BRASIL', 'OLIVENCA', 2, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (83, 'OURO BRANCO/AL - BRASIL', 'OURO BRANCO', 2, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (84, 'PALESTINA/AL - BRASIL', 'PALESTINA', 2, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (86, 'PAO DE ACUCAR/AL - BRASIL', 'PAO DE ACUCAR', 2, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (88, 'PARIPUEIRA/AL - BRASIL', 'PARIPUEIRA', 2, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (90, 'PAULO JACINTO/AL - BRASIL', 'PAULO JACINTO', 2, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (93, 'PILAR/AL - BRASIL', 'PILAR', 2, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (95, 'PIRANHAS/AL - BRASIL', 'PIRANHAS', 2, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (130, 'PORTO GRANDE/AP - BRASIL', 'PORTO GRANDE', 3, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (132, 'SANTANA/AP - BRASIL', 'SANTANA', 3, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5857, 'SILVANOPOLIS/TO - BRASIL', 'SILVANOPOLIS', 27, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5858, 'SITIO NOVO DO TOCANTINS/TO - BRASIL', 'SITIO NOVO DO TOCANTINS', 27, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5863, 'TAQUARUSSU DO PORTO/TO - BRASIL', 'TAQUARUSSU DO PORTO', 27, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5866, 'TUPIRAMA/TO - BRASIL', 'TUPIRAMA', 27, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5868, 'WANDERLANDIA/TO - BRASIL', 'WANDERLANDIA', 27, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5713, 'PORTO DA FOLHA/SE - BRASIL', 'PORTO DA FOLHA', 26, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5716, 'RIACHUELO/SE - BRASIL', 'RIACHUELO', 26, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5718, 'ROSARIO DO CATETE/SE - BRASIL', 'ROSARIO DO CATETE', 26, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5721, 'SANTA ROSA DE LIMA/SE - BRASIL', 'SANTA ROSA DE LIMA', 26, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5723, 'SANTO AMARO DAS BROTAS/SE - BRASIL', 'SANTO AMARO DAS BROTAS', 26, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5726, 'SAO FRANCISCO/SE - BRASIL', 'SAO FRANCISCO', 26, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5728, 'SIMAO DIAS/SE - BRASIL', 'SIMAO DIAS', 26, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5731, 'TOBIAS BARRETO/SE - BRASIL', 'TOBIAS BARRETO', 26, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5735, 'AGUIARNOPOLIS/TO - BRASIL', 'AGUIARNOPOLIS', 27, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5737, 'ALMAS/TO - BRASIL', 'ALMAS', 27, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5739, 'ANANAS/TO - BRASIL', 'ANANAS', 27, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5741, 'APARECIDA DO RIO NEGRO/TO - BRASIL', 'APARECIDA DO RIO NEGRO', 27, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5746, 'ARAGUANA/TO - BRASIL', 'ARAGUANA', 27, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5748, 'ARAPOEMA/TO - BRASIL', 'ARAPOEMA', 27, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5750, 'AUGUSTINOPOLIS/TO - BRASIL', 'AUGUSTINOPOLIS', 27, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5752, 'AXIXA DO TOCANTINS/TO - BRASIL', 'AXIXA DO TOCANTINS', 27, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5755, 'BARRA DO OURO/TO - BRASIL', 'BARRA DO OURO', 27, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5757, 'BERNARDO SAYAO/TO - BRASIL', 'BERNARDO SAYAO', 27, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5759, 'BRASILANDIA DO TOCANTINS/TO - BRASIL', 'BRASILANDIA DO TOCANTINS', 27, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5761, 'BURITI DO TOCANTINS/TO - BRASIL', 'BURITI DO TOCANTINS', 27, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5764, 'CARIRI DO TOCANTINS/TO - BRASIL', 'CARIRI DO TOCANTINS', 27, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5769, 'CHAPADA DA NATIVIDADE/TO - BRASIL', 'CHAPADA DA NATIVIDADE', 27, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5771, 'COLINAS DO TOCANTINS/TO - BRASIL', 'COLINAS DO TOCANTINS', 27, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5774, 'CONCEICAO DO TOCANTINS/TO - BRASIL', 'CONCEICAO DO TOCANTINS', 27, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5778, 'DARCINOPOLIS/TO - BRASIL', 'DARCINOPOLIS', 27, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5780, 'DIVINOPOLIS DO TOCANTINS/TO - BRASIL', 'DIVINOPOLIS DO TOCANTINS', 27, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5783, 'ESPERANTINA/TO - BRASIL', 'ESPERANTINA', 27, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5786, 'FILADELFIA/TO - BRASIL', 'FILADELFIA', 27, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5825, 'PARANA/TO - BRASIL', 'PARANA', 27, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5827, 'PEDRO AFONSO/TO - BRASIL', 'PEDRO AFONSO', 27, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5830, 'PINDORAMA DO TOCANTINS/TO - BRASIL', 'PINDORAMA DO TOCANTINS', 27, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5834, 'PONTE ALTA DO TOCANTINS/TO - BRASIL', 'PONTE ALTA DO TOCANTINS', 27, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5582, 'SAO PEDRO DO TURVO/SP - BRASIL', 'SAO PEDRO DO TURVO', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5585, 'SAO SEBASTIAO DA GRAMA/SP - BRASIL', 'SAO SEBASTIAO DA GRAMA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5594, 'SERTAOZINHO/SP - BRASIL', 'SERTAOZINHO', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5597, 'SILVEIRAS/SP - BRASIL', 'SILVEIRAS', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5600, 'SUD MENNUCCI/SP - BRASIL', 'SUD MENNUCCI', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5603, 'SUZANO/SP - BRASIL', 'SUZANO', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5608, 'TAGUAI/SP - BRASIL', 'TAGUAI', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5611, 'TAMBAU/SP - BRASIL', 'TAMBAU', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5616, 'TAQUARITUBA/SP - BRASIL', 'TAQUARITUBA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5619, 'TARUMA/SP - BRASIL', 'TARUMA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5622, 'TEJUPA/SP - BRASIL', 'TEJUPA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5627, 'TORRE DE PEDRA/SP - BRASIL', 'TORRE DE PEDRA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5631, 'TRES FRONTEIRAS/SP - BRASIL', 'TRES FRONTEIRAS', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5637, 'UBARANA/SP - BRASIL', 'UBARANA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5641, 'UNIAO PAULISTA/SP - BRASIL', 'UNIAO PAULISTA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5646, 'VALINHOS/SP - BRASIL', 'VALINHOS', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5651, 'VARZEA PAULISTA/SP - BRASIL', 'VARZEA PAULISTA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5655, 'VISTA ALEGRE DO ALTO/SP - BRASIL', 'VISTA ALEGRE DO ALTO', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5658, 'VOTUPORANGA/SP - BRASIL', 'VOTUPORANGA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5659, 'AMPARO DE SAO FRANCISCO/SE - BRASIL', 'AMPARO DE SAO FRANCISCO', 26, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5701, 'NOSSA SENHORA APARECIDA/SE - BRASIL', 'NOSSA SENHORA APARECIDA', 26, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5706, 'PACATUBA/SE - BRASIL', 'PACATUBA', 26, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5708, 'PEDRINHAS/SE - BRASIL', 'PEDRINHAS', 26, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5711, 'POCO REDONDO/SE - BRASIL', 'POCO REDONDO', 26, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5460, 'PLANALTO/SP - BRASIL', 'PLANALTO', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5463, 'POLONI/SP - BRASIL', 'POLONI', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5468, 'PONTES GESTAL/SP - BRASIL', 'PONTES GESTAL', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5474, 'POTIRENDABA/SP - BRASIL', 'POTIRENDABA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5477, 'PRAIA GRANDE/SP - BRASIL', 'PRAIA GRANDE', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5479, 'PRESIDENTE ALVES/SP - BRASIL', 'PRESIDENTE ALVES', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5481, 'PRESIDENTE EPITACIO/SP - BRASIL', 'PRESIDENTE EPITACIO', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5484, 'PROMISSAO/SP - BRASIL', 'PROMISSAO', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5488, 'QUELUZ/SP - BRASIL', 'QUELUZ', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5490, 'RAFARD/SP - BRASIL', 'RAFARD', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5492, 'REDENCAO DA SERRA/SP - BRASIL', 'REDENCAO DA SERRA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5495, 'REGISTRO/SP - BRASIL', 'REGISTRO', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5498, 'RIBEIRAO BONITO/SP - BRASIL', 'RIBEIRAO BONITO', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5500, 'RIBEIRAO CORRENTE/SP - BRASIL', 'RIBEIRAO CORRENTE', 25, 28);
commit;
prompt 3600 records committed...
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5502, 'RIBEIRAO DOS INDIOS/SP - BRASIL', 'RIBEIRAO DOS INDIOS', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5506, 'RIFAINA/SP - BRASIL', 'RIFAINA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5508, 'RINOPOLIS/SP - BRASIL', 'RINOPOLIS', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5510, 'RIO DAS PEDRAS/SP - BRASIL', 'RIO DAS PEDRAS', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5513, 'RIVERSUL/SP - BRASIL', 'RIVERSUL', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5516, 'RUBIACEA/SP - BRASIL', 'RUBIACEA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5520, 'SALES/SP - BRASIL', 'SALES', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5521, 'SALES OLIVEIRA/SP - BRASIL', 'SALES OLIVEIRA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5525, 'SALTO/SP - BRASIL', 'SALTO', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5526, 'SALTO DE PIRAPORA/SP - BRASIL', 'SALTO DE PIRAPORA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5530, 'SANTA ALBERTINA/SP - BRASIL', 'SANTA ALBERTINA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5532, 'SANTA BRANCA/SP - BRASIL', 'SANTA BRANCA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5534, 'SANTA CRUZ DA CONCEICAO/SP - BRASIL', 'SANTA CRUZ DA CONCEICAO', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5557, 'SANTO ANTONIO DO PINHAL/SP - BRASIL', 'SANTO ANTONIO DO PINHAL', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5561, 'SAO BENTO DO SAPUCAI/SP - BRASIL', 'SAO BENTO DO SAPUCAI', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5563, 'SAO CAETANO DO SUL/SP - BRASIL', 'SAO CAETANO DO SUL', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5566, 'SAO JOAO DA BOA VISTA/SP - BRASIL', 'SAO JOAO DA BOA VISTA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5568, 'SAO JOAO DE IRACEMA/SP - BRASIL', 'SAO JOAO DE IRACEMA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5570, 'SAO JOAQUIM DA BARRA/SP - BRASIL', 'SAO JOAQUIM DA BARRA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5573, 'SAO JOSE DO RIO PARDO/SP - BRASIL', 'SAO JOSE DO RIO PARDO', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5575, 'SAO JOSE DOS CAMPOS/SP - BRASIL', 'SAO JOSE DOS CAMPOS', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5577, 'SAO LUIS DO PARAITINGA/SP - BRASIL', 'SAO LUIS DO PARAITINGA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5329, 'LUCIANOPOLIS/SP - BRASIL', 'LUCIANOPOLIS', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5331, 'LUIZIANIA/SP - BRASIL', 'LUIZIANIA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5335, 'MACAUBAL/SP - BRASIL', 'MACAUBAL', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5338, 'MAIRINQUE/SP - BRASIL', 'MAIRINQUE', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5340, 'MANDURI/SP - BRASIL', 'MANDURI', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5344, 'MARIAPOLIS/SP - BRASIL', 'MARIAPOLIS', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5347, 'MARTINOPOLIS/SP - BRASIL', 'MARTINOPOLIS', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5353, 'MINEIROS DO TIETE/SP - BRASIL', 'MINEIROS DO TIETE', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5357, 'MIRANTE DO PARANAPANEMA/SP - BRASIL', 'MIRANTE DO PARANAPANEMA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5363, 'MOJI-MIRIM/SP - BRASIL', 'MOJI-MIRIM', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5366, 'MONGAGUA/SP - BRASIL', 'MONGAGUA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5370, 'MONTE AZUL PAULISTA/SP - BRASIL', 'MONTE AZUL PAULISTA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5373, 'MONTEIRO LOBATO/SP - BRASIL', 'MONTEIRO LOBATO', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5380, 'NATIVIDADE DA SERRA/SP - BRASIL', 'NATIVIDADE DA SERRA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5383, 'NHANDEARA/SP - BRASIL', 'NHANDEARA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5386, 'NOVA CAMPINA/SP - BRASIL', 'NOVA CAMPINA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5390, 'NOVA GRANADA/SP - BRASIL', 'NOVA GRANADA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5392, 'NOVA INDEPENDENCIA/SP - BRASIL', 'NOVA INDEPENDENCIA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5437, 'PEDRO DE TOLEDO/SP - BRASIL', 'PEDRO DE TOLEDO', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5443, 'PIEDADE/SP - BRASIL', 'PIEDADE', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5445, 'PINDAMONHANGABA/SP - BRASIL', 'PINDAMONHANGABA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5451, 'PIRACICABA/SP - BRASIL', 'PIRACICABA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5455, 'PIRAPORA DO BOM JESUS/SP - BRASIL', 'PIRAPORA DO BOM JESUS', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5184, 'ELISIARIO/SP - BRASIL', 'ELISIARIO', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5188, 'EMILIANOPOLIS/SP - BRASIL', 'EMILIANOPOLIS', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5192, 'ESTIVA DO GERBI/SP - BRASIL', 'ESTIVA DO GERBI', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5194, 'ESTRELA D´OESTE/SP - BRASIL', 'ESTRELA D´OESTE', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5197, 'FERNANDO PRESTES/SP - BRASIL', 'FERNANDO PRESTES', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5200, 'FERRAZ DE VASCONCELOS/SP - BRASIL', 'FERRAZ DE VASCONCELOS', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5207, 'FRANCO DA ROCHA/SP - BRASIL', 'FRANCO DA ROCHA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5211, 'GASTAO VIDIGAL/SP - BRASIL', 'GASTAO VIDIGAL', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5213, 'GENERAL SALGADO/SP - BRASIL', 'GENERAL SALGADO', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5220, 'GUAPIARA/SP - BRASIL', 'GUAPIARA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5223, 'GUARACI/SP - BRASIL', 'GUARACI', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5227, 'GUARAREMA/SP - BRASIL', 'GUARAREMA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5230, 'GUARIBA/SP - BRASIL', 'GUARIBA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5235, 'HERCULANDIA/SP - BRASIL', 'HERCULANDIA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5238, 'IACANGA/SP - BRASIL', 'IACANGA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5242, 'IBIRA/SP - BRASIL', 'IBIRA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5244, 'IBITINGA/SP - BRASIL', 'IBITINGA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5248, 'IGARACU DO TIETE/SP - BRASIL', 'IGARACU DO TIETE', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5301, 'JALES/SP - BRASIL', 'JALES', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5304, 'JARDINOPOLIS/SP - BRASIL', 'JARDINOPOLIS', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5308, 'JOANOPOLIS/SP - BRASIL', 'JOANOPOLIS', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5310, 'JOSE BONIFACIO/SP - BRASIL', 'JOSE BONIFACIO', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5313, 'JUNDIAI/SP - BRASIL', 'JUNDIAI', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5315, 'JUQUIA/SP - BRASIL', 'JUQUIA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5317, 'LAGOINHA/SP - BRASIL', 'LAGOINHA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5319, 'LAVINIA/SP - BRASIL', 'LAVINIA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5322, 'LENCOIS PAULISTA/SP - BRASIL', 'LENCOIS PAULISTA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5046, 'APARECIDA/SP - BRASIL', 'APARECIDA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5048, 'APIAI/SP - BRASIL', 'APIAI', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5049, 'ARACARIGUAMA/SP - BRASIL', 'ARACARIGUAMA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5052, 'ARAMINA/SP - BRASIL', 'ARAMINA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5055, 'ARARAQUARA/SP - BRASIL', 'ARARAQUARA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5058, 'AREALVA/SP - BRASIL', 'AREALVA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5061, 'ARIRANHA/SP - BRASIL', 'ARIRANHA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5063, 'ARUJA/SP - BRASIL', 'ARUJA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5066, 'ATIBAIA/SP - BRASIL', 'ATIBAIA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5069, 'AVANHANDAVA/SP - BRASIL', 'AVANHANDAVA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5072, 'BALBINOS/SP - BRASIL', 'BALBINOS', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5075, 'BARAO DE ANTONINA/SP - BRASIL', 'BARAO DE ANTONINA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5078, 'BARRA BONITA/SP - BRASIL', 'BARRA BONITA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5080, 'BARRA DO TURVO/SP - BRASIL', 'BARRA DO TURVO', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5085, 'BATATAIS/SP - BRASIL', 'BATATAIS', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5088, 'BENTO DE ABREU/SP - BRASIL', 'BENTO DE ABREU', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5090, 'BERTIOGA/SP - BRASIL', 'BERTIOGA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5093, 'BIRITIBA-MIRIM/SP - BRASIL', 'BIRITIBA-MIRIM', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5095, 'BOCAINA/SP - BRASIL', 'BOCAINA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5098, 'BOM JESUS DOS PERDOES/SP - BRASIL', 'BOM JESUS DOS PERDOES', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5101, 'BORACEIA/SP - BRASIL', 'BORACEIA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5104, 'BOTUCATU/SP - BRASIL', 'BOTUCATU', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5106, 'BRAUNA/SP - BRASIL', 'BRAUNA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5150, 'CHARQUEADA/SP - BRASIL', 'CHARQUEADA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5153, 'COLINA/SP - BRASIL', 'COLINA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5157, 'CORDEIROPOLIS/SP - BRASIL', 'CORDEIROPOLIS', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5160, 'CORUMBATAI/SP - BRASIL', 'CORUMBATAI', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5165, 'CRISTAIS PAULISTA/SP - BRASIL', 'CRISTAIS PAULISTA', 25, 28);
commit;
prompt 3700 records committed...
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5173, 'DIVINOLANDIA/SP - BRASIL', 'DIVINOLANDIA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5175, 'DOIS CORREGOS/SP - BRASIL', 'DOIS CORREGOS', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4915, 'PAULO LOPES/SC - BRASIL', 'PAULO LOPES', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4918, 'PERITIBA/SC - BRASIL', 'PERITIBA', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4922, 'PINHEIRO PRETO/SC - BRASIL', 'PINHEIRO PRETO', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4925, 'POMERODE/SC - BRASIL', 'POMERODE', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4931, 'POUSO REDONDO/SC - BRASIL', 'POUSO REDONDO', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4933, 'PRESIDENTE CASTELO BRANCO/SC - BRASIL', 'PRESIDENTE CASTELO BRANCO', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4936, 'PRINCESA/SC - BRASIL', 'PRINCESA', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4941, 'RIO DO SUL/SC - BRASIL', 'RIO DO SUL', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4943, 'RIO FORTUNA/SC - BRASIL', 'RIO FORTUNA', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4946, 'RIQUEZA/SC - BRASIL', 'RIQUEZA', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4951, 'SALTO VELOSO/SC - BRASIL', 'SALTO VELOSO', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4954, 'SANTA HELENA/SC - BRASIL', 'SANTA HELENA', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4958, 'SANTA TEREZINHA DO PROGRESSO/SC - BRASIL', 'SANTA TEREZINHA DO PROGRESSO', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4961, 'SAO BENTO DO SUL/SC - BRASIL', 'SAO BENTO DO SUL', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4964, 'SAO CARLOS/SC - BRASIL', 'SAO CARLOS', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5002, 'TUNAPOLIS/SC - BRASIL', 'TUNAPOLIS', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5005, 'URUBICI/SC - BRASIL', 'URUBICI', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5008, 'VARGEAO/SC - BRASIL', 'VARGEAO', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5010, 'VARGEM BONITA/SC - BRASIL', 'VARGEM BONITA', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5017, 'XAXIM/SC - BRASIL', 'XAXIM', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5019, 'ADAMANTINA/SP - BRASIL', 'ADAMANTINA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5022, 'AGUAS DA PRATA/SP - BRASIL', 'AGUAS DA PRATA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5028, 'ALFREDO MARCONDES/SP - BRASIL', 'ALFREDO MARCONDES', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5033, 'ALVARES FLORENCE/SP - BRASIL', 'ALVARES FLORENCE', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5035, 'ALVARO DE CARVALHO/SP - BRASIL', 'ALVARO DE CARVALHO', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5038, 'AMERICO BRASILIENSE/SP - BRASIL', 'AMERICO BRASILIENSE', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4779, 'CALMON/SC - BRASIL', 'CALMON', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4781, 'CAMPO ALEGRE/SC - BRASIL', 'CAMPO ALEGRE', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4785, 'CANELINHA/SC - BRASIL', 'CANELINHA', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4788, 'CAPINZAL/SC - BRASIL', 'CAPINZAL', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4792, 'CELSO RAMOS/SC - BRASIL', 'CELSO RAMOS', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4794, 'CHAPADAO DO LAGEADO/SC - BRASIL', 'CHAPADAO DO LAGEADO', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4798, 'CORDILHEIRA ALTA/SC - BRASIL', 'CORDILHEIRA ALTA', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4800, 'CORONEL MARTINS/SC - BRASIL', 'CORONEL MARTINS', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4804, 'CUNHA PORA/SC - BRASIL', 'CUNHA PORA', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4807, 'DESCANSO/SC - BRASIL', 'DESCANSO', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4808, 'DIONISIO CERQUEIRA/SC - BRASIL', 'DIONISIO CERQUEIRA', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4813, 'FAXINAL DOS GUEDES/SC - BRASIL', 'FAXINAL DOS GUEDES', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4815, 'FLORIANOPOLIS/SC - BRASIL', 'FLORIANOPOLIS', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4818, 'FRAIBURGO/SC - BRASIL', 'FRAIBURGO', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4821, 'GAROPABA/SC - BRASIL', 'GAROPABA', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4824, 'GOVERNADOR CELSO RAMOS/SC - BRASIL', 'GOVERNADOR CELSO RAMOS', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4874, 'LINDOIA DO SUL/SC - BRASIL', 'LINDOIA DO SUL', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4878, 'MACIEIRA/SC - BRASIL', 'MACIEIRA', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4881, 'MAJOR VIEIRA/SC - BRASIL', 'MAJOR VIEIRA', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4884, 'MAREMA/SC - BRASIL', 'MAREMA', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4886, 'MATOS COSTA/SC - BRASIL', 'MATOS COSTA', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4889, 'MODELO/SC - BRASIL', 'MODELO', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4891, 'MONTE CARLO/SC - BRASIL', 'MONTE CARLO', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4893, 'MORRO DA FUMACA/SC - BRASIL', 'MORRO DA FUMACA', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4897, 'NOVA ITABERABA/SC - BRASIL', 'NOVA ITABERABA', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4899, 'NOVA VENEZA/SC - BRASIL', 'NOVA VENEZA', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4902, 'OTACILIO COSTA/SC - BRASIL', 'OTACILIO COSTA', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4907, 'PALHOCA/SC - BRASIL', 'PALHOCA', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4909, 'PALMEIRA/SC - BRASIL', 'PALMEIRA', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4912, 'PARAISO/SC - BRASIL', 'PARAISO', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4913, 'PASSO DE TORRES/SC - BRASIL', 'PASSO DE TORRES', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4652, 'VICTOR GRAEFF/RS - BRASIL', 'VICTOR GRAEFF', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4655, 'VILA MARIA/RS - BRASIL', 'VILA MARIA', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4657, 'VISTA ALEGRE/RS - BRASIL', 'VISTA ALEGRE', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4658, 'VISTA ALEGRE DO PRATA/RS - BRASIL', 'VISTA ALEGRE DO PRATA', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4662, 'XANGRI-LA/RS - BRASIL', 'XANGRI-LA', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4664, 'ALTO ALEGRE DO PARECIS/RO - BRASIL', 'ALTO ALEGRE DO PARECIS', 22, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4667, 'ARIQUEMES/RO - BRASIL', 'ARIQUEMES', 22, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4670, 'CACAULANDIA/RO - BRASIL', 'CACAULANDIA', 22, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4672, 'CAMPO NOVO DE RONDONIA/RO - BRASIL', 'CAMPO NOVO DE RONDONIA', 22, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4676, 'CHUPINGUAIA/RO - BRASIL', 'CHUPINGUAIA', 22, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4678, 'CORUMBIARA/RO - BRASIL', 'CORUMBIARA', 22, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4682, 'GOVERNADOR JORGE TEIXEIRA/RO - BRASIL', 'GOVERNADOR JORGE TEIXEIRA', 22, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4689, 'MIRANTE DA SERRA/RO - BRASIL', 'MIRANTE DA SERRA', 22, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4691, 'NOVA BRASILANDIA D´OESTE/RO - BRASIL', 'NOVA BRASILANDIA D´OESTE', 22, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4726, 'RORAINOPOLIS/RR - BRASIL', 'RORAINOPOLIS', 23, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4728, 'SAO LUIZ/RR - BRASIL', 'SAO LUIZ', 23, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4732, 'ABELARDO LUZ/SC - BRASIL', 'ABELARDO LUZ', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4735, 'AGUA DOCE/SC - BRASIL', 'AGUA DOCE', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4739, 'ALFREDO WAGNER/SC - BRASIL', 'ALFREDO WAGNER', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4743, 'ANITA GARIBALDI/SC - BRASIL', 'ANITA GARIBALDI', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4745, 'ANTONIO CARLOS/SC - BRASIL', 'ANTONIO CARLOS', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4752, 'ARVOREDO/SC - BRASIL', 'ARVOREDO', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4756, 'BALNEARIO ARROIO DO SILVA/SC - BRASIL', 'BALNEARIO ARROIO DO SILVA', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4759, 'BANDEIRANTE/SC - BRASIL', 'BANDEIRANTE', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4766, 'BOCAINA DO SUL/SC - BRASIL', 'BOCAINA DO SUL', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4768, 'BOM JESUS/SC - BRASIL', 'BOM JESUS', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4770, 'BOM RETIRO/SC - BRASIL', 'BOM RETIRO', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4775, 'BRUNOPOLIS/SC - BRASIL', 'BRUNOPOLIS', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4529, 'SALDANHA MARINHO/RS - BRASIL', 'SALDANHA MARINHO', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4531, 'SALVADOR DO SUL/RS - BRASIL', 'SALVADOR DO SUL', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4537, 'SANTA MARIA DO HERVAL/RS - BRASIL', 'SANTA MARIA DO HERVAL', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4540, 'SANTA VITORIA DO PALMAR/RS - BRASIL', 'SANTA VITORIA DO PALMAR', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4542, 'SANTANA DO LIVRAMENTO/RS - BRASIL', 'SANTANA DO LIVRAMENTO', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4545, 'SANTO ANTONIO DA PATRULHA/RS - BRASIL', 'SANTO ANTONIO DA PATRULHA', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4551, 'SANTO EXPEDITO DO SUL/RS - BRASIL', 'SANTO EXPEDITO DO SUL', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4554, 'SAO FRANCISCO DE ASSIS/RS - BRASIL', 'SAO FRANCISCO DE ASSIS', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4557, 'SAO JERONIMO/RS - BRASIL', 'SAO JERONIMO', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4559, 'SAO JOAO DO POLESINE/RS - BRASIL', 'SAO JOAO DO POLESINE', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4592, 'SENADOR SALGADO FILHO/RS - BRASIL', 'SENADOR SALGADO FILHO', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4594, 'SERAFINA CORREA/RS - BRASIL', 'SERAFINA CORREA', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4598, 'SETE DE SETEMBRO/RS - BRASIL', 'SETE DE SETEMBRO', 21, 28);
commit;
prompt 3800 records committed...
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4600, 'SILVEIRA MARTINS/RS - BRASIL', 'SILVEIRA MARTINS', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4605, 'TAPEJARA/RS - BRASIL', 'TAPEJARA', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4608, 'TAQUARA/RS - BRASIL', 'TAQUARA', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4610, 'TAQUARUCU DO SUL/RS - BRASIL', 'TAQUARUCU DO SUL', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4613, 'TERRA DE AREIA/RS - BRASIL', 'TERRA DE AREIA', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4617, 'TORRES/RS - BRASIL', 'TORRES', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4619, 'TRAVESSEIRO/RS - BRASIL', 'TRAVESSEIRO', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4621, 'TRES CACHOEIRAS/RS - BRASIL', 'TRES CACHOEIRAS', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4624, 'TRES FORQUILHAS/RS - BRASIL', 'TRES FORQUILHAS', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4627, 'TRINDADE DO SUL/RS - BRASIL', 'TRINDADE DO SUL', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4631, 'TUPANCI DO SUL/RS - BRASIL', 'TUPANCI DO SUL', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4634, 'TUPARENDI/RS - BRASIL', 'TUPARENDI', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4637, 'UNIAO DA SERRA/RS - BRASIL', 'UNIAO DA SERRA', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4640, 'VACARIA/RS - BRASIL', 'VACARIA', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4642, 'VALE REAL/RS - BRASIL', 'VALE REAL', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4645, 'VENANCIO AIRES/RS - BRASIL', 'VENANCIO AIRES', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4648, 'VESPASIANO CORREA/RS - BRASIL', 'VESPASIANO CORREA', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4400, 'ITATIBA DO SUL/RS - BRASIL', 'ITATIBA DO SUL', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4403, 'JABOTICABA/RS - BRASIL', 'JABOTICABA', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4407, 'JAQUIRANA/RS - BRASIL', 'JAQUIRANA', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4410, 'JULIO DE CASTILHOS/RS - BRASIL', 'JULIO DE CASTILHOS', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4412, 'LAGOA VERMELHA/RS - BRASIL', 'LAGOA VERMELHA', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4416, 'LAVRAS DO SUL/RS - BRASIL', 'LAVRAS DO SUL', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4418, 'LINDOLFO COLLOR/RS - BRASIL', 'LINDOLFO COLLOR', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4421, 'MACHADINHO/RS - BRASIL', 'MACHADINHO', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4424, 'MAQUINE/RS - BRASIL', 'MAQUINE', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4427, 'MARCELINO RAMOS/RS - BRASIL', 'MARCELINO RAMOS', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4429, 'MARIANO MORO/RS - BRASIL', 'MARIANO MORO', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4432, 'MATO CASTELHANO/RS - BRASIL', 'MATO CASTELHANO', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4434, 'MAXIMILIANO DE ALMEIDA/RS - BRASIL', 'MAXIMILIANO DE ALMEIDA', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4468, 'NOVO CABRAIS/RS - BRASIL', 'NOVO CABRAIS', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4470, 'NOVO MACHADO/RS - BRASIL', 'NOVO MACHADO', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4473, 'PAIM FILHO/RS - BRASIL', 'PAIM FILHO', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4475, 'PALMEIRA DAS MISSOES/RS - BRASIL', 'PALMEIRA DAS MISSOES', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4479, 'PARAI/RS - BRASIL', 'PARAI', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4480, 'PARAISO DO SUL/RS - BRASIL', 'PARAISO DO SUL', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4487, 'PEDRO OSORIO/RS - BRASIL', 'PEDRO OSORIO', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4491, 'PINHAL/RS - BRASIL', 'PINHAL', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4492, 'PINHAL GRANDE/RS - BRASIL', 'PINHAL GRANDE', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4498, 'POCO DAS ANTAS/RS - BRASIL', 'POCO DAS ANTAS', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4502, 'PORTO ALEGRE/RS - BRASIL', 'PORTO ALEGRE', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4505, 'PORTO XAVIER/RS - BRASIL', 'PORTO XAVIER', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4511, 'QUARAI/RS - BRASIL', 'QUARAI', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4513, 'QUINZE DE NOVEMBRO/RS - BRASIL', 'QUINZE DE NOVEMBRO', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4517, 'RIO DOS ËNDIOS/RS - BRASIL', 'RIO DOS ËNDIOS', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4522, 'RODEIO BONITO/RS - BRASIL', 'RODEIO BONITO', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4525, 'RONDINHA/RS - BRASIL', 'RONDINHA', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4266, 'CAMPINAS DO SUL/RS - BRASIL', 'CAMPINAS DO SUL', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4269, 'CAMPOS BORGES/RS - BRASIL', 'CAMPOS BORGES', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4272, 'CANDIOTA/RS - BRASIL', 'CANDIOTA', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4278, 'CAPELA DE SANTANA/RS - BRASIL', 'CAPELA DE SANTANA', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4282, 'CARAZINHO/RS - BRASIL', 'CARAZINHO', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4284, 'CARLOS GOMES/RS - BRASIL', 'CARLOS GOMES', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4291, 'CERRO BRANCO/RS - BRASIL', 'CERRO BRANCO', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4293, 'CERRO GRANDE DO SUL/RS - BRASIL', 'CERRO GRANDE DO SUL', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4298, 'CHIAPETA/RS - BRASIL', 'CHIAPETA', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4335, 'EREBANGO/RS - BRASIL', 'EREBANGO', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4338, 'ERVAL GRANDE/RS - BRASIL', 'ERVAL GRANDE', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4342, 'ESPUMOSO/RS - BRASIL', 'ESPUMOSO', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4345, 'ESTEIO/RS - BRASIL', 'ESTEIO', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4349, 'FAGUNDES VARELA/RS - BRASIL', 'FAGUNDES VARELA', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4351, 'FAXINAL DO SOTURNO/RS - BRASIL', 'FAXINAL DO SOTURNO', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4355, 'FLORES DA CUNHA/RS - BRASIL', 'FLORES DA CUNHA', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4360, 'FREDERICO WESTPHALEN/RS - BRASIL', 'FREDERICO WESTPHALEN', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4364, 'GENERAL CAMARA/RS - BRASIL', 'GENERAL CAMARA', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4368, 'GLORINHA/RS - BRASIL', 'GLORINHA', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4374, 'GUAIBA/RS - BRASIL', 'GUAIBA', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4376, 'GUARANI DAS MISSOES/RS - BRASIL', 'GUARANI DAS MISSOES', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4381, 'HUMAITA/RS - BRASIL', 'HUMAITA', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4384, 'IBIRAIARAS/RS - BRASIL', 'IBIRAIARAS', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4390, 'IMBE/RS - BRASIL', 'IMBE', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4392, 'INDEPENDENCIA/RS - BRASIL', 'INDEPENDENCIA', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4141, 'PILOES/RN - BRASIL', 'PILOES', 20, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4143, 'PORTALEGRE/RN - BRASIL', 'PORTALEGRE', 20, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4145, 'PUREZA/RN - BRASIL', 'PUREZA', 20, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4147, 'RAFAEL GODEIRO/RN - BRASIL', 'RAFAEL GODEIRO', 20, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4149, 'RIACHO DE SANTANA/RN - BRASIL', 'RIACHO DE SANTANA', 20, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4152, 'RODOLFO FERNANDES/RN - BRASIL', 'RODOLFO FERNANDES', 20, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4156, 'SANTANA DO MATOS/RN - BRASIL', 'SANTANA DO MATOS', 20, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4158, 'SANTO ANTONIO/RN - BRASIL', 'SANTO ANTONIO', 20, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4160, 'SAO BENTO DO TRAIRI/RN - BRASIL', 'SAO BENTO DO TRAIRI', 20, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4162, 'SAO FRANCISCO DO OESTE/RN - BRASIL', 'SAO FRANCISCO DO OESTE', 20, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4165, 'SAO JOSE DE MIPIBU/RN - BRASIL', 'SAO JOSE DE MIPIBU', 20, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4194, 'TRIUNFO POTIGUAR/RN - BRASIL', 'TRIUNFO POTIGUAR', 20, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4199, 'VERA CRUZ/RN - BRASIL', 'VERA CRUZ', 20, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4202, 'AGUA SANTA/RS - BRASIL', 'AGUA SANTA', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4206, 'ALEGRETE/RS - BRASIL', 'ALEGRETE', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4209, 'ALTO ALEGRE/RS - BRASIL', 'ALTO ALEGRE', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4211, 'ALVORADA/RS - BRASIL', 'ALVORADA', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4213, 'AMETISTA DO SUL/RS - BRASIL', 'AMETISTA DO SUL', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4216, 'ANTA GORDA/RS - BRASIL', 'ANTA GORDA', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4219, 'ARARICA/RS - BRASIL', 'ARARICA', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4221, 'ARROIO DO MEIO/RS - BRASIL', 'ARROIO DO MEIO', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4223, 'ARROIO DO TIGRE/RS - BRASIL', 'ARROIO DO TIGRE', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4226, 'ARVOREZINHA/RS - BRASIL', 'ARVOREZINHA', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4229, 'BAGE/RS - BRASIL', 'BAGE', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4230, 'BALNEARIO PINHAL/RS - BRASIL', 'BALNEARIO PINHAL', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4233, 'BARAO DO TRIUNFO/RS - BRASIL', 'BARAO DO TRIUNFO', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4236, 'BARRA DO RIBEIRO/RS - BRASIL', 'BARRA DO RIBEIRO', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4238, 'BARRA FUNDA/RS - BRASIL', 'BARRA FUNDA', 21, 28);
commit;
prompt 3900 records committed...
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4241, 'BENJAMIN CONSTANT DO SUL/RS - BRASIL', 'BENJAMIN CONSTANT DO SUL', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4243, 'BOA VISTA DAS MISSOES/RS - BRASIL', 'BOA VISTA DAS MISSOES', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4247, 'BOM PRINCIPIO/RS - BRASIL', 'BOM PRINCIPIO', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4249, 'BOQUEIRAO DO LEAO/RS - BRASIL', 'BOQUEIRAO DO LEAO', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4254, 'CACAPAVA DO SUL/RS - BRASIL', 'CACAPAVA DO SUL', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4256, 'CACHOEIRA DO SUL/RS - BRASIL', 'CACHOEIRA DO SUL', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4260, 'CAICARA/RS - BRASIL', 'CAICARA', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4009, 'SAO JOAO DE MERITI/RJ - BRASIL', 'SAO JOAO DE MERITI', 19, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4011, 'SAO JOSE DE UBA/RJ - BRASIL', 'SAO JOSE DE UBA', 19, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4013, 'SAO PEDRO DA ALDEIA/RJ - BRASIL', 'SAO PEDRO DA ALDEIA', 19, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4019, 'SEROPEDICA/RJ - BRASIL', 'SEROPEDICA', 19, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4021, 'SILVA JARDIM/RJ - BRASIL', 'SILVA JARDIM', 19, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4025, 'TRAJANO DE MORAIS/RJ - BRASIL', 'TRAJANO DE MORAIS', 19, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4030, 'VALAO DO BARRO/RJ - BRASIL', 'VALAO DO BARRO', 19, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4070, 'CURRAIS NOVOS/RN - BRASIL', 'CURRAIS NOVOS', 20, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4075, 'EXTREMOZ/RN - BRASIL', 'EXTREMOZ', 20, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4077, 'FERNANDO PEDROZA/RN - BRASIL', 'FERNANDO PEDROZA', 20, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4083, 'GOVERNADOR DIX-SEPT ROSADO/RN - BRASIL', 'GOVERNADOR DIX-SEPT ROSADO', 20, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4088, 'IPUEIRA/RN - BRASIL', 'IPUEIRA', 20, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4091, 'JACANA/RN - BRASIL', 'JACANA', 20, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4095, 'JARDIM DE ANGICOS/RN - BRASIL', 'JARDIM DE ANGICOS', 20, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4100, 'JOSE DA PENHA/RN - BRASIL', 'JOSE DA PENHA', 20, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4103, 'LAGOA DE PEDRAS/RN - BRASIL', 'LAGOA DE PEDRAS', 20, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4109, 'LUCRECIA/RN - BRASIL', 'LUCRECIA', 20, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4111, 'MACAIBA/RN - BRASIL', 'MACAIBA', 20, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4114, 'MARCELINO VIEIRA/RN - BRASIL', 'MARCELINO VIEIRA', 20, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4120, 'MONTE DAS GAMELEIRAS/RN - BRASIL', 'MONTE DAS GAMELEIRAS', 20, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4124, 'NOVA CRUZ/RN - BRASIL', 'NOVA CRUZ', 20, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4126, 'OURO BRANCO/RN - BRASIL', 'OURO BRANCO', 20, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4132, 'PASSA E FICA/RN - BRASIL', 'PASSA E FICA', 20, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4135, 'PAU DOS FERROS/RN - BRASIL', 'PAU DOS FERROS', 20, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3878, 'SIGEFREDO PACHECO/PI - BRASIL', 'SIGEFREDO PACHECO', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3882, 'SITIO DAS ONCAS/PI - BRASIL', 'SITIO DAS ONCAS', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3887, 'TANQUE DO PIAUI/PI - BRASIL', 'TANQUE DO PIAUI', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3891, 'TUCUNS/PI - BRASIL', 'TUCUNS', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3894, 'VALENCA DO PIAUI/PI - BRASIL', 'VALENCA DO PIAUI', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3933, 'CASIMIRO DE ABREU/RJ - BRASIL', 'CASIMIRO DE ABREU', 19, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3935, 'COMENDADOR VENANCIO/RJ - BRASIL', 'COMENDADOR VENANCIO', 19, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3941, 'DUQUE DE CAXIAS/RJ - BRASIL', 'DUQUE DE CAXIAS', 19, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3943, 'FAROL DE SAO TOME/RJ - BRASIL', 'FAROL DE SAO TOME', 19, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3946, 'ITABORAI/RJ - BRASIL', 'ITABORAI', 19, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3950, 'ITAPERUNA/RJ - BRASIL', 'ITAPERUNA', 19, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3953, 'JAGUAREMBE/RJ - BRASIL', 'JAGUAREMBE', 19, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3955, 'LAJE DO MURIAE/RJ - BRASIL', 'LAJE DO MURIAE', 19, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3960, 'MANGARATIBA/RJ - BRASIL', 'MANGARATIBA', 19, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3963, 'MIGUEL PEREIRA/RJ - BRASIL', 'MIGUEL PEREIRA', 19, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3968, 'NITEROI/RJ - BRASIL', 'NITEROI', 19, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3970, 'NOVA IGUACU/RJ - BRASIL', 'NOVA IGUACU', 19, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3973, 'PARAIBA DO SUL/RJ - BRASIL', 'PARAIBA DO SUL', 19, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3975, 'PARATI/RJ - BRASIL', 'PARATI', 19, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3977, 'PETROPOLIS/RJ - BRASIL', 'PETROPOLIS', 19, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3980, 'PORCIUNCULA/RJ - BRASIL', 'PORCIUNCULA', 19, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3983, 'PUREZA/RJ - BRASIL', 'PUREZA', 19, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3986, 'QUEIMADOS/RJ - BRASIL', 'QUEIMADOS', 19, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3989, 'RESENDE/RJ - BRASIL', 'RESENDE', 19, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3990, 'RETIRO DO MURIAE/RJ - BRASIL', 'RETIRO DO MURIAE', 19, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3994, 'RIO DAS OSTRAS/RJ - BRASIL', 'RIO DAS OSTRAS', 19, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3996, 'RIOGRANDINA/RJ - BRASIL', 'RIOGRANDINA', 19, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4000, 'SANTA MARIA MADALENA/RJ - BRASIL', 'SANTA MARIA MADALENA', 19, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4002, 'SANTO ANTONIO DE PADUA/RJ - BRASIL', 'SANTO ANTONIO DE PADUA', 19, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4005, 'SAO FRANCISCO DE ITABAPOANA/RJ - BRASIL', 'SAO FRANCISCO DE ITABAPOANA', 19, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4008, 'SAO JOAO DA BARRA/RJ - BRASIL', 'SAO JOAO DA BARRA', 19, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3764, 'LAGOA DE DENTRO/PI - BRASIL', 'LAGOA DE DENTRO', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3766, 'LAGOA DO BARRO DO PIAUI/PI - BRASIL', 'LAGOA DO BARRO DO PIAUI', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3769, 'LAGOINHA DO PIAUI/PI - BRASIL', 'LAGOINHA DO PIAUI', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3773, 'MADEIRO/PI - BRASIL', 'MADEIRO', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3775, 'MANOEL EMIDIO/PI - BRASIL', 'MANOEL EMIDIO', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3802, 'PADRE MARCOS/PI - BRASIL', 'PADRE MARCOS', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3805, 'PAJEU DO PIAUI/PI - BRASIL', 'PAJEU DO PIAUI', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3808, 'PAQUETA/PI - BRASIL', 'PAQUETA', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3810, 'PARNAIBA/PI - BRASIL', 'PARNAIBA', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3811, 'PASSAGEM FRANCA DO PIAUI/PI - BRASIL', 'PASSAGEM FRANCA DO PIAUI', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3817, 'PEDRO LAURENTINO/PI - BRASIL', 'PEDRO LAURENTINO', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3821, 'PIRACURUCA/PI - BRASIL', 'PIRACURUCA', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3825, 'PORTO ALEGRE DO PIAUI/PI - BRASIL', 'PORTO ALEGRE DO PIAUI', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3832, 'RIACHO FRIO/PI - BRASIL', 'RIACHO FRIO', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3834, 'RIBEIRO GONCALVES/PI - BRASIL', 'RIBEIRO GONCALVES', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3837, 'SALINAS/PI - BRASIL', 'SALINAS', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3839, 'SANTA CRUZ DOS MILAGRES/PI - BRASIL', 'SANTA CRUZ DOS MILAGRES', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3845, 'SANTO ANTONIO DE LISBOA/PI - BRASIL', 'SANTO ANTONIO DE LISBOA', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3847, 'SANTO INACIO DO PIAUI/PI - BRASIL', 'SANTO INACIO DO PIAUI', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3850, 'SAO DIMAS/PI - BRASIL', 'SAO DIMAS', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3852, 'SAO FELIX DO PIAUI/PI - BRASIL', 'SAO FELIX DO PIAUI', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3856, 'SAO GONCALO DO PIAUI/PI - BRASIL', 'SAO GONCALO DO PIAUI', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3858, 'SAO JOAO DA FRONTEIRA/PI - BRASIL', 'SAO JOAO DA FRONTEIRA', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3861, 'SAO JOAO DO ARRAIAL/PI - BRASIL', 'SAO JOAO DO ARRAIAL', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3863, 'SAO JOSE DO DIVINO/PI - BRASIL', 'SAO JOSE DO DIVINO', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3867, 'SAO LOURENCO DO PIAUI/PI - BRASIL', 'SAO LOURENCO DO PIAUI', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3870, 'SAO MIGUEL DO TAPUIO/PI - BRASIL', 'SAO MIGUEL DO TAPUIO', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3875, 'SERRA VELHA/PI - BRASIL', 'SERRA VELHA', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3877, 'SERRINHA/PI - BRASIL', 'SERRINHA', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3642, 'ASSUNCAO DO PIAUI/PI - BRASIL', 'ASSUNCAO DO PIAUI', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3645, 'BAIXA GRANDE DO RIBEIRO/PI - BRASIL', 'BAIXA GRANDE DO RIBEIRO', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3680, 'CAMPINAS DO PIAUI/PI - BRASIL', 'CAMPINAS DO PIAUI', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3682, 'CAMPO GRANDE DO PIAUI/PI - BRASIL', 'CAMPO GRANDE DO PIAUI', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3685, 'CANAVIEIRA/PI - BRASIL', 'CANAVIEIRA', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3688, 'CAPITAO GERVASIO DE OLIVEIRA/PI - BRASIL', 'CAPITAO GERVASIO DE OLIVEIRA', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3692, 'CARIDADE DO PIAUI/PI - BRASIL', 'CARIDADE DO PIAUI', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3696, 'COCAL DE TELHA/PI - BRASIL', 'COCAL DE TELHA', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3702, 'CONCEICAO DO CANINDE/PI - BRASIL', 'CONCEICAO DO CANINDE', 18, 28);
commit;
prompt 4000 records committed...
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3705, 'CORRENTE/PI - BRASIL', 'CORRENTE', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3707, 'CRISTALANDIA DO PIAUI/PI - BRASIL', 'CRISTALANDIA DO PIAUI', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3711, 'CURRAIS/PI - BRASIL', 'CURRAIS', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3716, 'DEMERVAL LOBAO/PI - BRASIL', 'DEMERVAL LOBAO', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3718, 'DOM EXPEDITO LOPES/PI - BRASIL', 'DOM EXPEDITO LOPES', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3721, 'ELESBAO VELOSO/PI - BRASIL', 'ELESBAO VELOSO', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3724, 'FARTURA DO PIAUI/PI - BRASIL', 'FARTURA DO PIAUI', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3726, 'FLORES DO PIAUI/PI - BRASIL', 'FLORES DO PIAUI', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3729, 'FRANCINOPOLIS/PI - BRASIL', 'FRANCINOPOLIS', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3731, 'FRANCISCO MACEDO/PI - BRASIL', 'FRANCISCO MACEDO', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3734, 'FURTA-LHE A VOLTA/PI - BRASIL', 'FURTA-LHE A VOLTA', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3738, 'GUADALUPE/PI - BRASIL', 'GUADALUPE', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3740, 'HUGO NAPOLEAO/PI - BRASIL', 'HUGO NAPOLEAO', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3743, 'IPIRANGA DO PIAUI/PI - BRASIL', 'IPIRANGA DO PIAUI', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3747, 'ITAIZINHO/PI - BRASIL', 'ITAIZINHO', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3749, 'JACOBINA DO PIAUI/PI - BRASIL', 'JACOBINA DO PIAUI', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3753, 'JATOBA DO PIAUI/PI - BRASIL', 'JATOBA DO PIAUI', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3756, 'JOAQUIM PIRES/PI - BRASIL', 'JOAQUIM PIRES', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3758, 'JOSE DE FREITAS/PI - BRASIL', 'JOSE DE FREITAS', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3760, 'JUAZEIRO DO SEGUNDO/PI - BRASIL', 'JUAZEIRO DO SEGUNDO', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3517, 'PROJETO SENADOR NILO COELHO NO 3/PE - BR', 'PROJETO SENADOR NILO COELHO NO 3', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3520, 'PROJETO SENADOR NILO COELHO NO 6/PE - BR', 'PROJETO SENADOR NILO COELHO NO 6', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3552, 'SANTA MARIA DA BOA VISTA/PE - BRASIL', 'SANTA MARIA DA BOA VISTA', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3556, 'SANTA TEREZINHA/PE - BRASIL', 'SANTA TEREZINHA', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3558, 'SANTO ANTONIO DAS QUEIMADAS/PE - BRASIL', 'SANTO ANTONIO DAS QUEIMADAS', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3561, 'SAO CAETANO DO NAVIO/PE - BRASIL', 'SAO CAETANO DO NAVIO', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3565, 'SAO JOAO DOS LEITES/PE - BRASIL', 'SAO JOAO DOS LEITES', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3567, 'SAO JOSE DA COROA GRANDE/PE - BRASIL', 'SAO JOSE DA COROA GRANDE', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3570, 'SAO LOURENCO DA MATA/PE - BRASIL', 'SAO LOURENCO DA MATA', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3573, 'SAO VICENTE/PE - BRASIL', 'SAO VICENTE', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3575, 'SERRA BRANCA/PE - BRASIL', 'SERRA BRANCA', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3577, 'SERRINHA DA PRATA/PE - BRASIL', 'SERRINHA DA PRATA', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3581, 'SIPAUBA/PE - BRASIL', 'SIPAUBA', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3583, 'SITIO DOS NUNES/PE - BRASIL', 'SITIO DOS NUNES', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3587, 'SURUBIM/PE - BRASIL', 'SURUBIM', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3590, 'TACAIMBO/PE - BRASIL', 'TACAIMBO', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3593, 'TANQUINHO/PE - BRASIL', 'TANQUINHO', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3594, 'TAQUARITINGA DO NORTE/PE - BRASIL', 'TAQUARITINGA DO NORTE', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3599, 'TIMORANTE/PE - BRASIL', 'TIMORANTE', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3602, 'TRINDADE/PE - BRASIL', 'TRINDADE', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3609, 'VARZEA DO MEIO/PE - BRASIL', 'VARZEA DO MEIO', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3612, 'VERDEJANTE/PE - BRASIL', 'VERDEJANTE', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3618, 'VITORIA DE SANTO ANTAO/PE - BRASIL', 'VITORIA DE SANTO ANTAO', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3623, 'ACAUA/PI - BRASIL', 'ACAUA', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3625, 'AGUA BRANCA/PI - BRASIL', 'AGUA BRANCA', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3629, 'ALTAMIRA/PI - BRASIL', 'ALTAMIRA', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3632, 'ALVORADA DO GURGUEIA/PI - BRASIL', 'ALVORADA DO GURGUEIA', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3635, 'ANISIO DE ABREU/PI - BRASIL', 'ANISIO DE ABREU', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3638, 'AROAZES/PI - BRASIL', 'AROAZES', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3385, 'GLORIA DO GOITA/PE - BRASIL', 'GLORIA DO GOITA', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3439, 'LAGOA DE SAO JOSE/PE - BRASIL', 'LAGOA DE SAO JOSE', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3442, 'LAGOA DO CARUA/PE - BRASIL', 'LAGOA DO CARUA', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3444, 'LAGOA DO OURO/PE - BRASIL', 'LAGOA DO OURO', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3450, 'LIVRAMENTO/PE - BRASIL', 'LIVRAMENTO', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3451, 'LOGRADOURO DOS LEOES/PE - BRASIL', 'LOGRADOURO DOS LEOES', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3460, 'MARAVILHA/PE - BRASIL', 'MARAVILHA', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3462, 'MATA VERDE/PE - BRASIL', 'MATA VERDE', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3468, 'MORENO/PE - BRASIL', 'MORENO', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3471, 'MUTUCA/PE - BRASIL', 'MUTUCA', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3477, 'NOVO PERNAMBUCO/PE - BRASIL', 'NOVO PERNAMBUCO', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3479, 'OLHO D AGUA DO PADRE/PE - BRASIL', 'OLHO D AGUA DO PADRE', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3481, 'OLHO D AGUA DOS POMBOS/PE - BRASIL', 'OLHO D AGUA DOS POMBOS', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3490, 'PAO DE ACUCAR DE POCAO/PE - BRASIL', 'PAO DE ACUCAR DE POCAO', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3494, 'PARNAMIRIM/PE - BRASIL', 'PARNAMIRIM', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3500, 'PERPETUO SOCORRO/PE - BRASIL', 'PERPETUO SOCORRO', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3506, 'POCAO DE AFRANIO/PE - BRASIL', 'POCAO DE AFRANIO', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3509, 'POCO DO BOI/PE - BRASIL', 'POCO DO BOI', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3513, 'PROJETO SENADOR NILO COELHO C3/PE - BRAS', 'PROJETO SENADOR NILO COELHO C3', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3515, 'PROJETO SENADOR NILO COELHO NO 10/PE - B', 'PROJETO SENADOR NILO COELHO NO 10', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3286, 'ARARIPINA/PE - BRASIL', 'ARARIPINA', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3288, 'BARRA BONITA/PE - BRASIL', 'BARRA BONITA', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3290, 'BARRA DE SAO PEDRO/PE - BRASIL', 'BARRA DE SAO PEDRO', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3294, 'BELA VISTA/PE - BRASIL', 'BELA VISTA', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3296, 'BELEM DE SAO FRANCISCO/PE - BRASIL', 'BELEM DE SAO FRANCISCO', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3300, 'BEZERROS/PE - BRASIL', 'BEZERROS', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3303, 'BOM CONSELHO/PE - BRASIL', 'BOM CONSELHO', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3306, 'BONITA/PE - BRASIL', 'BONITA', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3308, 'BORBOREMA/PE - BRASIL', 'BORBOREMA', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3311, 'BREJINHO DE TABIRA/PE - BRASIL', 'BREJINHO DE TABIRA', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3314, 'BUENOS AIRES/PE - BRASIL', 'BUENOS AIRES', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3316, 'CAATINGA GRANDE/PE - BRASIL', 'CAATINGA GRANDE', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3318, 'CABO DO CAMPO/PE - BRASIL', 'CABO DO CAMPO', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3321, 'CACHOEIRA DO ROBERTO/PE - BRASIL', 'CACHOEIRA DO ROBERTO', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3325, 'CAJUEIRO/PE - BRASIL', 'CAJUEIRO', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3327, 'CALDEIROES DOS GUEDES/PE - BRASIL', 'CALDEIROES DOS GUEDES', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3330, 'CAMOCIM DE SAO FELIX/PE - BRASIL', 'CAMOCIM DE SAO FELIX', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3334, 'CAMPO SUJO/PE - BRASIL', 'CAMPO SUJO', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3338, 'CAPOEIRAS/PE - BRASIL', 'CAPOEIRAS', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3340, 'CARAIBEIRAS/PE - BRASIL', 'CARAIBEIRAS', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3344, 'CARNAUBEIRA DA PENHA/PE - BRASIL', 'CARNAUBEIRA DA PENHA', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3348, 'CARQUEJA/PE - BRASIL', 'CARQUEJA', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3351, 'CATENDE/PE - BRASIL', 'CATENDE', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3354, 'CERCADINHO/PE - BRASIL', 'CERCADINHO', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3356, 'CHA GRANDE/PE - BRASIL', 'CHA GRANDE', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3359, 'CONCEICAO DAS CRIOULAS/PE - BRASIL', 'CONCEICAO DAS CRIOULAS', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3363, 'CRUZEIRO DO NORDESTE/PE - BRASIL', 'CRUZEIRO DO NORDESTE', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3368, 'DORMENTES/PE - BRASIL', 'DORMENTES', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3371, 'EXTREMA/PE - BRASIL', 'EXTREMA', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3374, 'FEIRA NOVA/PE - BRASIL', 'FEIRA NOVA', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3376, 'FERNANDO DE NORONHA/PE - BRASIL', 'FERNANDO DE NORONHA', 17, 28);
commit;
prompt 4100 records committed...
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3158, 'QUITANDINHA/PR - BRASIL', 'QUITANDINHA', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3160, 'RANCHO ALEGRE/PR - BRASIL', 'RANCHO ALEGRE', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3162, 'REALEZA/PR - BRASIL', 'REALEZA', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3166, 'RESERVA DO IGUACU/PR - BRASIL', 'RESERVA DO IGUACU', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3171, 'RIO BONITO DO IGUACU/PR - BRASIL', 'RIO BONITO DO IGUACU', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3174, 'RIO NEGRO/PR - BRASIL', 'RIO NEGRO', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3178, 'ROSARIO DO IVAI/PR - BRASIL', 'ROSARIO DO IVAI', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3181, 'SALTO DO ITARARE/PR - BRASIL', 'SALTO DO ITARARE', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3187, 'SANTA HELENA/PR - BRASIL', 'SANTA HELENA', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3189, 'SANTA ISABEL DO IVAI/PR - BRASIL', 'SANTA ISABEL DO IVAI', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3192, 'SANTA MARIA DO OESTE/PR - BRASIL', 'SANTA MARIA DO OESTE', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3195, 'SANTA TEREZA DO OESTE/PR - BRASIL', 'SANTA TEREZA DO OESTE', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3199, 'SANTO ANTONIO DO CAIUA/PR - BRASIL', 'SANTO ANTONIO DO CAIUA', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3201, 'SANTO ANTONIO DO SUDOESTE/PR - BRASIL', 'SANTO ANTONIO DO SUDOESTE', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3204, 'SAO JERONIMO DA SERRA/PR - BRASIL', 'SAO JERONIMO DA SERRA', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3209, 'SAO JORGE DO IVAI/PR - BRASIL', 'SAO JORGE DO IVAI', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3211, 'SAO JORGE D´OESTE/PR - BRASIL', 'SAO JORGE D´OESTE', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3213, 'SAO JOSE DAS PALMEIRAS/PR - BRASIL', 'SAO JOSE DAS PALMEIRAS', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3218, 'SAO MIGUEL DO IGUACU/PR - BRASIL', 'SAO MIGUEL DO IGUACU', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3221, 'SAO PEDRO DO PARANA/PR - BRASIL', 'SAO PEDRO DO PARANA', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3224, 'SAPOPEMA/PR - BRASIL', 'SAPOPEMA', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3226, 'SAUDADE DO IGUACU/PR - BRASIL', 'SAUDADE DO IGUACU', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3231, 'SIQUEIRA CAMPOS/PR - BRASIL', 'SIQUEIRA CAMPOS', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3235, 'TAMBOARA/PR - BRASIL', 'TAMBOARA', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3031, 'JANDAIA DO SUL/PR - BRASIL', 'JANDAIA DO SUL', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3035, 'JARDIM ALEGRE/PR - BRASIL', 'JARDIM ALEGRE', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3040, 'JUNDIAI DO SUL/PR - BRASIL', 'JUNDIAI DO SUL', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3045, 'LARANJAL/PR - BRASIL', 'LARANJAL', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3051, 'LOBATO/PR - BRASIL', 'LOBATO', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3053, 'LUIZIANA/PR - BRASIL', 'LUIZIANA', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3055, 'LUPIONOPOLIS/PR - BRASIL', 'LUPIONOPOLIS', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3060, 'MANDAGUARI/PR - BRASIL', 'MANDAGUARI', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3065, 'MARECHAL CANDIDO RONDON/PR - BRASIL', 'MARECHAL CANDIDO RONDON', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3068, 'MARILANDIA DO SUL/PR - BRASIL', 'MARILANDIA DO SUL', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3073, 'MARIPA/PR - BRASIL', 'MARIPA', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3075, 'MARQUINHO/PR - BRASIL', 'MARQUINHO', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3078, 'MATINHOS/PR - BRASIL', 'MATINHOS', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3080, 'MAUA DA SERRA/PR - BRASIL', 'MAUA DA SERRA', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3084, 'MIRASELVA/PR - BRASIL', 'MIRASELVA', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3086, 'MOREIRA SALES/PR - BRASIL', 'MOREIRA SALES', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3089, 'NOSSA SENHORA DAS GRACAS/PR - BRASIL', 'NOSSA SENHORA DAS GRACAS', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3091, 'NOVA AMERICA DA COLINA/PR - BRASIL', 'NOVA AMERICA DA COLINA', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3095, 'NOVA ESPERANCA DO SUDOESTE/PR - BRASIL', 'NOVA ESPERANCA DO SUDOESTE', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3099, 'NOVA OLIMPIA/PR - BRASIL', 'NOVA OLIMPIA', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3101, 'NOVA PRATA DO IGUACU/PR - BRASIL', 'NOVA PRATA DO IGUACU', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3104, 'NOVA TEBAS/PR - BRASIL', 'NOVA TEBAS', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3106, 'NOVO SARANDI/PR - BRASIL', 'NOVO SARANDI', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3109, 'OURO VERDE DO OESTE/PR - BRASIL', 'OURO VERDE DO OESTE', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3113, 'PALMITAL/PR - BRASIL', 'PALMITAL', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2890, 'BELA VISTA DA CAROBA/PR - BRASIL', 'BELA VISTA DA CAROBA', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2893, 'BOA ESPERANCA/PR - BRASIL', 'BOA ESPERANCA', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2895, 'BOA VENTURA DE SAO ROQUE/PR - BRASIL', 'BOA VENTURA DE SAO ROQUE', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2897, 'BOCAIUVA DO SUL/PR - BRASIL', 'BOCAIUVA DO SUL', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2900, 'BOM SUCESSO DO SUL/PR - BRASIL', 'BOM SUCESSO DO SUL', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2904, 'BRASILANDIA DO SUL/PR - BRASIL', 'BRASILANDIA DO SUL', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2907, 'CAFEZAL DO SUL/PR - BRASIL', 'CAFEZAL DO SUL', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2911, 'CAMBIRA/PR - BRASIL', 'CAMBIRA', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2913, 'CAMPINA DO SIMAO/PR - BRASIL', 'CAMPINA DO SIMAO', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2915, 'CAMPO BONITO/PR - BRASIL', 'CAMPO BONITO', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2917, 'CAMPO LARGO/PR - BRASIL', 'CAMPO LARGO', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2919, 'CAMPO MOURAO/PR - BRASIL', 'CAMPO MOURAO', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2922, 'CANTAGALO/PR - BRASIL', 'CANTAGALO', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2924, 'CAPITAO LEONIDAS MARQUES/PR - BRASIL', 'CAPITAO LEONIDAS MARQUES', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2930, 'CENTENARIO DO SUL/PR - BRASIL', 'CENTENARIO DO SUL', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2933, 'CHOPINZINHO/PR - BRASIL', 'CHOPINZINHO', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2936, 'CLEVELANDIA/PR - BRASIL', 'CLEVELANDIA', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2939, 'CONGONHINHAS/PR - BRASIL', 'CONGONHINHAS', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2941, 'CONTENDA/PR - BRASIL', 'CONTENDA', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2943, 'CORNELIO PROCOPIO/PR - BRASIL', 'CORNELIO PROCOPIO', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2948, 'CRUZEIRO DO IGUACU/PR - BRASIL', 'CRUZEIRO DO IGUACU', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2950, 'CRUZEIRO DO SUL/PR - BRASIL', 'CRUZEIRO DO SUL', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2954, 'DIAMANTE DO NORTE/PR - BRASIL', 'DIAMANTE DO NORTE', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2959, 'DOUTOR CAMARGO/PR - BRASIL', 'DOUTOR CAMARGO', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2961, 'ENCANTADO DO OESTE/PR - BRASIL', 'ENCANTADO DO OESTE', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2964, 'ENTRE RIOS DO OESTE/PR - BRASIL', 'ENTRE RIOS DO OESTE', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2971, 'FERNANDES PINHEIRO/PR - BRASIL', 'FERNANDES PINHEIRO', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2760, 'NATUBA/PB - BRASIL', 'NATUBA', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2762, 'NOVA FLORESTA/PB - BRASIL', 'NOVA FLORESTA', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2765, 'OLHO D´AGUA/PB - BRASIL', 'OLHO D´AGUA', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2770, 'PATOS/PB - BRASIL', 'PATOS', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2772, 'PEDRA BRANCA/PB - BRASIL', 'PEDRA BRANCA', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2779, 'PILOES/PB - BRASIL', 'PILOES', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2781, 'PIRPIRITUBA/PB - BRASIL', 'PIRPIRITUBA', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2787, 'PRINCESA ISABEL/PB - BRASIL', 'PRINCESA ISABEL', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2792, 'RIACHAO DO POCO/PB - BRASIL', 'RIACHAO DO POCO', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2794, 'RIACHO DOS CAVALOS/PB - BRASIL', 'RIACHO DOS CAVALOS', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2800, 'SANTA HELENA/PB - BRASIL', 'SANTA HELENA', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2803, 'SANTA RITA/PB - BRASIL', 'SANTA RITA', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2805, 'SANTANA DE MANGUEIRA/PB - BRASIL', 'SANTANA DE MANGUEIRA', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2808, 'SANTO ANDRE/PB - BRASIL', 'SANTO ANDRE', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2812, 'SAO DOMINGOS DO CARIRI/PB - BRASIL', 'SAO DOMINGOS DO CARIRI', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2815, 'SAO JOAO DO TIGRE/PB - BRASIL', 'SAO JOAO DO TIGRE', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2817, 'SAO JOSE DE CAIANA/PB - BRASIL', 'SAO JOSE DE CAIANA', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2821, 'SAO JOSE DO BONFIM/PB - BRASIL', 'SAO JOSE DO BONFIM', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2823, 'SAO JOSE DO SABUGI/PB - BRASIL', 'SAO JOSE DO SABUGI', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2825, 'SAO JOSE DOS RAMOS/PB - BRASIL', 'SAO JOSE DOS RAMOS', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2828, 'SAO SEBASTIAO DE LAGOA DE ROCA/PB - BRAS', 'SAO SEBASTIAO DE LAGOA DE ROCA', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2834, 'SERRA GRANDE/PB - BRASIL', 'SERRA GRANDE', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2837, 'SERTAOZINHO/PB - BRASIL', 'SERTAOZINHO', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2614, 'SAO JOAO DO ARAGUAIA/PA - BRASIL', 'SAO JOAO DO ARAGUAIA', 14, 28);
commit;
prompt 4200 records committed...
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2617, 'SAO SEBASTIAO DA BOA VISTA/PA - BRASIL', 'SAO SEBASTIAO DA BOA VISTA', 14, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2620, 'SOURE/PA - BRASIL', 'SOURE', 14, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2622, 'TAILANDIA/PA - BRASIL', 'TAILANDIA', 14, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2625, 'TOME-ACU/PA - BRASIL', 'TOME-ACU', 14, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2627, 'TRAIRAO/PA - BRASIL', 'TRAIRAO', 14, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2630, 'ULIANOPOLIS/PA - BRASIL', 'ULIANOPOLIS', 14, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2634, 'VILA NEREU/PA - BRASIL', 'VILA NEREU', 14, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2635, 'VILA NOVA DESCOBERTA/PA - BRASIL', 'VILA NOVA DESCOBERTA', 14, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2638, 'VILA TABOCA/PA - BRASIL', 'VILA TABOCA', 14, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2641, 'VITORIA DO XINGU/PA - BRASIL', 'VITORIA DO XINGU', 14, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2644, 'AGUIAR/PB - BRASIL', 'AGUIAR', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2646, 'ALAGOA NOVA/PB - BRASIL', 'ALAGOA NOVA', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2649, 'ALGODAO DE JANDAIRA/PB - BRASIL', 'ALGODAO DE JANDAIRA', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2653, 'ARACAGI/PB - BRASIL', 'ARACAGI', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2657, 'AREIA DE BARAUNAS/PB - BRASIL', 'AREIA DE BARAUNAS', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2660, 'ASSIS CHATEAUBRIAND/PB - BRASIL', 'ASSIS CHATEAUBRIAND', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2664, 'BARRA DE SANTA ROSA/PB - BRASIL', 'BARRA DE SANTA ROSA', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2666, 'BARRA DE SAO MIGUEL/PB - BRASIL', 'BARRA DE SAO MIGUEL', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2670, 'BERNARDINO BATISTA/PB - BRASIL', 'BERNARDINO BATISTA', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2673, 'BOM SUCESSO/PB - BRASIL', 'BOM SUCESSO', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2675, 'BOQUEIRAO/PB - BRASIL', 'BOQUEIRAO', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2677, 'BREJO DO CRUZ/PB - BRASIL', 'BREJO DO CRUZ', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2680, 'CABACEIRAS/PB - BRASIL', 'CABACEIRAS', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2682, 'CACHOEIRA DOS INDIOS/PB - BRASIL', 'CACHOEIRA DOS INDIOS', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2686, 'CAJAZEIRAS/PB - BRASIL', 'CAJAZEIRAS', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2688, 'CAMALAU/PB - BRASIL', 'CAMALAU', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2690, 'CARAUBAS/PB - BRASIL', 'CARAUBAS', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2692, 'CASSERENGUE/PB - BRASIL', 'CASSERENGUE', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2694, 'CATOLE DO ROCHA/PB - BRASIL', 'CATOLE DO ROCHA', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2699, 'CONGO/PB - BRASIL', 'CONGO', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2701, 'COXIXOLA/PB - BRASIL', 'COXIXOLA', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2702, 'CRUZ DO ESPIRITO SANTO/PB - BRASIL', 'CRUZ DO ESPIRITO SANTO', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2488, 'ANAJAS/PA - BRASIL', 'ANAJAS', 14, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2490, 'ANAPU/PA - BRASIL', 'ANAPU', 14, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2496, 'BAIAO/PA - BRASIL', 'BAIAO', 14, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2498, 'BARCARENA/PA - BRASIL', 'BARCARENA', 14, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2501, 'BENEVIDES/PA - BRASIL', 'BENEVIDES', 14, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2505, 'BRASIL NOVO/PA - BRASIL', 'BRASIL NOVO', 14, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2511, 'CACHOEIRA DO ARARI/PA - BRASIL', 'CACHOEIRA DO ARARI', 14, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2514, 'CANAA DOS CARAJAS/PA - BRASIL', 'CANAA DOS CARAJAS', 14, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2517, 'CAPITAO POCO/PA - BRASIL', 'CAPITAO POCO', 14, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2521, 'COLARES/PA - BRASIL', 'COLARES', 14, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2522, 'CONCEICAO DO ARAGUAIA/PA - BRASIL', 'CONCEICAO DO ARAGUAIA', 14, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2529, 'DOM ELISEU/PA - BRASIL', 'DOM ELISEU', 14, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2531, 'FARO/PA - BRASIL', 'FARO', 14, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2535, 'GURUPA/PA - BRASIL', 'GURUPA', 14, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2537, 'IGARAPE-MIRI/PA - BRASIL', 'IGARAPE-MIRI', 14, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2539, 'IPIXUNA DO PARA/PA - BRASIL', 'IPIXUNA DO PARA', 14, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2543, 'JACAREACANGA/PA - BRASIL', 'JACAREACANGA', 14, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2550, 'MARABA/PA - BRASIL', 'MARABA', 14, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2552, 'MARAPANIM/PA - BRASIL', 'MARAPANIM', 14, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2555, 'MELGACO/PA - BRASIL', 'MELGACO', 14, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2558, 'MONTE ALEGRE/PA - BRASIL', 'MONTE ALEGRE', 14, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2563, 'NOVA ESPERANCA DO PIRIA/PA - BRASIL', 'NOVA ESPERANCA DO PIRIA', 14, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2569, 'OEIRAS DO PARA/PA - BRASIL', 'OEIRAS DO PARA', 14, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2572, 'OURILANDIA DO NORTE/PA - BRASIL', 'OURILANDIA DO NORTE', 14, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2360, 'SAO FRANCISCO DO GLORIA/MG - BRASIL', 'SAO FRANCISCO DO GLORIA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2365, 'SAO GONCALO DO RIO ABAIXO/MG - BRASIL', 'SAO GONCALO DO RIO ABAIXO', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2367, 'SAO GONCALO DO SAPUCAI/MG - BRASIL', 'SAO GONCALO DO SAPUCAI', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2370, 'SAO JOAO DA MATA/MG - BRASIL', 'SAO JOAO DA MATA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2372, 'SAO JOAO DAS MISSOES/MG - BRASIL', 'SAO JOAO DAS MISSOES', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2377, 'SAO JOAO DO PARAISO/MG - BRASIL', 'SAO JOAO DO PARAISO', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2379, 'SAO JOAO NEPOMUCENO/MG - BRASIL', 'SAO JOAO NEPOMUCENO', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2382, 'SAO JOSE DA VARGINHA/MG - BRASIL', 'SAO JOSE DA VARGINHA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2384, 'SAO JOSE DO DIVINO/MG - BRASIL', 'SAO JOSE DO DIVINO', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2390, 'SAO PEDRO DA UNIAO/MG - BRASIL', 'SAO PEDRO DA UNIAO', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2392, 'SAO PEDRO DOS FERROS/MG - BRASIL', 'SAO PEDRO DOS FERROS', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2395, 'SAO SEBASTIAO DA BELA VISTA/MG - BRASIL', 'SAO SEBASTIAO DA BELA VISTA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2397, 'SAO SEBASTIAO DO MARANHAO/MG - BRASIL', 'SAO SEBASTIAO DO MARANHAO', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2399, 'SAO SEBASTIAO DO PARAISO/MG - BRASIL', 'SAO SEBASTIAO DO PARAISO', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2401, 'SAO SEBASTIAO DO RIO VERDE/MG - BRASIL', 'SAO SEBASTIAO DO RIO VERDE', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2404, 'SAO VICENTE DE MINAS/MG - BRASIL', 'SAO VICENTE DE MINAS', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2408, 'SENADOR CORTES/MG - BRASIL', 'SENADOR CORTES', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2410, 'SENADOR JOSE BENTO/MG - BRASIL', 'SENADOR JOSE BENTO', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2412, 'SENHORA DE OLIVEIRA/MG - BRASIL', 'SENHORA DE OLIVEIRA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2414, 'SENHORA DOS REMEDIOS/MG - BRASIL', 'SENHORA DOS REMEDIOS', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2418, 'SERRA DA SAUDADE/MG - BRASIL', 'SERRA DA SAUDADE', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2420, 'SERRA DOS AIMORES/MG - BRASIL', 'SERRA DOS AIMORES', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2425, 'SILVEIRANIA/MG - BRASIL', 'SILVEIRANIA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2427, 'SIMAO PEREIRA/MG - BRASIL', 'SIMAO PEREIRA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2430, 'SOLEDADE DE MINAS/MG - BRASIL', 'SOLEDADE DE MINAS', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2435, 'TAQUARACU DE MINAS/MG - BRASIL', 'TAQUARACU DE MINAS', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2242, 'PIEDADE DOS GERAIS/MG - BRASIL', 'PIEDADE DOS GERAIS', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2246, 'PIRACEMA/MG - BRASIL', 'PIRACEMA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2249, 'PIRANGUCU/MG - BRASIL', 'PIRANGUCU', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2251, 'PIRAPETINGA/MG - BRASIL', 'PIRAPETINGA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2254, 'PITANGUI/MG - BRASIL', 'PITANGUI', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2258, 'POCOS DE CALDAS/MG - BRASIL', 'POCOS DE CALDAS', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2261, 'PONTE NOVA/MG - BRASIL', 'PONTE NOVA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2263, 'PONTO DOS VOLANTES/MG - BRASIL', 'PONTO DOS VOLANTES', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2267, 'POUSO ALEGRE/MG - BRASIL', 'POUSO ALEGRE', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2271, 'PRATAPOLIS/MG - BRASIL', 'PRATAPOLIS', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2273, 'PRESIDENTE BERNARDES/MG - BRASIL', 'PRESIDENTE BERNARDES', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2276, 'PRESIDENTE OLEGARIO/MG - BRASIL', 'PRESIDENTE OLEGARIO', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2278, 'QUARTEL GERAL/MG - BRASIL', 'QUARTEL GERAL', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2281, 'RAUL SOARES/MG - BRASIL', 'RAUL SOARES', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2284, 'RESPLENDOR/MG - BRASIL', 'RESPLENDOR', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2287, 'RIACHO DOS MACHADOS/MG - BRASIL', 'RIACHO DOS MACHADOS', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2289, 'RIBEIRAO VERMELHO/MG - BRASIL', 'RIBEIRAO VERMELHO', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2293, 'RIO DOCE/MG - BRASIL', 'RIO DOCE', 13, 28);
commit;
prompt 4300 records committed...
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2295, 'RIO MANSO/MG - BRASIL', 'RIO MANSO', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2298, 'RIO PARDO DE MINAS/MG - BRASIL', 'RIO PARDO DE MINAS', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2303, 'RITAPOLIS/MG - BRASIL', 'RITAPOLIS', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2305, 'RODEIRO/MG - BRASIL', 'RODEIRO', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2310, 'SABINOPOLIS/MG - BRASIL', 'SABINOPOLIS', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2315, 'SANTA BARBARA DO LESTE/MG - BRASIL', 'SANTA BARBARA DO LESTE', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2317, 'SANTA CRUZ DO ESCALVADO/MG - BRASIL', 'SANTA CRUZ DO ESCALVADO', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2320, 'SANTA JULIANA/MG - BRASIL', 'SANTA JULIANA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2325, 'SANTA MARIA DO SUACUI/MG - BRASIL', 'SANTA MARIA DO SUACUI', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2327, 'SANTA RITA DE IBITIPOCA/MG - BRASIL', 'SANTA RITA DE IBITIPOCA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2348, 'SANTO ANTONIO DO ITAMBE/MG - BRASIL', 'SANTO ANTONIO DO ITAMBE', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2350, 'SANTO ANTONIO DO MONTE/MG - BRASIL', 'SANTO ANTONIO DO MONTE', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2355, 'SAO BRAS DO SUACUI/MG - BRASIL', 'SAO BRAS DO SUACUI', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2357, 'SAO FRANCISCO/MG - BRASIL', 'SAO FRANCISCO', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2106, 'LEANDRO FERREIRA/MG - BRASIL', 'LEANDRO FERREIRA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2114, 'MACHACALIS/MG - BRASIL', 'MACHACALIS', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2116, 'MADRE DE DEUS DE MINAS/MG - BRASIL', 'MADRE DE DEUS DE MINAS', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2122, 'MANTENA/MG - BRASIL', 'MANTENA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2127, 'MARILAC/MG - BRASIL', 'MARILAC', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2129, 'MARLIERIA/MG - BRASIL', 'MARLIERIA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2131, 'MARTINHO CAMPOS/MG - BRASIL', 'MARTINHO CAMPOS', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2136, 'MATHIAS LOBATO/MG - BRASIL', 'MATHIAS LOBATO', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2139, 'MATIPO/MG - BRASIL', 'MATIPO', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2144, 'MEDINA/MG - BRASIL', 'MEDINA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2146, 'MERCES/MG - BRASIL', 'MERCES', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2151, 'MIRADOURO/MG - BRASIL', 'MIRADOURO', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2155, 'MONJOLOS/MG - BRASIL', 'MONJOLOS', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2157, 'MONTALVANIA/MG - BRASIL', 'MONTALVANIA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2161, 'MONTE CARMELO/MG - BRASIL', 'MONTE CARMELO', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2163, 'MONTE SIAO/MG - BRASIL', 'MONTE SIAO', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2168, 'MORRO DO PILAR/MG - BRASIL', 'MORRO DO PILAR', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2173, 'NACIP RAYDAN/MG - BRASIL', 'NACIP RAYDAN', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2176, 'NATERCIA/MG - BRASIL', 'NATERCIA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2179, 'NINHEIRA/MG - BRASIL', 'NINHEIRA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2184, 'NOVA RESENDE/MG - BRASIL', 'NOVA RESENDE', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2186, 'NOVA UNIAO/MG - BRASIL', 'NOVA UNIAO', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2188, 'NOVO ORIENTE DE MINAS/MG - BRASIL', 'NOVO ORIENTE DE MINAS', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2192, 'OLIVEIRA/MG - BRASIL', 'OLIVEIRA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2231, 'PEDRO LEOPOLDO/MG - BRASIL', 'PEDRO LEOPOLDO', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2235, 'PERDIGAO/MG - BRASIL', 'PERDIGAO', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2238, 'PESCADOR/MG - BRASIL', 'PESCADOR', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1966, 'FARIA LEMOS/MG - BRASIL', 'FARIA LEMOS', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1968, 'FELISBURGO/MG - BRASIL', 'FELISBURGO', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1970, 'FERNANDES TOURINHO/MG - BRASIL', 'FERNANDES TOURINHO', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1974, 'FORMIGA/MG - BRASIL', 'FORMIGA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1976, 'FORTALEZA DE MINAS/MG - BRASIL', 'FORTALEZA DE MINAS', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1979, 'FRANCISCO DUMONT/MG - BRASIL', 'FRANCISCO DUMONT', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1982, 'FREI INOCENCIO/MG - BRASIL', 'FREI INOCENCIO', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1985, 'FRONTEIRA DOS VALES/MG - BRASIL', 'FRONTEIRA DOS VALES', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1988, 'FUNILANDIA/MG - BRASIL', 'FUNILANDIA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1991, 'GONZAGA/MG - BRASIL', 'GONZAGA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1993, 'GOVERNADOR VALADARES/MG - BRASIL', 'GOVERNADOR VALADARES', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1998, 'GUARACIABA/MG - BRASIL', 'GUARACIABA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2001, 'GUARARA/MG - BRASIL', 'GUARARA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2004, 'GUIDOVAL/MG - BRASIL', 'GUIDOVAL', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2006, 'GUIRICEMA/MG - BRASIL', 'GUIRICEMA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2009, 'IAPU/MG - BRASIL', 'IAPU', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2011, 'IBIA/MG - BRASIL', 'IBIA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2014, 'IBIRITE/MG - BRASIL', 'IBIRITE', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2015, 'IBITIURA DE MINAS/MG - BRASIL', 'IBITIURA DE MINAS', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2019, 'IGARATINGA/MG - BRASIL', 'IGARATINGA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2023, 'IMBE DE MINAS/MG - BRASIL', 'IMBE DE MINAS', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2025, 'INDIANOPOLIS/MG - BRASIL', 'INDIANOPOLIS', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2029, 'INIMUTABA/MG - BRASIL', 'INIMUTABA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2033, 'IPIACU/MG - BRASIL', 'IPIACU', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2035, 'IRAI DE MINAS/MG - BRASIL', 'IRAI DE MINAS', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2037, 'ITABIRINHA DE MANTENA/MG - BRASIL', 'ITABIRINHA DE MANTENA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2043, 'ITAJUBA/MG - BRASIL', 'ITAJUBA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2047, 'ITAMBE DO MATO DENTRO/MG - BRASIL', 'ITAMBE DO MATO DENTRO', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2097, 'LAGOA FORMOSA/MG - BRASIL', 'LAGOA FORMOSA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2101, 'LAMBARI/MG - BRASIL', 'LAMBARI', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1841, 'CARLOS CHAGAS/MG - BRASIL', 'CARLOS CHAGAS', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1846, 'CARMO DO CAJURU/MG - BRASIL', 'CARMO DO CAJURU', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1848, 'CARMO DO RIO CLARO/MG - BRASIL', 'CARMO DO RIO CLARO', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1851, 'CARRANCAS/MG - BRASIL', 'CARRANCAS', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1855, 'CASCALHO RICO/MG - BRASIL', 'CASCALHO RICO', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1858, 'CATAS ALTAS DA NORUEGA/MG - BRASIL', 'CATAS ALTAS DA NORUEGA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1867, 'CHAPADA DO NORTE/MG - BRASIL', 'CHAPADA DO NORTE', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1871, 'CLARAVAL/MG - BRASIL', 'CLARAVAL', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1872, 'CLARO DOS POCOES/MG - BRASIL', 'CLARO DOS POCOES', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1877, 'COMERCINHO/MG - BRASIL', 'COMERCINHO', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1880, 'CONCEICAO DAS ALAGOAS/MG - BRASIL', 'CONCEICAO DAS ALAGOAS', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1883, 'CONCEICAO DO MATO DENTRO/MG - BRASIL', 'CONCEICAO DO MATO DENTRO', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1885, 'CONCEICAO DO RIO VERDE/MG - BRASIL', 'CONCEICAO DO RIO VERDE', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1889, 'CONGONHAS/MG - BRASIL', 'CONGONHAS', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1892, 'CONSELHEIRO LAFAIETE/MG - BRASIL', 'CONSELHEIRO LAFAIETE', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1896, 'COQUEIRAL/MG - BRASIL', 'COQUEIRAL', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1901, 'COROACI/MG - BRASIL', 'COROACI', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1903, 'CORONEL FABRICIANO/MG - BRASIL', 'CORONEL FABRICIANO', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1908, 'CORREGO DO BOM JESUS/MG - BRASIL', 'CORREGO DO BOM JESUS', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1911, 'CRISTAIS/MG - BRASIL', 'CRISTAIS', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1945, 'DORESOPOLIS/MG - BRASIL', 'DORESOPOLIS', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1948, 'ELOI MENDES/MG - BRASIL', 'ELOI MENDES', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1952, 'ENTRE RIOS DE MINAS/MG - BRASIL', 'ENTRE RIOS DE MINAS', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1957, 'ESPIRITO SANTO DO DOURADO/MG - BRASIL', 'ESPIRITO SANTO DO DOURADO', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1960, 'ESTRELA DO INDAIA/MG - BRASIL', 'ESTRELA DO INDAIA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1963, 'EWBANK DA CAMARA/MG - BRASIL', 'EWBANK DA CAMARA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1715, 'ALEM PARAIBA/MG - BRASIL', 'ALEM PARAIBA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1717, 'ALFREDO VASCONCELOS/MG - BRASIL', 'ALFREDO VASCONCELOS', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1722, 'ALTO JEQUITIBA/MG - BRASIL', 'ALTO JEQUITIBA', 13, 28);
commit;
prompt 4400 records committed...
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1727, 'AMPARO DO SERRA/MG - BRASIL', 'AMPARO DO SERRA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1730, 'ANTONIO CARLOS/MG - BRASIL', 'ANTONIO CARLOS', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1738, 'ARAPONGA/MG - BRASIL', 'ARAPONGA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1741, 'ARAUJOS/MG - BRASIL', 'ARAUJOS', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1744, 'ARCOS/MG - BRASIL', 'ARCOS', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1746, 'ARGIRITA/MG - BRASIL', 'ARGIRITA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1749, 'ATALEIA/MG - BRASIL', 'ATALEIA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1750, 'AUGUSTO DE LIMA/MG - BRASIL', 'AUGUSTO DE LIMA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1755, 'BANDEIRA DO SUL/MG - BRASIL', 'BANDEIRA DO SUL', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1757, 'BARAO DE MONTE ALTO/MG - BRASIL', 'BARAO DE MONTE ALTO', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1761, 'BELA VISTA DE MINAS/MG - BRASIL', 'BELA VISTA DE MINAS', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1764, 'BELO ORIENTE/MG - BRASIL', 'BELO ORIENTE', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1768, 'BETIM/MG - BRASIL', 'BETIM', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1770, 'BICAS/MG - BRASIL', 'BICAS', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1772, 'BOA ESPERANCA/MG - BRASIL', 'BOA ESPERANCA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1774, 'BOCAIUVA/MG - BRASIL', 'BOCAIUVA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1776, 'BOM JARDIM DE MINAS/MG - BRASIL', 'BOM JARDIM DE MINAS', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1778, 'BOM JESUS DO AMPARO/MG - BRASIL', 'BOM JESUS DO AMPARO', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1782, 'BONFIM/MG - BRASIL', 'BONFIM', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1820, 'CANA VERDE/MG - BRASIL', 'CANA VERDE', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1823, 'CANDEIAS/MG - BRASIL', 'CANDEIAS', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1825, 'CAPELA NOVA/MG - BRASIL', 'CAPELA NOVA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1828, 'CAPIM BRANCO/MG - BRASIL', 'CAPIM BRANCO', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1831, 'CAPITAO ENEAS/MG - BRASIL', 'CAPITAO ENEAS', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1832, 'CAPITOLIO/MG - BRASIL', 'CAPITOLIO', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1835, 'CARANAIBA/MG - BRASIL', 'CARANAIBA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1838, 'CARATINGA/MG - BRASIL', 'CARATINGA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1579, 'POCONE/MT - BRASIL', 'POCONE', 11, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1580, 'PONTAL DO ARAGUAIA/MT - BRASIL', 'PONTAL DO ARAGUAIA', 11, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1583, 'PORTO ALEGRE DO NORTE/MT - BRASIL', 'PORTO ALEGRE DO NORTE', 11, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1586, 'PORTO ESTRELA/MT - BRASIL', 'PORTO ESTRELA', 11, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1589, 'PRIMAVERA DO LESTE/MT - BRASIL', 'PRIMAVERA DO LESTE', 11, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1592, 'RIBEIRAO CASCALHEIRA/MT - BRASIL', 'RIBEIRAO CASCALHEIRA', 11, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1595, 'RONDONOPOLIS/MT - BRASIL', 'RONDONOPOLIS', 11, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1598, 'SANTA CARMEM/MT - BRASIL', 'SANTA CARMEM', 11, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1603, 'SANTO ANTONIO DO LEVERGER/MT - BRASIL', 'SANTO ANTONIO DO LEVERGER', 11, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1606, 'SAO JOSE DO RIO CLARO/MT - BRASIL', 'SAO JOSE DO RIO CLARO', 11, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1608, 'SAO JOSE DOS QUATRO MARCOS/MT - BRASIL', 'SAO JOSE DOS QUATRO MARCOS', 11, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1613, 'TANGARA DA SERRA/MT - BRASIL', 'TANGARA DA SERRA', 11, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1618, 'UNIAO DO SUL/MT - BRASIL', 'UNIAO DO SUL', 11, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1621, 'VILA BELA DA SANTISSIMA TRINDADE/MT - BR', 'VILA BELA DA SANTISSIMA TRINDADE', 11, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1630, 'ANTONIO JOAO/MS - BRASIL', 'ANTONIO JOAO', 12, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1632, 'AQUIDAUANA/MS - BRASIL', 'AQUIDAUANA', 12, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1634, 'BANDEIRANTES/MS - BRASIL', 'BANDEIRANTES', 12, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1640, 'BRASILANDIA/MS - BRASIL', 'BRASILANDIA', 12, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1643, 'CAMPO GRANDE/MS - BRASIL', 'CAMPO GRANDE', 12, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1685, 'RIBAS DO RIO PARDO/MS - BRASIL', 'RIBAS DO RIO PARDO', 12, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1688, 'RIO VERDE DE MATO GROSSO/MS - BRASIL', 'RIO VERDE DE MATO GROSSO', 12, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1696, 'TACURU/MS - BRASIL', 'TACURU', 12, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1698, 'TERENOS/MS - BRASIL', 'TERENOS', 12, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1700, 'VICENTINA/MS - BRASIL', 'VICENTINA', 12, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1702, 'ABAETE/MG - BRASIL', 'ABAETE', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1452, 'SAO RAIMUNDO/MA - BRASIL', 'SAO RAIMUNDO', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1453, 'SAO RAIMUNDO DAS MANGABEIRAS/MA - BRASIL', 'SAO RAIMUNDO DAS MANGABEIRAS', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1459, 'SENADOR LA ROCQUE/MA - BRASIL', 'SENADOR LA ROCQUE', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1461, 'SITIO NOVO/MA - BRASIL', 'SITIO NOVO', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1463, 'SUCUPIRA DO RIACHAO/MA - BRASIL', 'SUCUPIRA DO RIACHAO', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1469, 'TRES LAGOAS DO MANDUCA/MA - BRASIL', 'TRES LAGOAS DO MANDUCA', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1474, 'TURILANDIA/MA - BRASIL', 'TURILANDIA', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1477, 'VALE VERDE/MA - BRASIL', 'VALE VERDE', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1483, 'VITORINO FREIRE/MA - BRASIL', 'VITORINO FREIRE', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1487, 'ALTA FLORESTA/MT - BRASIL', 'ALTA FLORESTA', 11, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1489, 'ALTO BOA VISTA/MT - BRASIL', 'ALTO BOA VISTA', 11, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1492, 'ALTO PARAGUAI/MT - BRASIL', 'ALTO PARAGUAI', 11, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1499, 'ARENAPOLIS/MT - BRASIL', 'ARENAPOLIS', 11, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1502, 'BARAO DE MELGACO/MT - BRASIL', 'BARAO DE MELGACO', 11, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1504, 'BARRA DO GARCAS/MT - BRASIL', 'BARRA DO GARCAS', 11, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1510, 'CAMPO NOVO DO PARECIS/MT - BRASIL', 'CAMPO NOVO DO PARECIS', 11, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1513, 'CANA BRAVA DO NORTE/MT - BRASIL', 'CANA BRAVA DO NORTE', 11, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1558, 'NOSSA SENHORA DO LIVRAMENTO/MT - BRASIL', 'NOSSA SENHORA DO LIVRAMENTO', 11, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1562, 'NOVA GUARITA/MT - BRASIL', 'NOVA GUARITA', 11, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1564, 'NOVA MARINGA/MT - BRASIL', 'NOVA MARINGA', 11, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1566, 'NOVA MUTUM/MT - BRASIL', 'NOVA MUTUM', 11, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1568, 'NOVA SANTA HELENA/MT - BRASIL', 'NOVA SANTA HELENA', 11, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1571, 'NOVO HORIZONTE DO NORTE/MT - BRASIL', 'NOVO HORIZONTE DO NORTE', 11, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1575, 'PARANATINGA/MT - BRASIL', 'PARANATINGA', 11, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1577, 'PEIXOTO DE AZEVEDO/MT - BRASIL', 'PEIXOTO DE AZEVEDO', 11, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1334, 'LAGOA DOS RODRIGUES/MA - BRASIL', 'LAGOA DOS RODRIGUES', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1336, 'LAJEADO/MA - BRASIL', 'LAJEADO', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1338, 'LAJEADO VELHO/MA - BRASIL', 'LAJEADO VELHO', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1341, 'LORETO/MA - BRASIL', 'LORETO', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1343, 'MAGALHAES DE ALMEIDA/MA - BRASIL', 'MAGALHAES DE ALMEIDA', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1346, 'MARAJA DO SENA/MA - BRASIL', 'MARAJA DO SENA', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1349, 'MATA ROMA/MA - BRASIL', 'MATA ROMA', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1352, 'MATOES DO NORTE/MA - BRASIL', 'MATOES DO NORTE', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1355, 'MIRADOR/MA - BRASIL', 'MIRADOR', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1356, 'MIRANDA DO NORTE/MA - BRASIL', 'MIRANDA DO NORTE', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1360, 'MONTES ALTOS/MA - BRASIL', 'MONTES ALTOS', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1363, 'MUNDO NOVO/MA - BRASIL', 'MUNDO NOVO', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1365, 'NINA RODRIGUES/MA - BRASIL', 'NINA RODRIGUES', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1367, 'NOVA COLINAS/MA - BRASIL', 'NOVA COLINAS', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1369, 'NOVA OLINDA DO MARANHAO/MA - BRASIL', 'NOVA OLINDA DO MARANHAO', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1373, 'OLINDA NOVA DO MARANHAO/MA - BRASIL', 'OLINDA NOVA DO MARANHAO', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1377, 'PALMAS/MA - BRASIL', 'PALMAS', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1379, 'PARAIBANO/MA - BRASIL', 'PARAIBANO', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1381, 'PASSAGEM BOA/MA - BRASIL', 'PASSAGEM BOA', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1384, 'PAULINO NEVES/MA - BRASIL', 'PAULINO NEVES', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1387, 'PEDRO DO ROSARIO/MA - BRASIL', 'PEDRO DO ROSARIO', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1391, 'PERITORO/MA - BRASIL', 'PERITORO', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1424, 'SANTANA DO MARANHAO/MA - BRASIL', 'SANTANA DO MARANHAO', 10, 28);
commit;
prompt 4500 records committed...
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1426, 'SANTO ANTONIO DOS LOPES/MA - BRASIL', 'SANTO ANTONIO DOS LOPES', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1428, 'SAO BENEDITO DO RIO PRETO/MA - BRASIL', 'SAO BENEDITO DO RIO PRETO', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1431, 'SAO DOMINGOS DO AZEITAO/MA - BRASIL', 'SAO DOMINGOS DO AZEITAO', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1436, 'SAO JOAO/MA - BRASIL', 'SAO JOAO', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1438, 'SAO JOAO DO CARU/MA - BRASIL', 'SAO JOAO DO CARU', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1440, 'SAO JOAO DO SOTER/MA - BRASIL', 'SAO JOAO DO SOTER', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1442, 'SAO JOSE DAS VERDADES/MA - BRASIL', 'SAO JOSE DAS VERDADES', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1445, 'SAO JOSE DOS BASILIOS/MA - BRASIL', 'SAO JOSE DOS BASILIOS', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1450, 'SAO PEDRO DA AGUA BRANCA/MA - BRASIL', 'SAO PEDRO DA AGUA BRANCA', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1211, 'AXIXA/MA - BRASIL', 'AXIXA', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1213, 'BACABEIRA/MA - BRASIL', 'BACABEIRA', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1215, 'BACURI DO RIACHAO/MA - BRASIL', 'BACURI DO RIACHAO', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1219, 'BARRA DO CORDA/MA - BRASIL', 'BARRA DO CORDA', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1226, 'BERNARDO DO MEARIM/MA - BRASIL', 'BERNARDO DO MEARIM', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1228, 'BOA VISTA DO GURUPI/MA - BRASIL', 'BOA VISTA DO GURUPI', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1231, 'BOM LUGAR/MA - BRASIL', 'BOM LUGAR', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1233, 'BREJINHO/MA - BRASIL', 'BREJINHO', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1238, 'BURITICUPU/MA - BRASIL', 'BURITICUPU', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1242, 'CACHOEIRINHA/MA - BRASIL', 'CACHOEIRINHA', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1246, 'CAJAZEIRAS II/MA - BRASIL', 'CAJAZEIRAS II', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1249, 'CAMPESTRE DO MARANHAO/MA - BRASIL', 'CAMPESTRE DO MARANHAO', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1254, 'CAROLINA/MA - BRASIL', 'CAROLINA', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1257, 'CEDRAL/MA - BRASIL', 'CEDRAL', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1261, 'CENTRO DO ROQUE/MA - BRASIL', 'CENTRO DO ROQUE', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1296, 'GARROTA/MA - BRASIL', 'GARROTA', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1298, 'GODOFREDO VIANA/MA - BRASIL', 'GODOFREDO VIANA', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1302, 'GOVERNADOR EUGENIO BARROS/MA - BRASIL', 'GOVERNADOR EUGENIO BARROS', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1304, 'GOVERNADOR NEWTON BELLO/MA - BRASIL', 'GOVERNADOR NEWTON BELLO', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1309, 'GUIMARAES/MA - BRASIL', 'GUIMARAES', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1310, 'HUMBERTO DE CAMPOS/MA - BRASIL', 'HUMBERTO DE CAMPOS', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1316, 'ITAIPAVA DO GRAJAU/MA - BRASIL', 'ITAIPAVA DO GRAJAU', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1319, 'JACARE/MA - BRASIL', 'JACARE', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1325, 'JUNCO DO MARANHAO/MA - BRASIL', 'JUNCO DO MARANHAO', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1328, 'LAGO DO JUNCO/MA - BRASIL', 'LAGO DO JUNCO', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1331, 'LAGOA COMPRIDA/MA - BRASIL', 'LAGOA COMPRIDA', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1085, 'MUTUNOPOLIS/GO - BRASIL', 'MUTUNOPOLIS', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1089, 'NIQUELANDIA/GO - BRASIL', 'NIQUELANDIA', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1091, 'NOVA AURORA/GO - BRASIL', 'NOVA AURORA', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1094, 'NOVA IGUACU DE GOIAS/GO - BRASIL', 'NOVA IGUACU DE GOIAS', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1097, 'NOVO BRASIL/GO - BRASIL', 'NOVO BRASIL', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1100, 'ORIZONA/GO - BRASIL', 'ORIZONA', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1101, 'OURO VERDE DE GOIAS/GO - BRASIL', 'OURO VERDE DE GOIAS', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1105, 'PALESTINA DE GOIAS/GO - BRASIL', 'PALESTINA DE GOIAS', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1109, 'PALMINOPOLIS/GO - BRASIL', 'PALMINOPOLIS', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1112, 'PARAUNA/GO - BRASIL', 'PARAUNA', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1114, 'PETROLINA DE GOIAS/GO - BRASIL', 'PETROLINA DE GOIAS', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1117, 'PIRANHAS/GO - BRASIL', 'PIRANHAS', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1119, 'PIRES BELO/GO - BRASIL', 'PIRES BELO', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1122, 'PONTALINA/GO - BRASIL', 'PONTALINA', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1124, 'PORTEIRAO/GO - BRASIL', 'PORTEIRAO', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1127, 'PROFESSOR JAMIL/GO - BRASIL', 'PROFESSOR JAMIL', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1131, 'RIO QUENTE/GO - BRASIL', 'RIO QUENTE', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1133, 'RIVERLANDIA/GO - BRASIL', 'RIVERLANDIA', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1136, 'SANCLERLANDIA/GO - BRASIL', 'SANCLERLANDIA', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1157, 'SAO LUIZ DO NORTE/GO - BRASIL', 'SAO LUIZ DO NORTE', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1159, 'SAO MIGUEL DO PASSA QUATRO/GO - BRASIL', 'SAO MIGUEL DO PASSA QUATRO', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1163, 'SERRANOPOLIS/GO - BRASIL', 'SERRANOPOLIS', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1166, 'TAQUARAL DE GOIAS/GO - BRASIL', 'TAQUARAL DE GOIAS', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1168, 'TEREZOPOLIS DE GOIAS/GO - BRASIL', 'TEREZOPOLIS DE GOIAS', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1172, 'TURVANIA/GO - BRASIL', 'TURVANIA', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1175, 'URUACU/GO - BRASIL', 'URUACU', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1178, 'VALPARAISO DE GOIAS/GO - BRASIL', 'VALPARAISO DE GOIAS', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1181, 'VICENTINOPOLIS/GO - BRASIL', 'VICENTINOPOLIS', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1184, 'ACAIZAL GRANDE/MA - BRASIL', 'ACAIZAL GRANDE', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1186, 'AGUA DOCE DO MARANHAO/MA - BRASIL', 'AGUA DOCE DO MARANHAO', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1190, 'ALTO ALEGRE DO MARANHAO/MA - BRASIL', 'ALTO ALEGRE DO MARANHAO', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1192, 'ALTO ALEGRE I/MA - BRASIL', 'ALTO ALEGRE I', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1195, 'ALTO DE AREIA I/MA - BRASIL', 'ALTO DE AREIA I', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1197, 'ALTO DO COCO/MA - BRASIL', 'ALTO DO COCO', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1199, 'AMAPA DO MARANHAO/MA - BRASIL', 'AMAPA DO MARANHAO', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1202, 'ANAPURUS/MA - BRASIL', 'ANAPURUS', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1205, 'APICUM-ACU/MA - BRASIL', 'APICUM-ACU', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (952, 'AURILANDIA/GO - BRASIL', 'AURILANDIA', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (957, 'BOM JARDIM DE GOIAS/GO - BRASIL', 'BOM JARDIM DE GOIAS', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (960, 'BONOPOLIS/GO - BRASIL', 'BONOPOLIS', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (965, 'BURITINOPOLIS/GO - BRASIL', 'BURITINOPOLIS', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (967, 'CACHOEIRA ALTA/GO - BRASIL', 'CACHOEIRA ALTA', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (969, 'CACHOEIRA DOURADA/GO - BRASIL', 'CACHOEIRA DOURADA', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (977, 'CAMPO ALEGRE DE GOIAS/GO - BRASIL', 'CAMPO ALEGRE DE GOIAS', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (981, 'CARMO DO RIO VERDE/GO - BRASIL', 'CARMO DO RIO VERDE', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (985, 'CAVALCANTE/GO - BRASIL', 'CAVALCANTE', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (991, 'CLAUDINAPOLIS/GO - BRASIL', 'CLAUDINAPOLIS', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (993, 'COLINAS DO SUL/GO - BRASIL', 'COLINAS DO SUL', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (995, 'CORUMBA DE GOIAS/GO - BRASIL', 'CORUMBA DE GOIAS', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1044, 'ITAGUARU/GO - BRASIL', 'ITAGUARU', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1047, 'ITAPIRAPUA/GO - BRASIL', 'ITAPIRAPUA', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1052, 'IVOLANDIA/GO - BRASIL', 'IVOLANDIA', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1056, 'JAUPACI/GO - BRASIL', 'JAUPACI', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1060, 'LAGOA DO BAUZINHO/GO - BRASIL', 'LAGOA DO BAUZINHO', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1063, 'LINDA VISTA/GO - BRASIL', 'LINDA VISTA', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1068, 'MARCIANOPOLIS/GO - BRASIL', 'MARCIANOPOLIS', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1074, 'MINEIROS/GO - BRASIL', 'MINEIROS', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1076, 'MONTE ALEGRE DE GOIAS/GO - BRASIL', 'MONTE ALEGRE DE GOIAS', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1079, 'MONTIVIDIU DO NORTE/GO - BRASIL', 'MONTIVIDIU DO NORTE', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1084, 'MUNDO NOVO/GO - BRASIL', 'MUNDO NOVO', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (821, 'SAO GONCALO DO AMARANTE/CE - BRASIL', 'SAO GONCALO DO AMARANTE', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (828, 'TABULEIRO DO NORTE/CE - BRASIL', 'TABULEIRO DO NORTE', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (832, 'TEJUCUOCA/CE - BRASIL', 'TEJUCUOCA', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (839, 'URUBURETAMA/CE - BRASIL', 'URUBURETAMA', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (842, 'VARZEA ALEGRE/CE - BRASIL', 'VARZEA ALEGRE', 6, 28);
commit;
prompt 4600 records committed...
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (847, 'AGUIA BRANCA/ES - BRASIL', 'AGUIA BRANCA', 8, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (850, 'ALTO RIO NOVO/ES - BRASIL', 'ALTO RIO NOVO', 8, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (856, 'BARRA DE SAO FRANCISCO/ES - BRASIL', 'BARRA DE SAO FRANCISCO', 8, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (859, 'BREJETUBA/ES - BRASIL', 'BREJETUBA', 8, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (860, 'CACHOEIRO DE ITAPEMIRIM/ES - BRASIL', 'CACHOEIRO DE ITAPEMIRIM', 8, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (904, 'RIO NOVO DO SUL/ES - BRASIL', 'RIO NOVO DO SUL', 8, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (906, 'SANTA MARIA DE JETIBA/ES - BRASIL', 'SANTA MARIA DE JETIBA', 8, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (909, 'SAO GABRIEL DA PALHA/ES - BRASIL', 'SAO GABRIEL DA PALHA', 8, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (911, 'SAO MATEUS/ES - BRASIL', 'SAO MATEUS', 8, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (914, 'SOORETAMA/ES - BRASIL', 'SOORETAMA', 8, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (916, 'VENDA NOVA DO IMIGRANTE/ES - BRASIL', 'VENDA NOVA DO IMIGRANTE', 8, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (920, 'VILA VELHA/ES - BRASIL', 'VILA VELHA', 8, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (923, 'ABADIANIA/GO - BRASIL', 'ABADIANIA', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (926, 'AGUA FRIA DE GOIAS/GO - BRASIL', 'AGUA FRIA DE GOIAS', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (928, 'AGUAS LINDAS DE GOIAS/GO - BRASIL', 'AGUAS LINDAS DE GOIAS', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (932, 'ALTO HORIZONTE/GO - BRASIL', 'ALTO HORIZONTE', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (934, 'ALVORADA DO NORTE/GO - BRASIL', 'ALVORADA DO NORTE', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (937, 'AMORINOPOLIS/GO - BRASIL', 'AMORINOPOLIS', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (940, 'ANICUNS/GO - BRASIL', 'ANICUNS', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (941, 'APARECIDA DE GOIANIA/GO - BRASIL', 'APARECIDA DE GOIANIA', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (944, 'APORE/GO - BRASIL', 'APORE', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (947, 'ARAGOIANIA/GO - BRASIL', 'ARAGOIANIA', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (950, 'ARENOPOLIS/GO - BRASIL', 'ARENOPOLIS', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (680, 'BAIXIO/CE - BRASIL', 'BAIXIO', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (683, 'BARREIRA/CE - BRASIL', 'BARREIRA', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (685, 'BARROQUINHA/CE - BRASIL', 'BARROQUINHA', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (689, 'BOA VIAGEM/CE - BRASIL', 'BOA VIAGEM', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (691, 'CAMOCIM/CE - BRASIL', 'CAMOCIM', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (694, 'CAPISTRANO/CE - BRASIL', 'CAPISTRANO', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (697, 'CARIRIACU/CE - BRASIL', 'CARIRIACU', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (700, 'CASCAVEL/CE - BRASIL', 'CASCAVEL', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (703, 'CAUCAIA/CE - BRASIL', 'CAUCAIA', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (706, 'CHORO/CE - BRASIL', 'CHORO', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (708, 'COREAU/CE - BRASIL', 'COREAU', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (711, 'CROATA/CE - BRASIL', 'CROATA', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (713, 'DEPUTADO IRAPUAN PINHEIRO/CE - BRASIL', 'DEPUTADO IRAPUAN PINHEIRO', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (719, 'FORTIM/CE - BRASIL', 'FORTIM', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (766, 'MARTINOPOLE/CE - BRASIL', 'MARTINOPOLE', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (770, 'MILAGRES/CE - BRASIL', 'MILAGRES', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (773, 'MISSAO VELHA/CE - BRASIL', 'MISSAO VELHA', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (779, 'MUCAMBO/CE - BRASIL', 'MUCAMBO', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (781, 'NOVA OLINDA/CE - BRASIL', 'NOVA OLINDA', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (787, 'PACATUBA/CE - BRASIL', 'PACATUBA', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (790, 'PALHANO/CE - BRASIL', 'PALHANO', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (796, 'PEDRA BRANCA/CE - BRASIL', 'PEDRA BRANCA', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (799, 'PEREIRO/CE - BRASIL', 'PEREIRO', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (804, 'PORTEIRAS/CE - BRASIL', 'PORTEIRAS', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (807, 'QUITERIANOPOLIS/CE - BRASIL', 'QUITERIANOPOLIS', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (810, 'QUIXERAMOBIM/CE - BRASIL', 'QUIXERAMOBIM', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (817, 'SANTA QUITERIA/CE - BRASIL', 'SANTA QUITERIA', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (549, 'PLANALTO/BA - BRASIL', 'PLANALTO', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (552, 'PONTO NOVO/BA - BRASIL', 'PONTO NOVO', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (555, 'PRADO/BA - BRASIL', 'PRADO', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (556, 'PRESIDENTE DUTRA/BA - BRASIL', 'PRESIDENTE DUTRA', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (562, 'RAFAEL JAMBEIRO/BA - BRASIL', 'RAFAEL JAMBEIRO', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (565, 'RIACHAO DAS NEVES/BA - BRASIL', 'RIACHAO DAS NEVES', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (568, 'RIBEIRA DO AMPARO/BA - BRASIL', 'RIBEIRA DO AMPARO', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (570, 'RIBEIRAO DO LARGO/BA - BRASIL', 'RIBEIRAO DO LARGO', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (576, 'RUY BARBOSA/BA - BRASIL', 'RUY BARBOSA', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (578, 'SALVADOR/BA - BRASIL', 'SALVADOR', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (580, 'SANTA BRIGIDA/BA - BRASIL', 'SANTA BRIGIDA', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (611, 'SEBASTIAO LARANJEIRAS/BA - BRASIL', 'SEBASTIAO LARANJEIRAS', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (614, 'SERRA DO RAMALHO/BA - BRASIL', 'SERRA DO RAMALHO', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (620, 'SITIO DO MATO/BA - BRASIL', 'SITIO DO MATO', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (623, 'SOUTO SOARES/BA - BRASIL', 'SOUTO SOARES', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (630, 'TEIXEIRA DE FREITAS/BA - BRASIL', 'TEIXEIRA DE FREITAS', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (633, 'TEOLANDIA/BA - BRASIL', 'TEOLANDIA', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (635, 'TREMEDAL/BA - BRASIL', 'TREMEDAL', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (639, 'UBAITABA/BA - BRASIL', 'UBAITABA', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (643, 'UNA/BA - BRASIL', 'UNA', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (648, 'VALENTE/BA - BRASIL', 'VALENTE', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (653, 'VERA CRUZ/BA - BRASIL', 'VERA CRUZ', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (655, 'VITORIA DA CONQUISTA/BA - BRASIL', 'VITORIA DA CONQUISTA', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (659, 'XIQUE-XIQUE/BA - BRASIL', 'XIQUE-XIQUE', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (663, 'ACOPIARA/CE - BRASIL', 'ACOPIARA', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (666, 'ALTANEIRA/CE - BRASIL', 'ALTANEIRA', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (668, 'AMONTADA/CE - BRASIL', 'AMONTADA', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (670, 'APUIARES/CE - BRASIL', 'APUIARES', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (673, 'ARACOIABA/CE - BRASIL', 'ARACOIABA', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (676, 'ARATUBA/CE - BRASIL', 'ARATUBA', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (408, 'INHAMBUPE/BA - BRASIL', 'INHAMBUPE', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (411, 'IPIRA/BA - BRASIL', 'IPIRA', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (413, 'IRAJUBA/BA - BRASIL', 'IRAJUBA', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (416, 'IRARA/BA - BRASIL', 'IRARA', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (419, 'ITABERABA/BA - BRASIL', 'ITABERABA', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (422, 'ITAETE/BA - BRASIL', 'ITAETE', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (425, 'ITAGIMIRIM/BA - BRASIL', 'ITAGIMIRIM', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (427, 'ITAJU DO COLONIA/BA - BRASIL', 'ITAJU DO COLONIA', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (431, 'ITAMBE/BA - BRASIL', 'ITAMBE', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (433, 'ITANHEM/BA - BRASIL', 'ITANHEM', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (436, 'ITAPEBI/BA - BRASIL', 'ITAPEBI', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (438, 'ITAPICURU/BA - BRASIL', 'ITAPICURU', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (487, 'MALHADA DE PEDRAS/BA - BRASIL', 'MALHADA DE PEDRAS', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (491, 'MARAGOGIPE/BA - BRASIL', 'MARAGOGIPE', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (493, 'MARCIONILIO SOUZA/BA - BRASIL', 'MARCIONILIO SOUZA', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (497, 'MEDEIROS NETO/BA - BRASIL', 'MEDEIROS NETO', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (500, 'MIRANGABA/BA - BRASIL', 'MIRANGABA', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (502, 'MONTE SANTO/BA - BRASIL', 'MONTE SANTO', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (505, 'MORTUGABA/BA - BRASIL', 'MORTUGABA', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (508, 'MULUNGU DO MORRO/BA - BRASIL', 'MULUNGU DO MORRO', 5, 28);
commit;
prompt 4700 records committed...
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (511, 'MUQUEM DE SAO FRANCISCO/BA - BRASIL', 'MUQUEM DE SAO FRANCISCO', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (516, 'NORDESTINA/BA - BRASIL', 'NORDESTINA', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (518, 'NOVA FATIMA/BA - BRASIL', 'NOVA FATIMA', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (521, 'NOVA REDENCAO/BA - BRASIL', 'NOVA REDENCAO', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (524, 'NOVO HORIZONTE/BA - BRASIL', 'NOVO HORIZONTE', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (527, 'OLIVEIRA DOS BREJINHOS/BA - BRASIL', 'OLIVEIRA DOS BREJINHOS', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (530, 'PALMAS DE MONTE ALTO/BA - BRASIL', 'PALMAS DE MONTE ALTO', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (534, 'PARIPIRANGA/BA - BRASIL', 'PARIPIRANGA', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (537, 'PE DE SERRA/BA - BRASIL', 'PE DE SERRA', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (540, 'PIATA/BA - BRASIL', 'PIATA', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (541, 'PILAO ARCADO/BA - BRASIL', 'PILAO ARCADO', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (545, 'PIRAI DO NORTE/BA - BRASIL', 'PIRAI DO NORTE', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (275, 'BANZAE/BA - BRASIL', 'BANZAE', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (277, 'BARRA DA ESTIVA/BA - BRASIL', 'BARRA DA ESTIVA', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (279, 'BARRA DO MENDES/BA - BRASIL', 'BARRA DO MENDES', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (286, 'BIRITINGA/BA - BRASIL', 'BIRITINGA', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (288, 'BOA VISTA DO TUPIM/BA - BRASIL', 'BOA VISTA DO TUPIM', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (338, 'CHORROCHO/BA - BRASIL', 'CHORROCHO', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (341, 'COARACI/BA - BRASIL', 'COARACI', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (343, 'CONCEICAO DA FEIRA/BA - BRASIL', 'CONCEICAO DA FEIRA', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (345, 'CONCEICAO DO COITE/BA - BRASIL', 'CONCEICAO DO COITE', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (353, 'CORONEL JOAO SA/BA - BRASIL', 'CORONEL JOAO SA', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (356, 'CRAVOLANDIA/BA - BRASIL', 'CRAVOLANDIA', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (359, 'CRUZ DAS ALMAS/BA - BRASIL', 'CRUZ DAS ALMAS', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (364, 'DOM MACEDO COSTA/BA - BRASIL', 'DOM MACEDO COSTA', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (367, 'ENTRE RIOS/BA - BRASIL', 'ENTRE RIOS', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (370, 'EUCLIDES DA CUNHA/BA - BRASIL', 'EUCLIDES DA CUNHA', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (376, 'FIRMINO ALVES/BA - BRASIL', 'FIRMINO ALVES', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (378, 'FORMOSA DO RIO PRETO/BA - BRASIL', 'FORMOSA DO RIO PRETO', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (383, 'GONGOGI/BA - BRASIL', 'GONGOGI', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (390, 'IBIASSUCE/BA - BRASIL', 'IBIASSUCE', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (393, 'IBICUI/BA - BRASIL', 'IBICUI', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (395, 'IBIPITANGA/BA - BRASIL', 'IBIPITANGA', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (398, 'IBIRAPUA/BA - BRASIL', 'IBIRAPUA', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (404, 'IGAPORA/BA - BRASIL', 'IGAPORA', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (134, 'TARTARUGALZINHO/AP - BRASIL', 'TARTARUGALZINHO', 3, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (136, 'ALVARAES/AM - BRASIL', 'ALVARAES', 4, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (144, 'BARREIRINHA/AM - BRASIL', 'BARREIRINHA', 4, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (147, 'BENJAMIN CONSTANT/AM - BRASIL', 'BENJAMIN CONSTANT', 4, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (151, 'BOA VISTA DO RAMOS/AM - BRASIL', 'BOA VISTA DO RAMOS', 4, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (205, 'NOVA OLINDA DO NORTE/AM - BRASIL', 'NOVA OLINDA DO NORTE', 4, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (208, 'PARI CACHOEIRA/AM - BRASIL', 'PARI CACHOEIRA', 4, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (214, 'PRAIA DO PIRAO/AM - BRASIL', 'PRAIA DO PIRAO', 4, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (216, 'QUERARI/AM - BRASIL', 'QUERARI', 4, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (219, 'SANTA ISABEL DO RIO NEGRO/AM - BRASIL', 'SANTA ISABEL DO RIO NEGRO', 4, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (222, 'SANTO ANTONIO DO ICA/AM - BRASIL', 'SANTO ANTONIO DO ICA', 4, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (225, 'SAO FRANCISCO DO TONANTINS/AM - BRASIL', 'SAO FRANCISCO DO TONANTINS', 4, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (228, 'SAO JOSE DO AMPARO/AM - BRASIL', 'SAO JOSE DO AMPARO', 4, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (231, 'SAO PAULO DE OLIVENCA/AM - BRASIL', 'SAO PAULO DE OLIVENCA', 4, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (234, 'SERINGAL PALMEIRA/AM - BRASIL', 'SERINGAL PALMEIRA', 4, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (240, 'UARINI/AM - BRASIL', 'UARINI', 4, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (242, 'URUCURITUBA/AM - BRASIL', 'URUCURITUBA', 4, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (246, 'ACAJUTIBA/BA - BRASIL', 'ACAJUTIBA', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (249, 'AIQUARA/BA - BRASIL', 'AIQUARA', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (251, 'ALCOBACA/BA - BRASIL', 'ALCOBACA', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (254, 'AMELIA RODRIGUES/BA - BRASIL', 'AMELIA RODRIGUES', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (257, 'ANDARAI/BA - BRASIL', 'ANDARAI', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (260, 'ANGUERA/BA - BRASIL', 'ANGUERA', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (262, 'ANTONIO CARDOSO/BA - BRASIL', 'ANTONIO CARDOSO', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (266, 'ARACAS/BA - BRASIL', 'ARACAS', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (269, 'ARAMARI/BA - BRASIL', 'ARAMARI', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (96, 'POCO DAS TRINCHEIRAS/AL - BRASIL', 'POCO DAS TRINCHEIRAS', 2, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (99, 'PORTO REAL DO COLEGIO/AL - BRASIL', 'PORTO REAL DO COLEGIO', 2, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (103, 'SANTA LUZIA DO NORTE/AL - BRASIL', 'SANTA LUZIA DO NORTE', 2, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (105, 'SANTANA DO MUNDAU/AL - BRASIL', 'SANTANA DO MUNDAU', 2, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (108, 'SAO JOSE DA TAPERA/AL - BRASIL', 'SAO JOSE DA TAPERA', 2, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (18, 'SENADOR GUIOMARD/AC - BRASIL', 'SENADOR GUIOMARD', 1, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (22, 'ANADIA/AL - BRASIL', 'ANADIA', 2, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (24, 'ATALAIA/AL - BRASIL', 'ATALAIA', 2, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (25, 'BARRA DE SANTO ANTONIO/AL - BRASIL', 'BARRA DE SANTO ANTONIO', 2, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (30, 'BOCA DA MATA/AL - BRASIL', 'BOCA DA MATA', 2, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (33, 'CAJUEIRO/AL - BRASIL', 'CAJUEIRO', 2, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (35, 'CAMPO GRANDE/AL - BRASIL', 'CAMPO GRANDE', 2, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (38, 'CARNEIROS/AL - BRASIL', 'CARNEIROS', 2, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (40, 'COITE DO NOIA/AL - BRASIL', 'COITE DO NOIA', 2, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (42, 'COQUEIRO SECO/AL - BRASIL', 'COQUEIRO SECO', 2, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (45, 'DELMIRO GOUVEIA/AL - BRASIL', 'DELMIRO GOUVEIA', 2, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (48, 'FEIRA GRANDE/AL - BRASIL', 'FEIRA GRANDE', 2, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (50, 'FLEXEIRAS/AL - BRASIL', 'FLEXEIRAS', 2, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (52, 'IBATEGUARA/AL - BRASIL', 'IBATEGUARA', 2, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (55, 'INHAPI/AL - BRASIL', 'INHAPI', 2, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (56, 'JACARE DOS HOMENS/AL - BRASIL', 'JACARE DOS HOMENS', 2, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (60, 'JOAQUIM GOMES/AL - BRASIL', 'JOAQUIM GOMES', 2, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (63, 'LAGOA DA CANOA/AL - BRASIL', 'LAGOA DA CANOA', 2, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (66, 'MAJOR ISIDORO/AL - BRASIL', 'MAJOR ISIDORO', 2, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (69, 'MARAVILHA/AL - BRASIL', 'MARAVILHA', 2, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (71, 'MARIBONDO/AL - BRASIL', 'MARIBONDO', 2, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (73, 'MATRIZ DE CAMARAGIBE/AL - BRASIL', 'MATRIZ DE CAMARAGIBE', 2, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (76, 'MONTEIROPOLIS/AL - BRASIL', 'MONTEIROPOLIS', 2, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (79, 'OLHO D´AGUA DAS FLORES/AL - BRASIL', 'OLHO D´AGUA DAS FLORES', 2, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (81, 'OLHO D´AGUA GRANDE/AL - BRASIL', 'OLHO D´AGUA GRANDE', 2, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (85, 'PALMEIRA DOS INDIOS/AL - BRASIL', 'PALMEIRA DOS INDIOS', 2, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (89, 'PASSO DE CAMARAGIBE/AL - BRASIL', 'PASSO DE CAMARAGIBE', 2, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (92, 'PIACABUCU/AL - BRASIL', 'PIACABUCU', 2, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (129, 'OIAPOQUE/AP - BRASIL', 'OIAPOQUE', 3, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (131, 'PRACUUBA/AP - BRASIL', 'PRACUUBA', 3, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5719, 'SALGADO/SE - BRASIL', 'SALGADO', 26, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5724, 'SAO CRISTOVAO/SE - BRASIL', 'SAO CRISTOVAO', 26, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5730, 'TELHA/SE - BRASIL', 'TELHA', 26, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5733, 'UMBAUBA/SE - BRASIL', 'UMBAUBA', 26, 28);
commit;
prompt 4800 records committed...
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5738, 'ALVORADA/TO - BRASIL', 'ALVORADA', 27, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5743, 'ARAGUACEMA/TO - BRASIL', 'ARAGUACEMA', 27, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5747, 'ARAGUATINS/TO - BRASIL', 'ARAGUATINS', 27, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5753, 'BABACULANDIA/TO - BRASIL', 'BABACULANDIA', 27, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5758, 'BOM JESUS DO TOCANTINS/TO - BRASIL', 'BOM JESUS DO TOCANTINS', 27, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5767, 'CASEARA/TO - BRASIL', 'CASEARA', 27, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5770, 'CHAPADA DE AREIA/TO - BRASIL', 'CHAPADA DE AREIA', 27, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5776, 'CRISTALANDIA/TO - BRASIL', 'CRISTALANDIA', 27, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5782, 'DUERE/TO - BRASIL', 'DUERE', 27, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5785, 'FIGUEIROPOLIS/TO - BRASIL', 'FIGUEIROPOLIS', 27, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5826, 'PAU D´ARCO/TO - BRASIL', 'PAU D´ARCO', 27, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5831, 'PIRAQUE/TO - BRASIL', 'PIRAQUE', 27, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5578, 'SAO MANUEL/SP - BRASIL', 'SAO MANUEL', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5583, 'SAO ROQUE/SP - BRASIL', 'SAO ROQUE', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5587, 'SAO VICENTE/SP - BRASIL', 'SAO VICENTE', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5591, 'SERRA AZUL/SP - BRASIL', 'SERRA AZUL', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5595, 'SETE BARRAS/SP - BRASIL', 'SETE BARRAS', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5601, 'SUMARE/SP - BRASIL', 'SUMARE', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5604, 'TABAPUA/SP - BRASIL', 'TABAPUA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5609, 'TAIACU/SP - BRASIL', 'TAIACU', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5612, 'TANABI/SP - BRASIL', 'TANABI', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5617, 'TAQUARIVAI/SP - BRASIL', 'TAQUARIVAI', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5621, 'TAUBATE/SP - BRASIL', 'TAUBATE', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5626, 'TIMBURI/SP - BRASIL', 'TIMBURI', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5629, 'TRABIJU/SP - BRASIL', 'TRABIJU', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5633, 'TUPA/SP - BRASIL', 'TUPA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5636, 'TURMALINA/SP - BRASIL', 'TURMALINA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5642, 'URANIA/SP - BRASIL', 'URANIA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5645, 'VALENTIM GENTIL/SP - BRASIL', 'VALENTIM GENTIL', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5652, 'VERA CRUZ/SP - BRASIL', 'VERA CRUZ', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5656, 'VITORIA BRASIL/SP - BRASIL', 'VITORIA BRASIL', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5693, 'MACAMBIRA/SE - BRASIL', 'MACAMBIRA', 26, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5696, 'MARUIM/SE - BRASIL', 'MARUIM', 26, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5699, 'MURIBECA/SE - BRASIL', 'MURIBECA', 26, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5705, 'NOSSA SENHORA DO SOCORRO/SE - BRASIL', 'NOSSA SENHORA DO SOCORRO', 26, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5459, 'PITANGUEIRAS/SP - BRASIL', 'PITANGUEIRAS', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5465, 'PONGAI/SP - BRASIL', 'PONGAI', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5469, 'POPULINA/SP - BRASIL', 'POPULINA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5473, 'POTIM/SP - BRASIL', 'POTIM', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5476, 'PRADOPOLIS/SP - BRASIL', 'PRADOPOLIS', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5483, 'PRESIDENTE VENCESLAU/SP - BRASIL', 'PRESIDENTE VENCESLAU', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5489, 'QUINTANA/SP - BRASIL', 'QUINTANA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5494, 'REGINOPOLIS/SP - BRASIL', 'REGINOPOLIS', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5501, 'RIBEIRAO DO SUL/SP - BRASIL', 'RIBEIRAO DO SUL', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5507, 'RINCAO/SP - BRASIL', 'RINCAO', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5511, 'RIO GRANDE DA SERRA/SP - BRASIL', 'RIO GRANDE DA SERRA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5518, 'SABINO/SP - BRASIL', 'SABINO', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5522, 'SALESOPOLIS/SP - BRASIL', 'SALESOPOLIS', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5528, 'SANDOVALINA/SP - BRASIL', 'SANDOVALINA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5323, 'LIMEIRA/SP - BRASIL', 'LIMEIRA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5325, 'LINS/SP - BRASIL', 'LINS', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5327, 'LOUVEIRA/SP - BRASIL', 'LOUVEIRA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5332, 'LUPERCIO/SP - BRASIL', 'LUPERCIO', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5336, 'MACEDONIA/SP - BRASIL', 'MACEDONIA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5341, 'MARABA PAULISTA/SP - BRASIL', 'MARABA PAULISTA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5348, 'MATAO/SP - BRASIL', 'MATAO', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5350, 'MENDONCA/SP - BRASIL', 'MENDONCA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5355, 'MIRACATU/SP - BRASIL', 'MIRACATU', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5359, 'MIRASSOLANDIA/SP - BRASIL', 'MIRASSOLANDIA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5365, 'MONCOES/SP - BRASIL', 'MONCOES', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5369, 'MONTE APRAZIVEL/SP - BRASIL', 'MONTE APRAZIVEL', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5375, 'MORUNGABA/SP - BRASIL', 'MORUNGABA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5379, 'NARANDIBA/SP - BRASIL', 'NARANDIBA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5384, 'NIPOA/SP - BRASIL', 'NIPOA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5426, 'PATROCINIO PAULISTA/SP - BRASIL', 'PATROCINIO PAULISTA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5431, 'PEDERNEIRAS/SP - BRASIL', 'PEDERNEIRAS', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5434, 'PEDREGULHO/SP - BRASIL', 'PEDREGULHO', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5438, 'PENAPOLIS/SP - BRASIL', 'PENAPOLIS', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5442, 'PIACATU/SP - BRASIL', 'PIACATU', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5447, 'PINHALZINHO/SP - BRASIL', 'PINHALZINHO', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5452, 'PIRAJU/SP - BRASIL', 'PIRAJU', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5456, 'PIRAPOZINHO/SP - BRASIL', 'PIRAPOZINHO', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5185, 'EMBAUBA/SP - BRASIL', 'EMBAUBA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5189, 'ENGENHEIRO COELHO/SP - BRASIL', 'ENGENHEIRO COELHO', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5196, 'FARTURA/SP - BRASIL', 'FARTURA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5201, 'FLORA RICA/SP - BRASIL', 'FLORA RICA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5205, 'FRANCA/SP - BRASIL', 'FRANCA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5208, 'GABRIEL MONTEIRO/SP - BRASIL', 'GABRIEL MONTEIRO', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5214, 'GETULINA/SP - BRASIL', 'GETULINA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5218, 'GUAIRA/SP - BRASIL', 'GUAIRA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5222, 'GUARACAI/SP - BRASIL', 'GUARACAI', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5228, 'GUARATINGUETA/SP - BRASIL', 'GUARATINGUETA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5233, 'GUATAPARA/SP - BRASIL', 'GUATAPARA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5275, 'ITAPETININGA/SP - BRASIL', 'ITAPETININGA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5278, 'ITAPIRA/SP - BRASIL', 'ITAPIRA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5281, 'ITAPORANGA/SP - BRASIL', 'ITAPORANGA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5284, 'ITAQUAQUECETUBA/SP - BRASIL', 'ITAQUAQUECETUBA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5288, 'ITATINGA/SP - BRASIL', 'ITATINGA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5291, 'ITOBI/SP - BRASIL', 'ITOBI', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5293, 'ITUPEVA/SP - BRASIL', 'ITUPEVA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5296, 'JABOTICABAL/SP - BRASIL', 'JABOTICABAL', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5299, 'JACUPIRANGA/SP - BRASIL', 'JACUPIRANGA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5305, 'JARINU/SP - BRASIL', 'JARINU', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5307, 'JERIQUARA/SP - BRASIL', 'JERIQUARA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5312, 'JUMIRIM/SP - BRASIL', 'JUMIRIM', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5318, 'LARANJAL PAULISTA/SP - BRASIL', 'LARANJAL PAULISTA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5044, 'ANHEMBI/SP - BRASIL', 'ANHEMBI', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5050, 'ARACATUBA/SP - BRASIL', 'ARACATUBA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5054, 'ARAPEI/SP - BRASIL', 'ARAPEI', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5057, 'ARCO-IRIS/SP - BRASIL', 'ARCO-IRIS', 25, 28);
commit;
prompt 4900 records committed...
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5062, 'ARTUR NOGUEIRA/SP - BRASIL', 'ARTUR NOGUEIRA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5068, 'AVAI/SP - BRASIL', 'AVAI', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5071, 'BADY BASSITT/SP - BRASIL', 'BADY BASSITT', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5077, 'BARIRI/SP - BRASIL', 'BARIRI', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5081, 'BARRETOS/SP - BRASIL', 'BARRETOS', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5084, 'BASTOS/SP - BRASIL', 'BASTOS', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5130, 'CAMPOS NOVOS PAULISTA/SP - BRASIL', 'CAMPOS NOVOS PAULISTA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5135, 'CAPAO BONITO/SP - BRASIL', 'CAPAO BONITO', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5139, 'CARAPICUIBA/SP - BRASIL', 'CARAPICUIBA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5142, 'CASSIA DOS COQUEIROS/SP - BRASIL', 'CASSIA DOS COQUEIROS', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5147, 'CERQUEIRA CESAR/SP - BRASIL', 'CERQUEIRA CESAR', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5154, 'COLOMBIA/SP - BRASIL', 'COLOMBIA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5159, 'CORONEL MACEDO/SP - BRASIL', 'CORONEL MACEDO', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5166, 'CRUZALIA/SP - BRASIL', 'CRUZALIA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5169, 'CUNHA/SP - BRASIL', 'CUNHA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5172, 'DIRCE REIS/SP - BRASIL', 'DIRCE REIS', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5177, 'DOURADO/SP - BRASIL', 'DOURADO', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5181, 'ECHAPORA/SP - BRASIL', 'ECHAPORA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4919, 'PETROLANDIA/SC - BRASIL', 'PETROLANDIA', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4924, 'PLANALTO ALEGRE/SC - BRASIL', 'PLANALTO ALEGRE', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4930, 'PORTO UNIAO/SC - BRASIL', 'PORTO UNIAO', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4935, 'PRESIDENTE NEREU/SC - BRASIL', 'PRESIDENTE NEREU', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4942, 'RIO DOS CEDROS/SC - BRASIL', 'RIO DOS CEDROS', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4989, 'TAIO/SC - BRASIL', 'TAIO', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4991, 'TIGRINHOS/SC - BRASIL', 'TIGRINHOS', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4994, 'TIMBO/SC - BRASIL', 'TIMBO', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4997, 'TREVISO/SC - BRASIL', 'TREVISO', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4999, 'TREZE TILIAS/SC - BRASIL', 'TREZE TILIAS', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5004, 'UNIAO DO OESTE/SC - BRASIL', 'UNIAO DO OESTE', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5011, 'VIDAL RAMOS/SC - BRASIL', 'VIDAL RAMOS', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5015, 'XANXERE/SC - BRASIL', 'XANXERE', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5020, 'ADOLFO/SP - BRASIL', 'ADOLFO', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5023, 'AGUAS DE LINDOIA/SP - BRASIL', 'AGUAS DE LINDOIA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5029, 'ALTAIR/SP - BRASIL', 'ALTAIR', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5032, 'ALUMINIO/SP - BRASIL', 'ALUMINIO', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5037, 'AMERICANA/SP - BRASIL', 'AMERICANA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5041, 'ANALANDIA/SP - BRASIL', 'ANALANDIA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4778, 'CAIBI/SC - BRASIL', 'CAIBI', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4782, 'CAMPO BELO DO SUL/SC - BRASIL', 'CAMPO BELO DO SUL', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4789, 'CAPIVARI DE BAIXO/SC - BRASIL', 'CAPIVARI DE BAIXO', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4797, 'CONCORDIA/SC - BRASIL', 'CONCORDIA', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4802, 'CORUPA/SC - BRASIL', 'CORUPA', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4845, 'IPUACU/SC - BRASIL', 'IPUACU', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4848, 'IRANI/SC - BRASIL', 'IRANI', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4850, 'IRINEOPOLIS/SC - BRASIL', 'IRINEOPOLIS', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4853, 'ITAJAI/SC - BRASIL', 'ITAJAI', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4856, 'ITAPOA/SC - BRASIL', 'ITAPOA', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4858, 'JABORA/SC - BRASIL', 'JABORA', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4861, 'JARAGUA DO SUL/SC - BRASIL', 'JARAGUA DO SUL', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4865, 'JOSE BOITEUX/SC - BRASIL', 'JOSE BOITEUX', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4868, 'LAGUNA/SC - BRASIL', 'LAGUNA', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4871, 'LAURO MULLER/SC - BRASIL', 'LAURO MULLER', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4875, 'LONTRAS/SC - BRASIL', 'LONTRAS', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4879, 'MAFRA/SC - BRASIL', 'MAFRA', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4882, 'MARACAJA/SC - BRASIL', 'MARACAJA', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4887, 'MELEIRO/SC - BRASIL', 'MELEIRO', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4892, 'MONTE CASTELO/SC - BRASIL', 'MONTE CASTELO', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4896, 'NOVA ERECHIM/SC - BRASIL', 'NOVA ERECHIM', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4903, 'OURO/SC - BRASIL', 'OURO', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4905, 'PAIAL/SC - BRASIL', 'PAIAL', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4908, 'PALMA SOLA/SC - BRASIL', 'PALMA SOLA', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4914, 'PASSOS MAIA/SC - BRASIL', 'PASSOS MAIA', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4654, 'VILA LANGARO/RS - BRASIL', 'VILA LANGARO', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4660, 'VITORIA DAS MISSOES/RS - BRASIL', 'VITORIA DAS MISSOES', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4710, 'THEOBROMA/RO - BRASIL', 'THEOBROMA', 22, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4713, 'VALE DO PARAISO/RO - BRASIL', 'VALE DO PARAISO', 22, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4717, 'BOA VISTA/RR - BRASIL', 'BOA VISTA', 23, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4720, 'CARACARAI/RR - BRASIL', 'CARACARAI', 23, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4723, 'MUCAJAI/RR - BRASIL', 'MUCAJAI', 23, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4727, 'SAO JOAO DA BALIZA/RR - BRASIL', 'SAO JOAO DA BALIZA', 23, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4734, 'AGRONOMICA/SC - BRASIL', 'AGRONOMICA', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4740, 'ALTO BELA VISTA/SC - BRASIL', 'ALTO BELA VISTA', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4746, 'APIUNA/SC - BRASIL', 'APIUNA', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4749, 'ARARANGUA/SC - BRASIL', 'ARARANGUA', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4754, 'ATALANTA/SC - BRASIL', 'ATALANTA', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4760, 'BARRA VELHA/SC - BRASIL', 'BARRA VELHA', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4764, 'BIGUACU/SC - BRASIL', 'BIGUACU', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4769, 'BOM JESUS DO OESTE/SC - BRASIL', 'BOM JESUS DO OESTE', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4528, 'SAGRADA FAMILIA/RS - BRASIL', 'SAGRADA FAMILIA', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4535, 'SANTA CRUZ DO SUL/RS - BRASIL', 'SANTA CRUZ DO SUL', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4583, 'SAO VENDELINO/RS - BRASIL', 'SAO VENDELINO', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4587, 'SARANDI/RS - BRASIL', 'SARANDI', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4589, 'SEDE NOVA/RS - BRASIL', 'SEDE NOVA', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4593, 'SENTINELA DO SUL/RS - BRASIL', 'SENTINELA DO SUL', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4599, 'SEVERIANO DE ALMEIDA/RS - BRASIL', 'SEVERIANO DE ALMEIDA', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4606, 'TAPERA/RS - BRASIL', 'TAPERA', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4611, 'TAVARES/RS - BRASIL', 'TAVARES', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4614, 'TEUTONIA/RS - BRASIL', 'TEUTONIA', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4618, 'TRAMANDAI/RS - BRASIL', 'TRAMANDAI', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4623, 'TRES DE MAIO/RS - BRASIL', 'TRES DE MAIO', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4629, 'TUCUNDUVA/RS - BRASIL', 'TUCUNDUVA', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4633, 'TUPANDI/RS - BRASIL', 'TUPANDI', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4636, 'UBIRETAMA/RS - BRASIL', 'UBIRETAMA', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4641, 'VALE DO SOL/RS - BRASIL', 'VALE DO SOL', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4647, 'VERANOPOLIS/RS - BRASIL', 'VERANOPOLIS', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4398, 'ITAPUCA/RS - BRASIL', 'ITAPUCA', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4449, 'NAO-ME-TOQUE/RS - BRASIL', 'NAO-ME-TOQUE', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4452, 'NOVA ALVORADA/RS - BRASIL', 'NOVA ALVORADA', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4456, 'NOVA BRESCIA/RS - BRASIL', 'NOVA BRESCIA', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4459, 'NOVA HARTZ/RS - BRASIL', 'NOVA HARTZ', 21, 28);
commit;
prompt 5000 records committed...
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4463, 'NOVA PRATA/RS - BRASIL', 'NOVA PRATA', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4466, 'NOVA SANTA RITA/RS - BRASIL', 'NOVA SANTA RITA', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4472, 'OSORIO/RS - BRASIL', 'OSORIO', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4476, 'PALMITINHO/RS - BRASIL', 'PALMITINHO', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4481, 'PARECI NOVO/RS - BRASIL', 'PARECI NOVO', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4486, 'PAVERAMA/RS - BRASIL', 'PAVERAMA', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4490, 'PICADA CAFE/RS - BRASIL', 'PICADA CAFE', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4496, 'PIRATINI/RS - BRASIL', 'PIRATINI', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4500, 'PONTE PRETA/RS - BRASIL', 'PONTE PRETA', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4504, 'PORTO VERA CRUZ/RS - BRASIL', 'PORTO VERA CRUZ', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4510, 'PUTINGA/RS - BRASIL', 'PUTINGA', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4515, 'RELVADO/RS - BRASIL', 'RELVADO', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4518, 'RIO GRANDE/RS - BRASIL', 'RIO GRANDE', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4524, 'RONDA ALTA/RS - BRASIL', 'RONDA ALTA', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4309, 'COTIPORA/RS - BRASIL', 'COTIPORA', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4312, 'CRISTAL/RS - BRASIL', 'CRISTAL', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4315, 'CRUZALTENSE/RS - BRASIL', 'CRUZALTENSE', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4318, 'DEZESSEIS DE NOVEMBRO/RS - BRASIL', 'DEZESSEIS DE NOVEMBRO', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4323, 'DOM FELICIANO/RS - BRASIL', 'DOM FELICIANO', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4327, 'DOUTOR MAURICIO CARDOSO/RS - BRASIL', 'DOUTOR MAURICIO CARDOSO', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4333, 'ENTRE RIOS DO SUL/RS - BRASIL', 'ENTRE RIOS DO SUL', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4341, 'ESPERANCA DO SUL/RS - BRASIL', 'ESPERANCA DO SUL', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4348, 'EUGENIO DE CASTRO/RS - BRASIL', 'EUGENIO DE CASTRO', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4354, 'FELIZ/RS - BRASIL', 'FELIZ', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4358, 'FORMIGUEIRO/RS - BRASIL', 'FORMIGUEIRO', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4363, 'GAURAMA/RS - BRASIL', 'GAURAMA', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4366, 'GETULIO VARGAS/RS - BRASIL', 'GETULIO VARGAS', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4372, 'GRAVATAI/RS - BRASIL', 'GRAVATAI', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4377, 'HARMONIA/RS - BRASIL', 'HARMONIA', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4380, 'HORIZONTINA/RS - BRASIL', 'HORIZONTINA', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4385, 'IBIRAPUITA/RS - BRASIL', 'IBIRAPUITA', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4179, 'SERRA DO MEL/RN - BRASIL', 'SERRA DO MEL', 20, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4182, 'SERRINHA DOS PINTOS/RN - BRASIL', 'SERRINHA DOS PINTOS', 20, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4187, 'TANGARA/RN - BRASIL', 'TANGARA', 20, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4190, 'TIBAU/RN - BRASIL', 'TIBAU', 20, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4192, 'TIMBAUBA DOS BATISTAS/RN - BRASIL', 'TIMBAUBA DOS BATISTAS', 20, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4198, 'VENHA-VER/RN - BRASIL', 'VENHA-VER', 20, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4203, 'AGUDO/RS - BRASIL', 'AGUDO', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4205, 'ALECRIM/RS - BRASIL', 'ALECRIM', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4210, 'ALTO FELIZ/RS - BRASIL', 'ALTO FELIZ', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4215, 'ANDRE DA ROCHA/RS - BRASIL', 'ANDRE DA ROCHA', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4222, 'ARROIO DO SAL/RS - BRASIL', 'ARROIO DO SAL', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4228, 'AUREA/RS - BRASIL', 'AUREA', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4232, 'BARAO DE COTEGIPE/RS - BRASIL', 'BARAO DE COTEGIPE', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4239, 'BARRACAO/RS - BRASIL', 'BARRACAO', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4244, 'BOA VISTA DO BURICA/RS - BRASIL', 'BOA VISTA DO BURICA', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4251, 'BRAGA/RS - BRASIL', 'BRAGA', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4045, 'APODI/RN - BRASIL', 'APODI', 20, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4048, 'BAIA FORMOSA/RN - BRASIL', 'BAIA FORMOSA', 20, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4051, 'BENTO FERNANDES/RN - BRASIL', 'BENTO FERNANDES', 20, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4055, 'BREJINHO/RN - BRASIL', 'BREJINHO', 20, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4058, 'CAICO/RN - BRASIL', 'CAICO', 20, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4060, 'CAMPO REDONDO/RN - BRASIL', 'CAMPO REDONDO', 20, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4064, 'CARNAUBAIS/RN - BRASIL', 'CARNAUBAIS', 20, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4067, 'CORONEL EZEQUIEL/RN - BRASIL', 'CORONEL EZEQUIEL', 20, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4072, 'ENCANTO/RN - BRASIL', 'ENCANTO', 20, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4078, 'FLORANIA/RN - BRASIL', 'FLORANIA', 20, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4082, 'GOIANINHA/RN - BRASIL', 'GOIANINHA', 20, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4086, 'IELMO MARINHO/RN - BRASIL', 'IELMO MARINHO', 20, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4090, 'ITAU/RN - BRASIL', 'ITAU', 20, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4096, 'JARDIM DE PIRANHAS/RN - BRASIL', 'JARDIM DE PIRANHAS', 20, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4102, 'LAGOA D´ANTA/RN - BRASIL', 'LAGOA D´ANTA', 20, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4108, 'LAJES PINTADAS/RN - BRASIL', 'LAJES PINTADAS', 20, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4113, 'MAJOR SALES/RN - BRASIL', 'MAJOR SALES', 20, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3905, 'ANGRA DOS REIS/RJ - BRASIL', 'ANGRA DOS REIS', 19, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3909, 'AREAL/RJ - BRASIL', 'AREAL', 19, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3911, 'ARRAIAL DO CABO/RJ - BRASIL', 'ARRAIAL DO CABO', 19, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3915, 'BARRA DO PIRAI/RJ - BRASIL', 'BARRA DO PIRAI', 19, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3919, 'BOAVENTURA/RJ - BRASIL', 'BOAVENTURA', 19, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3922, 'BOM JESUS DO QUERENDO/RJ - BRASIL', 'BOM JESUS DO QUERENDO', 19, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3927, 'CAMPOS DOS GOYTACAZES/RJ - BRASIL', 'CAMPOS DOS GOYTACAZES', 19, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3932, 'CARMO/RJ - BRASIL', 'CARMO', 19, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3937, 'CONQUISTA/RJ - BRASIL', 'CONQUISTA', 19, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3942, 'ENGENHEIRO PAULO DE FRONTIN/RJ - BRASIL', 'ENGENHEIRO PAULO DE FRONTIN', 19, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3951, 'ITATIAIA/RJ - BRASIL', 'ITATIAIA', 19, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3956, 'LARANJAIS/RJ - BRASIL', 'LARANJAIS', 19, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3959, 'MAGE/RJ - BRASIL', 'MAGE', 19, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3962, 'MENDES/RJ - BRASIL', 'MENDES', 19, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3965, 'MURI/RJ - BRASIL', 'MURI', 19, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3967, 'NILOPOLIS/RJ - BRASIL', 'NILOPOLIS', 19, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3972, 'PARACAMBI/RJ - BRASIL', 'PARACAMBI', 19, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3978, 'PINHEIRAL/RJ - BRASIL', 'PINHEIRAL', 19, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3787, 'MORRO CABECA NO TEMPO/PI - BRASIL', 'MORRO CABECA NO TEMPO', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3792, 'NOSSA SENHORA DE NAZARE/PI - BRASIL', 'NOSSA SENHORA DE NAZARE', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3797, 'NOVO PAQUETA/PI - BRASIL', 'NOVO PAQUETA', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3801, 'OLHO D´AGUA DO PIAUI/PI - BRASIL', 'OLHO D´AGUA DO PIAUI', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3809, 'PARNAGUA/PI - BRASIL', 'PARNAGUA', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3814, 'PAULISTANA/PI - BRASIL', 'PAULISTANA', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3818, 'PICOS/PI - BRASIL', 'PICOS', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3820, 'PIO IX/PI - BRASIL', 'PIO IX', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3826, 'PRATA DO PIAUI/PI - BRASIL', 'PRATA DO PIAUI', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3830, 'RIACHAO/PI - BRASIL', 'RIACHAO', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3835, 'RIO GRANDE DO PIAUI/PI - BRASIL', 'RIO GRANDE DO PIAUI', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3843, 'SANTANA DO PIAUI/PI - BRASIL', 'SANTANA DO PIAUI', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3665, 'BOM PRINCIPIO DO PIAUI/PI - BRASIL', 'BOM PRINCIPIO DO PIAUI', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3670, 'BREJO DO PIAUI/PI - BRASIL', 'BREJO DO PIAUI', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3674, 'CABECEIRAS DO PIAUI/PI - BRASIL', 'CABECEIRAS DO PIAUI', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3679, 'CALDEIRAOZINHO/PI - BRASIL', 'CALDEIRAOZINHO', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3684, 'CAMPO MAIOR/PI - BRASIL', 'CAMPO MAIOR', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3691, 'CARAUBAS DO PIAUI/PI - BRASIL', 'CARAUBAS DO PIAUI', 18, 28);
commit;
prompt 5100 records committed...
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3697, 'COCAL DOS ALVES/PI - BRASIL', 'COCAL DOS ALVES', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3703, 'COROATA/PI - BRASIL', 'COROATA', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3708, 'CRISTINO CASTRO/PI - BRASIL', 'CRISTINO CASTRO', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3714, 'CURRALINHO/PI - BRASIL', 'CURRALINHO', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3719, 'DOM INOCENCIO/PI - BRASIL', 'DOM INOCENCIO', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3527, 'QUIXABA/PE - BRASIL', 'QUIXABA', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3530, 'RANCHARIA/PE - BRASIL', 'RANCHARIA', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3533, 'RIACHO DAS ALMAS/PE - BRASIL', 'RIACHO DAS ALMAS', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3537, 'RIBEIRAO/PE - BRASIL', 'RIBEIRAO', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3540, 'SAIRE/PE - BRASIL', 'SAIRE', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3542, 'SALGUEIRO/PE - BRASIL', 'SALGUEIRO', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3545, 'SAMAMBAIA/PE - BRASIL', 'SAMAMBAIA', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3548, 'SANTA CRUZ DA BAIXA VERDE/PE - BRASIL', 'SANTA CRUZ DA BAIXA VERDE', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3555, 'SANTA ROSA/PE - BRASIL', 'SANTA ROSA', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3560, 'SAO BENTO DO UNA/PE - BRASIL', 'SAO BENTO DO UNA', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3566, 'SAO JOAQUIM DO MONTE/PE - BRASIL', 'SAO JOAQUIM DO MONTE', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3574, 'SAO VICENTE FERRER/PE - BRASIL', 'SAO VICENTE FERRER', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3582, 'SIRINHAEM/PE - BRASIL', 'SIRINHAEM', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3586, 'SOLIDAO/PE - BRASIL', 'SOLIDAO', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3386, 'GOIANA/PE - BRASIL', 'GOIANA', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3388, 'GRAVATA/PE - BRASIL', 'GRAVATA', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3391, 'GUANUMBI/PE - BRASIL', 'GUANUMBI', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3394, 'IATECA/PE - BRASIL', 'IATECA', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3396, 'IBIMIRIM/PE - BRASIL', 'IBIMIRIM', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3399, 'IBO/PE - BRASIL', 'IBO', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3401, 'IGARASSU/PE - BRASIL', 'IGARASSU', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3404, 'INGA/PE - BRASIL', 'INGA', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3406, 'INHAUM/PE - BRASIL', 'INHAUM', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3409, 'ISACOLANDIA/PE - BRASIL', 'ISACOLANDIA', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3412, 'ITAIBA/PE - BRASIL', 'ITAIBA', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3414, 'ITAMBE/PE - BRASIL', 'ITAMBE', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3417, 'ITAPISSUMA/PE - BRASIL', 'ITAPISSUMA', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3420, 'JABOATAO DOS GUARARAPES/PE - BRASIL', 'JABOATAO DOS GUARARAPES', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3425, 'JATOBA/PE - BRASIL', 'JATOBA', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3428, 'JIRAU/PE - BRASIL', 'JIRAU', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3430, 'JOAQUIM NABUCO/PE - BRASIL', 'JOAQUIM NABUCO', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3434, 'JUTAI/PE - BRASIL', 'JUTAI', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3436, 'LAGOA DA CRUZ/PE - BRASIL', 'LAGOA DA CRUZ', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3443, 'LAGOA DO ITAENGA/PE - BRASIL', 'LAGOA DO ITAENGA', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3449, 'LIMOEIRO/PE - BRASIL', 'LIMOEIRO', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3454, 'MACHADOS/PE - BRASIL', 'MACHADOS', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3458, 'MANGUEIRA/PE - BRASIL', 'MANGUEIRA', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3382, 'GARANHUNS/PE - BRASIL', 'GARANHUNS', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3249, 'TUNEIRAS DO OESTE/PR - BRASIL', 'TUNEIRAS DO OESTE', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3253, 'UMUARAMA/PR - BRASIL', 'UMUARAMA', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3256, 'URAI/PR - BRASIL', 'URAI', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3258, 'VERA CRUZ DO OESTE/PR - BRASIL', 'VERA CRUZ DO OESTE', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3263, 'VITORINO/PR - BRASIL', 'VITORINO', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3265, 'XAMBRE/PR - BRASIL', 'XAMBRE', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3268, 'AFRANIO/PE - BRASIL', 'AFRANIO', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3271, 'AGROVILA 5/PE - BRASIL', 'AGROVILA 5', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3274, 'AGUAS BELAS/PE - BRASIL', 'AGUAS BELAS', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3277, 'ALEGRE/PE - BRASIL', 'ALEGRE', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3280, 'ALIANCA/PE - BRASIL', 'ALIANCA', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3282, 'ALTO DO SAO FRANCISCO/PE - BRASIL', 'ALTO DO SAO FRANCISCO', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3289, 'BARRA DE GUABIRABA/PE - BRASIL', 'BARRA DE GUABIRABA', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3297, 'BELO JARDIM/PE - BRASIL', 'BELO JARDIM', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3301, 'BOA VISTA/PE - BRASIL', 'BOA VISTA', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3305, 'BOM NOME/PE - BRASIL', 'BOM NOME', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3310, 'BREJINHO/PE - BRASIL', 'BREJINHO', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3366, 'CURRAL NOVO/PE - BRASIL', 'CURRAL NOVO', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3372, 'EXU/PE - BRASIL', 'EXU', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3375, 'FEITORIA/PE - BRASIL', 'FEITORIA', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3379, 'FLORESTA/PE - BRASIL', 'FLORESTA', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3381, 'GAMELEIRA/PE - BRASIL', 'GAMELEIRA', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3130, 'PINHAL DE SAO BENTO/PR - BRASIL', 'PINHAL DE SAO BENTO', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3135, 'PITANGA/PR - BRASIL', 'PITANGA', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3138, 'PLANALTO/PR - BRASIL', 'PLANALTO', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3141, 'PORECATU/PR - BRASIL', 'PORECATU', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3143, 'PORTO BARREIRO/PR - BRASIL', 'PORTO BARREIRO', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3147, 'PRANCHITA/PR - BRASIL', 'PRANCHITA', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3150, 'PRUDENTOPOLIS/PR - BRASIL', 'PRUDENTOPOLIS', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3154, 'QUATRO PONTES/PR - BRASIL', 'QUATRO PONTES', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3159, 'RAMILANDIA/PR - BRASIL', 'RAMILANDIA', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3164, 'RENASCENCA/PR - BRASIL', 'RENASCENCA', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3170, 'RIO BOM/PR - BRASIL', 'RIO BOM', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3175, 'ROLANDIA/PR - BRASIL', 'ROLANDIA', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3179, 'SABAUDIA/PR - BRASIL', 'SABAUDIA', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3239, 'TELEMACO BORBA/PR - BRASIL', 'TELEMACO BORBA', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3243, 'TIBAGI/PR - BRASIL', 'TIBAGI', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3246, 'TOMAZINA/PR - BRASIL', 'TOMAZINA', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2993, 'GUAPOREMA/PR - BRASIL', 'GUAPOREMA', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2996, 'GUARAPUAVA/PR - BRASIL', 'GUARAPUAVA', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3000, 'IBAITI/PR - BRASIL', 'IBAITI', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3002, 'IBIPORA/PR - BRASIL', 'IBIPORA', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3005, 'IGUATU/PR - BRASIL', 'IGUATU', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3007, 'IMBITUVA/PR - BRASIL', 'IMBITUVA', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3010, 'INDIANOPOLIS/PR - BRASIL', 'INDIANOPOLIS', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3014, 'IRATI/PR - BRASIL', 'IRATI', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3016, 'ITAGUAJE/PR - BRASIL', 'ITAGUAJE', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3019, 'ITAMBE/PR - BRASIL', 'ITAMBE', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3021, 'ITAPERUCU/PR - BRASIL', 'ITAPERUCU', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3024, 'IVAIPORA/PR - BRASIL', 'IVAIPORA', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3027, 'JABOTI/PR - BRASIL', 'JABOTI', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3032, 'JANIOPOLIS/PR - BRASIL', 'JANIOPOLIS', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3036, 'JARDIM OLINDA/PR - BRASIL', 'JARDIM OLINDA', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3041, 'JURANDA/PR - BRASIL', 'JURANDA', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3096, 'NOVA FATIMA/PR - BRASIL', 'NOVA FATIMA', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3100, 'NOVA PIRAPO/PR - BRASIL', 'NOVA PIRAPO', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3105, 'NOVO ITACOLOMI/PR - BRASIL', 'NOVO ITACOLOMI', 16, 28);
commit;
prompt 5200 records committed...
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3111, 'PALMAS/PR - BRASIL', 'PALMAS', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3115, 'PARAISO DO NORTE/PR - BRASIL', 'PARAISO DO NORTE', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3119, 'PARANAVAI/PR - BRASIL', 'PARANAVAI', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3122, 'PAULA FREITAS/PR - BRASIL', 'PAULA FREITAS', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3126, 'PEROLA/PR - BRASIL', 'PEROLA', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2865, 'ALVORADA DO SUL/PR - BRASIL', 'ALVORADA DO SUL', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2869, 'ANDIRA/PR - BRASIL', 'ANDIRA', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2872, 'ANTONIO OLINTO/PR - BRASIL', 'ANTONIO OLINTO', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2875, 'ARAPOTI/PR - BRASIL', 'ARAPOTI', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2878, 'ARAUCARIA/PR - BRASIL', 'ARAUCARIA', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2881, 'ASSIS CHATEAUBRIAND/PR - BRASIL', 'ASSIS CHATEAUBRIAND', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2886, 'BANDEIRANTES/PR - BRASIL', 'BANDEIRANTES', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2889, 'BARRACAO/PR - BRASIL', 'BARRACAO', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2894, 'BOA ESPERANCA DO IGUACU/PR - BRASIL', 'BOA ESPERANCA DO IGUACU', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2902, 'BRAGANEY/PR - BRASIL', 'BRAGANEY', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2958, 'DOURADINA/PR - BRASIL', 'DOURADINA', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2963, 'ENGENHEIRO BELTRAO/PR - BRASIL', 'ENGENHEIRO BELTRAO', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2969, 'FAZENDA RIO GRANDE/PR - BRASIL', 'FAZENDA RIO GRANDE', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2975, 'FLORESTA/PR - BRASIL', 'FLORESTA', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2978, 'FORMOSA DO OESTE/PR - BRASIL', 'FORMOSA DO OESTE', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2982, 'FRANCISCO BELTRAO/PR - BRASIL', 'FRANCISCO BELTRAO', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2986, 'GOIOXIM/PR - BRASIL', 'GOIOXIM', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2989, 'GUAIRACA/PR - BRASIL', 'GUAIRACA', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2735, 'JUNCO DO SERIDO/PB - BRASIL', 'JUNCO DO SERIDO', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2739, 'LAGOA DE DENTRO/PB - BRASIL', 'LAGOA DE DENTRO', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2743, 'LUCENA/PB - BRASIL', 'LUCENA', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2745, 'MALTA/PB - BRASIL', 'MALTA', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2747, 'MANAIRA/PB - BRASIL', 'MANAIRA', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2750, 'MARIZOPOLIS/PB - BRASIL', 'MARIZOPOLIS', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2753, 'MATO GROSSO/PB - BRASIL', 'MATO GROSSO', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2757, 'MONTE HOREBE/PB - BRASIL', 'MONTE HOREBE', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2761, 'NAZAREZINHO/PB - BRASIL', 'NAZAREZINHO', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2824, 'SAO JOSE DOS CORDEIROS/PB - BRASIL', 'SAO JOSE DOS CORDEIROS', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2831, 'SERIDO/PB - BRASIL', 'SERIDO', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2836, 'SERRARIA/PB - BRASIL', 'SERRARIA', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2839, 'SOLANEA/PB - BRASIL', 'SOLANEA', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2842, 'SOUSA/PB - BRASIL', 'SOUSA', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2844, 'TACIMA/PB - BRASIL', 'TACIMA', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2847, 'TEIXEIRA/PB - BRASIL', 'TEIXEIRA', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2850, 'UIRAUNA/PB - BRASIL', 'UIRAUNA', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2852, 'VARZEA/PB - BRASIL', 'VARZEA', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2855, 'ZABELE/PB - BRASIL', 'ZABELE', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2857, 'ADRIANOPOLIS/PR - BRASIL', 'ADRIANOPOLIS', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2861, 'ALTAMIRA DO PARANA/PR - BRASIL', 'ALTAMIRA DO PARANA', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2605, 'SANTO ANTONIO DO TAUA/PA - BRASIL', 'SANTO ANTONIO DO TAUA', 14, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2610, 'SAO FRANCISCO DO PARA/PA - BRASIL', 'SAO FRANCISCO DO PARA', 14, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2616, 'SAO MIGUEL DO GUAMA/PA - BRASIL', 'SAO MIGUEL DO GUAMA', 14, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2676, 'BORBOREMA/PB - BRASIL', 'BORBOREMA', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2681, 'CABEDELO/PB - BRASIL', 'CABEDELO', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2685, 'CAICARA/PB - BRASIL', 'CAICARA', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2691, 'CARRAPATEIRA/PB - BRASIL', 'CARRAPATEIRA', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2696, 'CONCEICAO/PB - BRASIL', 'CONCEICAO', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2700, 'COREMAS/PB - BRASIL', 'COREMAS', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2705, 'CUITE DE MAMANGUAPE/PB - BRASIL', 'CUITE DE MAMANGUAPE', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2710, 'DESTERRO/PB - BRASIL', 'DESTERRO', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2712, 'DONA INES/PB - BRASIL', 'DONA INES', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2715, 'ESPERANCA/PB - BRASIL', 'ESPERANCA', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2718, 'GADO BRAVO/PB - BRASIL', 'GADO BRAVO', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2722, 'IBIARA/PB - BRASIL', 'IBIARA', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2724, 'IMACULADA/PB - BRASIL', 'IMACULADA', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2727, 'ITAPORANGA/PB - BRASIL', 'ITAPORANGA', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2730, 'JACARAU/PB - BRASIL', 'JACARAU', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2733, 'JUAREZ TAVORA/PB - BRASIL', 'JUAREZ TAVORA', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2477, 'VOLTA GRANDE/MG - BRASIL', 'VOLTA GRANDE', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2480, 'ABEL FIGUEIREDO/PA - BRASIL', 'ABEL FIGUEIREDO', 14, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2484, 'AGUA AZUL DO NORTE/PA - BRASIL', 'AGUA AZUL DO NORTE', 14, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2546, 'LADEIRA/PA - BRASIL', 'LADEIRA', 14, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2551, 'MARACANA/PA - BRASIL', 'MARACANA', 14, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2556, 'MOCAJUBA/PA - BRASIL', 'MOCAJUBA', 14, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2560, 'MOSQUEIRO/PA - BRASIL', 'MOSQUEIRO', 14, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2565, 'NOVA TIMBOTEUA/PA - BRASIL', 'NOVA TIMBOTEUA', 14, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2570, 'ORIXIMINA/PA - BRASIL', 'ORIXIMINA', 14, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2574, 'PALESTINA DO PARA/PA - BRASIL', 'PALESTINA DO PARA', 14, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2579, 'PAU D´ARCO/PA - BRASIL', 'PAU D´ARCO', 14, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2582, 'PLACAS/PA - BRASIL', 'PLACAS', 14, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2584, 'PORTEL/PA - BRASIL', 'PORTEL', 14, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2587, 'PRAINHA/PA - BRASIL', 'PRAINHA', 14, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2590, 'REDENCAO/PA - BRASIL', 'REDENCAO', 14, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2592, 'RONDON DO PARA/PA - BRASIL', 'RONDON DO PARA', 14, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2596, 'SANTA BARBARA DO PARA/PA - BRASIL', 'SANTA BARBARA DO PARA', 14, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2601, 'SANTA MARIA DO PARA/PA - BRASIL', 'SANTA MARIA DO PARA', 14, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2359, 'SAO FRANCISCO DE SALES/MG - BRASIL', 'SAO FRANCISCO DE SALES', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2422, 'SERRANOS/MG - BRASIL', 'SERRANOS', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2426, 'SILVIANOPOLIS/MG - BRASIL', 'SILVIANOPOLIS', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2431, 'TABULEIRO/MG - BRASIL', 'TABULEIRO', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2434, 'TAPIRAI/MG - BRASIL', 'TAPIRAI', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2438, 'TEOFILO OTONI/MG - BRASIL', 'TEOFILO OTONI', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2442, 'TOCANTINS/MG - BRASIL', 'TOCANTINS', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2445, 'TRES CORACOES/MG - BRASIL', 'TRES CORACOES', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2448, 'TUMIRITINGA/MG - BRASIL', 'TUMIRITINGA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2452, 'UBA/MG - BRASIL', 'UBA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2454, 'UBAPORANGA/MG - BRASIL', 'UBAPORANGA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2457, 'UMBURATIBA/MG - BRASIL', 'UMBURATIBA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2460, 'URUCANIA/MG - BRASIL', 'URUCANIA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2463, 'VARGINHA/MG - BRASIL', 'VARGINHA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2466, 'VARZELANDIA/MG - BRASIL', 'VARZELANDIA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2469, 'VESPASIANO/MG - BRASIL', 'VESPASIANO', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2472, 'VIRGEM DA LAPA/MG - BRASIL', 'VIRGEM DA LAPA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2294, 'RIO ESPERA/MG - BRASIL', 'RIO ESPERA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2299, 'RIO PIRACICABA/MG - BRASIL', 'RIO PIRACICABA', 13, 28);
commit;
prompt 5300 records committed...
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2306, 'ROMARIA/MG - BRASIL', 'ROMARIA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2311, 'SACRAMENTO/MG - BRASIL', 'SACRAMENTO', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2316, 'SANTA BARBARA DO TUGURIO/MG - BRASIL', 'SANTA BARBARA DO TUGURIO', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2326, 'SANTA RITA DE CALDAS/MG - BRASIL', 'SANTA RITA DE CALDAS', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2331, 'SANTA RITA DO SAPUCAI/MG - BRASIL', 'SANTA RITA DO SAPUCAI', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2336, 'SANTANA DE PIRAPAMA/MG - BRASIL', 'SANTANA DE PIRAPAMA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2341, 'SANTANA DO PARAISO/MG - BRASIL', 'SANTANA DO PARAISO', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2346, 'SANTO ANTONIO DO AVENTUREIRO/MG - BRASIL', 'SANTO ANTONIO DO AVENTUREIRO', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2149, 'MINDURI/MG - BRASIL', 'MINDURI', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2153, 'MOEDA/MG - BRASIL', 'MOEDA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2156, 'MONSENHOR PAULO/MG - BRASIL', 'MONSENHOR PAULO', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2164, 'MONTES CLAROS/MG - BRASIL', 'MONTES CLAROS', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2170, 'MURIAE/MG - BRASIL', 'MURIAE', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2174, 'NANUQUE/MG - BRASIL', 'NANUQUE', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2177, 'NAZARENO/MG - BRASIL', 'NAZARENO', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2182, 'NOVA MODICA/MG - BRASIL', 'NOVA MODICA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2187, 'NOVO CRUZEIRO/MG - BRASIL', 'NOVO CRUZEIRO', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2193, 'OLIVEIRA FORTES/MG - BRASIL', 'OLIVEIRA FORTES', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2197, 'OURO FINO/MG - BRASIL', 'OURO FINO', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2200, 'PADRE PARAISO/MG - BRASIL', 'PADRE PARAISO', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2204, 'PALMA/MG - BRASIL', 'PALMA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2206, 'PAPAGAIOS/MG - BRASIL', 'PAPAGAIOS', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2209, 'PARAGUACU/MG - BRASIL', 'PARAGUACU', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2212, 'PASSA QUATRO/MG - BRASIL', 'PASSA QUATRO', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2216, 'PASSOS/MG - BRASIL', 'PASSOS', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2218, 'PATROCINIO/MG - BRASIL', 'PATROCINIO', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2221, 'PAULISTAS/MG - BRASIL', 'PAULISTAS', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2224, 'PEDRA AZUL/MG - BRASIL', 'PEDRA AZUL', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1997, 'GUAPE/MG - BRASIL', 'GUAPE', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2002, 'GUARDA-MOR/MG - BRASIL', 'GUARDA-MOR', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2007, 'GURINHATA/MG - BRASIL', 'GURINHATA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2012, 'IBIAI/MG - BRASIL', 'IBIAI', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2016, 'IBITURUNA/MG - BRASIL', 'IBITURUNA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2020, 'IGUATAMA/MG - BRASIL', 'IGUATAMA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2024, 'INCONFIDENTES/MG - BRASIL', 'INCONFIDENTES', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2030, 'IPABA/MG - BRASIL', 'IPABA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2032, 'IPATINGA/MG - BRASIL', 'IPATINGA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2038, 'ITABIRITO/MG - BRASIL', 'ITABIRITO', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2041, 'ITAGUARA/MG - BRASIL', 'ITAGUARA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2046, 'ITAMBACURI/MG - BRASIL', 'ITAMBACURI', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2050, 'ITANHANDU/MG - BRASIL', 'ITANHANDU', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2053, 'ITAPAGIPE/MG - BRASIL', 'ITAPAGIPE', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2056, 'ITATIAIUCU/MG - BRASIL', 'ITATIAIUCU', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2059, 'ITAVERAVA/MG - BRASIL', 'ITAVERAVA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2062, 'ITUIUTABA/MG - BRASIL', 'ITUIUTABA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2065, 'ITUTINGA/MG - BRASIL', 'ITUTINGA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2068, 'JACUI/MG - BRASIL', 'JACUI', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2070, 'JAGUARACU/MG - BRASIL', 'JAGUARACU', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2073, 'JANAUBA/MG - BRASIL', 'JANAUBA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2076, 'JECEABA/MG - BRASIL', 'JECEABA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2079, 'JEQUITIBA/MG - BRASIL', 'JEQUITIBA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2082, 'JOAIMA/MG - BRASIL', 'JOAIMA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1866, 'CHALE/MG - BRASIL', 'CHALE', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1869, 'CHIADOR/MG - BRASIL', 'CHIADOR', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1874, 'COIMBRA/MG - BRASIL', 'COIMBRA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1876, 'COMENDADOR GOMES/MG - BRASIL', 'COMENDADOR GOMES', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1886, 'CONCEICAO DOS OUROS/MG - BRASIL', 'CONCEICAO DOS OUROS', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1893, 'CONSELHEIRO PENA/MG - BRASIL', 'CONSELHEIRO PENA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1899, 'CORDISLANDIA/MG - BRASIL', 'CORDISLANDIA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1905, 'CORONEL PACHECO/MG - BRASIL', 'CORONEL PACHECO', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1912, 'CRISTALIA/MG - BRASIL', 'CRISTALIA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1915, 'CRUCILANDIA/MG - BRASIL', 'CRUCILANDIA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1918, 'CURVELO/MG - BRASIL', 'CURVELO', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1921, 'DELFINOPOLIS/MG - BRASIL', 'DELFINOPOLIS', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1924, 'DESTERRO DE ENTRE RIOS/MG - BRASIL', 'DESTERRO DE ENTRE RIOS', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1930, 'DIVINO/MG - BRASIL', 'DIVINO', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1932, 'DIVINOLANDIA DE MINAS/MG - BRASIL', 'DIVINOLANDIA DE MINAS', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1729, 'ANDRELANDIA/MG - BRASIL', 'ANDRELANDIA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1734, 'ARACITABA/MG - BRASIL', 'ARACITABA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1737, 'ARANTINA/MG - BRASIL', 'ARANTINA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1742, 'ARAXA/MG - BRASIL', 'ARAXA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1745, 'AREADO/MG - BRASIL', 'AREADO', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1751, 'BAEPENDI/MG - BRASIL', 'BAEPENDI', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1753, 'BAMBUI/MG - BRASIL', 'BAMBUI', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1758, 'BARBACENA/MG - BRASIL', 'BARBACENA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1762, 'BELMIRO BRAGA/MG - BRASIL', 'BELMIRO BRAGA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1767, 'BERTOPOLIS/MG - BRASIL', 'BERTOPOLIS', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1773, 'BOCAINA DE MINAS/MG - BRASIL', 'BOCAINA DE MINAS', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1780, 'BOM REPOUSO/MG - BRASIL', 'BOM REPOUSO', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1784, 'BORDA DA MATA/MG - BRASIL', 'BORDA DA MATA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1788, 'BRASILANDIA DE MINAS/MG - BRASIL', 'BRASILANDIA DE MINAS', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1793, 'BUENO BRANDAO/MG - BRASIL', 'BUENO BRANDAO', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1796, 'BURITIZEIRO/MG - BRASIL', 'BURITIZEIRO', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1800, 'CACHOEIRA DE PAJEU/MG - BRASIL', 'CACHOEIRA DE PAJEU', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1804, 'CAIANA/MG - BRASIL', 'CAIANA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1588, 'PRIMAVERA/MT - BRASIL', 'PRIMAVERA', 11, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1593, 'RIBEIRAOZINHO/MT - BRASIL', 'RIBEIRAOZINHO', 11, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1599, 'SANTA ELVIRA/MT - BRASIL', 'SANTA ELVIRA', 11, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1604, 'SAO FELIX DO ARAGUAIA/MT - BRASIL', 'SAO FELIX DO ARAGUAIA', 11, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1611, 'SORRISO/MT - BRASIL', 'SORRISO', 11, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1615, 'TERRA NOVA DO NORTE/MT - BRASIL', 'TERRA NOVA DO NORTE', 11, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1623, 'AGUA CLARA/MS - BRASIL', 'AGUA CLARA', 12, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1626, 'ANASTACIO/MS - BRASIL', 'ANASTACIO', 12, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1631, 'APARECIDA DO TABOADO/MS - BRASIL', 'APARECIDA DO TABOADO', 12, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1639, 'BONITO/MS - BRASIL', 'BONITO', 12, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1642, 'CAMAPUA/MS - BRASIL', 'CAMAPUA', 12, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1646, 'CHAPADAO DO SUL/MS - BRASIL', 'CHAPADAO DO SUL', 12, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1650, 'COSTA RICA/MS - BRASIL', 'COSTA RICA', 12, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1653, 'DOIS IRMAOS DO BURITI/MS - BRASIL', 'DOIS IRMAOS DO BURITI', 12, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1658, 'GLORIA DE DOURADOS/MS - BRASIL', 'GLORIA DE DOURADOS', 12, 28);
commit;
prompt 5400 records committed...
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1662, 'ITAPORA/MS - BRASIL', 'ITAPORA', 12, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1665, 'JAPORA/MS - BRASIL', 'JAPORA', 12, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1460, 'SERRANO DO MARANHAO/MA - BRASIL', 'SERRANO DO MARANHAO', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1466, 'TIMBIRAS/MA - BRASIL', 'TIMBIRAS', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1471, 'TUFILANDIA/MA - BRASIL', 'TUFILANDIA', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1475, 'TUTOIA/MA - BRASIL', 'TUTOIA', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1479, 'VIANA/MA - BRASIL', 'VIANA', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1482, 'VITORIA DO MEARIM/MA - BRASIL', 'VITORIA DO MEARIM', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1488, 'ALTO ARAGUAIA/MT - BRASIL', 'ALTO ARAGUAIA', 11, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1495, 'APIACAS/MT - BRASIL', 'APIACAS', 11, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1498, 'ARAPUTANGA/MT - BRASIL', 'ARAPUTANGA', 11, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1503, 'BARRA DO BUGRES/MT - BRASIL', 'BARRA DO BUGRES', 11, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1509, 'CAMPINAPOLIS/MT - BRASIL', 'CAMPINAPOLIS', 11, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1514, 'CANARANA/MT - BRASIL', 'CANARANA', 11, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1517, 'CASTANHEIRA/MT - BRASIL', 'CASTANHEIRA', 11, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1521, 'COLIDER/MT - BRASIL', 'COLIDER', 11, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1523, 'COMODORO/MT - BRASIL', 'COMODORO', 11, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1526, 'CUIABA/MT - BRASIL', 'CUIABA', 11, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1529, 'DOM AQUINO/MT - BRASIL', 'DOM AQUINO', 11, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1532, 'GAUCHA DO NORTE/MT - BRASIL', 'GAUCHA DO NORTE', 11, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1576, 'PEDRA PRETA/MT - BRASIL', 'PEDRA PRETA', 11, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1335, 'LAGOA GRANDE DO MARANHAO/MA - BRASIL', 'LAGOA GRANDE DO MARANHAO', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1345, 'MARACACUME/MA - BRASIL', 'MARACACUME', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1350, 'MATINHA/MA - BRASIL', 'MATINHA', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1354, 'MIMOSO/MA - BRASIL', 'MIMOSO', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1358, 'MONCAO/MA - BRASIL', 'MONCAO', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1362, 'MORROS/MA - BRASIL', 'MORROS', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1366, 'NOVA BRASILIA/MA - BRASIL', 'NOVA BRASILIA', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1372, 'OLHO D´AGUA DAS CUNHAS/MA - BRASIL', 'OLHO D´AGUA DAS CUNHAS', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1380, 'PARNARAMA/MA - BRASIL', 'PARNARAMA', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1385, 'PAULO RAMOS/MA - BRASIL', 'PAULO RAMOS', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1389, 'PEQUIA/MA - BRASIL', 'PEQUIA', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1393, 'PINDORAMA/MA - BRASIL', 'PINDORAMA', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1396, 'PIRAPEMAS/MA - BRASIL', 'PIRAPEMAS', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1399, 'PORTO RICO DO MARANHAO/MA - BRASIL', 'PORTO RICO DO MARANHAO', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1404, 'PRESIDENTE VARGAS/MA - BRASIL', 'PRESIDENTE VARGAS', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1210, 'ARRAIAS/MA - BRASIL', 'ARRAIAS', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1216, 'BACURITUBA/MA - BRASIL', 'BACURITUBA', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1220, 'BARREIRINHAS/MA - BRASIL', 'BARREIRINHAS', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1225, 'BEQUIMAO/MA - BRASIL', 'BEQUIMAO', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1229, 'BOM JARDIM/MA - BRASIL', 'BOM JARDIM', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1235, 'BREJO DE AREIA/MA - BRASIL', 'BREJO DE AREIA', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1241, 'CACHOEIRA GRANDE/MA - BRASIL', 'CACHOEIRA GRANDE', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1248, 'CALUMBI/MA - BRASIL', 'CALUMBI', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1251, 'CANELEIRINHO/MA - BRASIL', 'CANELEIRINHO', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1259, 'CENTRO DO GUILHERME/MA - BRASIL', 'CENTRO DO GUILHERME', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1264, 'CENTRO DOS RAMOS/MA - BRASIL', 'CENTRO DOS RAMOS', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1269, 'COCAL DOS CABRITOS/MA - BRASIL', 'COCAL DOS CABRITOS', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1273, 'COLINAS/MA - BRASIL', 'COLINAS', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1276, 'COROATA/MA - BRASIL', 'COROATA', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1326, 'KM 17/MA - BRASIL', 'KM 17', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1330, 'LAGO VERDE/MA - BRASIL', 'LAGO VERDE', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1087, 'NEROPOLIS/GO - BRASIL', 'NEROPOLIS', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1092, 'NOVA CRIXAS/GO - BRASIL', 'NOVA CRIXAS', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1096, 'NOVA VENEZA/GO - BRASIL', 'NOVA VENEZA', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1103, 'OUVIDOR/GO - BRASIL', 'OUVIDOR', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1106, 'PALMEIRAS DE GOIAS/GO - BRASIL', 'PALMEIRAS DE GOIAS', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1113, 'PEROLANDIA/GO - BRASIL', 'PEROLANDIA', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1118, 'PIRENOPOLIS/GO - BRASIL', 'PIRENOPOLIS', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1123, 'PORANGATU/GO - BRASIL', 'PORANGATU', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1128, 'QUIRINOPOLIS/GO - BRASIL', 'QUIRINOPOLIS', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1134, 'ROCHEDO/GO - BRASIL', 'ROCHEDO', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1137, 'SANTA BARBARA DE GOIAS/GO - BRASIL', 'SANTA BARBARA DE GOIAS', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1143, 'SANTA RITA DO NOVO DESTINO/GO - BRASIL', 'SANTA RITA DO NOVO DESTINO', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1196, 'ALTO DO BOM SOSSEGO/MA - BRASIL', 'ALTO DO BOM SOSSEGO', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1203, 'ANDIROBAL/MA - BRASIL', 'ANDIROBAL', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (951, 'ARUANA/GO - BRASIL', 'ARUANA', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (956, 'BELA VISTA DE GOIAS/GO - BRASIL', 'BELA VISTA DE GOIAS', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (964, 'BURITI DE GOIAS/GO - BRASIL', 'BURITI DE GOIAS', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (971, 'CAIAPONIA/GO - BRASIL', 'CAIAPONIA', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (975, 'CAMPINACU/GO - BRASIL', 'CAMPINACU', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (979, 'CAMPOS VERDES/GO - BRASIL', 'CAMPOS VERDES', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (983, 'CATALAO/GO - BRASIL', 'CATALAO', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (987, 'CEZARINA/GO - BRASIL', 'CEZARINA', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (992, 'COCALZINHO DE GOIAS/GO - BRASIL', 'COCALZINHO DE GOIAS', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (998, 'CRISTIANOPOLIS/GO - BRASIL', 'CRISTIANOPOLIS', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1002, 'DAMIANOPOLIS/GO - BRASIL', 'DAMIANOPOLIS', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1006, 'DIVINOPOLIS DE GOIAS/GO - BRASIL', 'DIVINOPOLIS DE GOIAS', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1043, 'ITAGUARI/GO - BRASIL', 'ITAGUARI', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1048, 'ITAPURANGA/GO - BRASIL', 'ITAPURANGA', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1053, 'JANDAIA/GO - BRASIL', 'JANDAIA', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1057, 'JESUPOLIS/GO - BRASIL', 'JESUPOLIS', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1062, 'LEOPOLDO DE BULHOES/GO - BRASIL', 'LEOPOLDO DE BULHOES', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1070, 'MATRINCHA/GO - BRASIL', 'MATRINCHA', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1075, 'MOIPORA/GO - BRASIL', 'MOIPORA', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1078, 'MONTIVIDIU/GO - BRASIL', 'MONTIVIDIU', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (822, 'SAO JOAO DO JAGUARIBE/CE - BRASIL', 'SAO JOAO DO JAGUARIBE', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (829, 'TAMBORIL/CE - BRASIL', 'TAMBORIL', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (831, 'TAUA/CE - BRASIL', 'TAUA', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (835, 'TURURU/CE - BRASIL', 'TURURU', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (838, 'UMIRIM/CE - BRASIL', 'UMIRIM', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (843, 'VICOSA DO CEARA/CE - BRASIL', 'VICOSA DO CEARA', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (849, 'ALFREDO CHAVES/ES - BRASIL', 'ALFREDO CHAVES', 8, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (853, 'ARACRUZ/ES - BRASIL', 'ARACRUZ', 8, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (858, 'BOM JESUS DO NORTE/ES - BRASIL', 'BOM JESUS DO NORTE', 8, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (865, 'CONCEICAO DO CASTELO/ES - BRASIL', 'CONCEICAO DO CASTELO', 8, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (869, 'ECOPORANGA/ES - BRASIL', 'ECOPORANGA', 8, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (910, 'SAO JOSE DO CALCADO/ES - BRASIL', 'SAO JOSE DO CALCADO', 8, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (918, 'VILA PAVAO/ES - BRASIL', 'VILA PAVAO', 8, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (922, 'ABADIA DE GOIAS/GO - BRASIL', 'ABADIA DE GOIAS', 9, 28);
commit;
prompt 5500 records committed...
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (929, 'ALEXANIA/GO - BRASIL', 'ALEXANIA', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (933, 'ALTO PARAISO DE GOIAS/GO - BRASIL', 'ALTO PARAISO DE GOIAS', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (942, 'APARECIDA DO RIO DOCE/GO - BRASIL', 'APARECIDA DO RIO DOCE', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (949, 'ARANTINA/GO - BRASIL', 'ARANTINA', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (679, 'AURORA/CE - BRASIL', 'AURORA', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (684, 'BARRO/CE - BRASIL', 'BARRO', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (687, 'BEBERIBE/CE - BRASIL', 'BEBERIBE', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (692, 'CAMPOS SALES/CE - BRASIL', 'CAMPOS SALES', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (698, 'CARIUS/CE - BRASIL', 'CARIUS', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (701, 'CATARINA/CE - BRASIL', 'CATARINA', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (705, 'CHAVAL/CE - BRASIL', 'CHAVAL', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (709, 'CRATEUS/CE - BRASIL', 'CRATEUS', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (714, 'ERERE/CE - BRASIL', 'ERERE', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (716, 'FARIAS BRITO/CE - BRASIL', 'FARIAS BRITO', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (722, 'GRACA/CE - BRASIL', 'GRACA', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (724, 'GRANJEIRO/CE - BRASIL', 'GRANJEIRO', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (727, 'GUARACIABA DO NORTE/CE - BRASIL', 'GUARACIABA DO NORTE', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (762, 'MADALENA/CE - BRASIL', 'MADALENA', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (765, 'MARCO/CE - BRASIL', 'MARCO', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (768, 'MAURITI/CE - BRASIL', 'MAURITI', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (772, 'MIRAIMA/CE - BRASIL', 'MIRAIMA', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (775, 'MONSENHOR TABOSA/CE - BRASIL', 'MONSENHOR TABOSA', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (783, 'NOVO ORIENTE/CE - BRASIL', 'NOVO ORIENTE', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (788, 'PACOTI/CE - BRASIL', 'PACOTI', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (792, 'PARACURU/CE - BRASIL', 'PARACURU', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (795, 'PARAMOTI/CE - BRASIL', 'PARAMOTI', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (800, 'PINDORETAMA/CE - BRASIL', 'PINDORETAMA', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (805, 'POTENGI/CE - BRASIL', 'POTENGI', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (809, 'QUIXELO/CE - BRASIL', 'QUIXELO', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (813, 'RERIUTABA/CE - BRASIL', 'RERIUTABA', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (818, 'SANTANA DO ACARAU/CE - BRASIL', 'SANTANA DO ACARAU', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (551, 'POJUCA/BA - BRASIL', 'POJUCA', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (557, 'PRESIDENTE JANIO QUADROS/BA - BRASIL', 'PRESIDENTE JANIO QUADROS', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (564, 'RETIROLANDIA/BA - BRASIL', 'RETIROLANDIA', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (571, 'RIO DE CONTAS/BA - BRASIL', 'RIO DE CONTAS', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (575, 'RODELAS/BA - BRASIL', 'RODELAS', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (581, 'SANTA CRUZ CABRALIA/BA - BRASIL', 'SANTA CRUZ CABRALIA', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (622, 'SOBRADINHO/BA - BRASIL', 'SOBRADINHO', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (627, 'TANQUINHO/BA - BRASIL', 'TANQUINHO', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (631, 'TEODORO SAMPAIO/BA - BRASIL', 'TEODORO SAMPAIO', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (637, 'UAUA/BA - BRASIL', 'UAUA', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (640, 'UBATA/BA - BRASIL', 'UBATA', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (644, 'URANDI/BA - BRASIL', 'URANDI', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (647, 'VALENCA/BA - BRASIL', 'VALENCA', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (652, 'VARZEDO/BA - BRASIL', 'VARZEDO', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (657, 'WANDERLEY/BA - BRASIL', 'WANDERLEY', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (661, 'ACARAPE/CE - BRASIL', 'ACARAPE', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (664, 'AIUABA/CE - BRASIL', 'AIUABA', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (669, 'ANTONINA DO NORTE/CE - BRASIL', 'ANTONINA DO NORTE', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (675, 'ARARIPE/CE - BRASIL', 'ARARIPE', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (409, 'IPECAETA/BA - BRASIL', 'IPECAETA', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (414, 'IRAMAIA/BA - BRASIL', 'IRAMAIA', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (417, 'IRECE/BA - BRASIL', 'IRECE', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (421, 'ITACARE/BA - BRASIL', 'ITACARE', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (424, 'ITAGIBA/BA - BRASIL', 'ITAGIBA', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (429, 'ITAMARAJU/BA - BRASIL', 'ITAMARAJU', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (434, 'ITAPARICA/BA - BRASIL', 'ITAPARICA', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (439, 'ITAPITANGA/BA - BRASIL', 'ITAPITANGA', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (442, 'ITATIM/BA - BRASIL', 'ITATIM', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (479, 'MACARANI/BA - BRASIL', 'MACARANI', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (482, 'MADRE DE DEUS/BA - BRASIL', 'MADRE DE DEUS', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (485, 'MAIRI/BA - BRASIL', 'MAIRI', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (489, 'MANSIDAO/BA - BRASIL', 'MANSIDAO', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (494, 'MASCOTE/BA - BRASIL', 'MASCOTE', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (496, 'MATINA/BA - BRASIL', 'MATINA', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (501, 'MIRANTE/BA - BRASIL', 'MIRANTE', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (504, 'MORRO DO CHAPEU/BA - BRASIL', 'MORRO DO CHAPEU', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (510, 'MUNIZ FERREIRA/BA - BRASIL', 'MUNIZ FERREIRA', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (515, 'NILO PECANHA/BA - BRASIL', 'NILO PECANHA', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (522, 'NOVA SOURE/BA - BRASIL', 'NOVA SOURE', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (526, 'OLINDINA/BA - BRASIL', 'OLINDINA', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (531, 'PALMEIRAS/BA - BRASIL', 'PALMEIRAS', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (535, 'PAU BRASIL/BA - BRASIL', 'PAU BRASIL', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (539, 'PEDRO ALEXANDRE/BA - BRASIL', 'PEDRO ALEXANDRE', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (546, 'PIRIPA/BA - BRASIL', 'PIRIPA', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (271, 'ARATUIPE/BA - BRASIL', 'ARATUIPE', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (276, 'BARRA/BA - BRASIL', 'BARRA', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (281, 'BARREIRAS/BA - BRASIL', 'BARREIRAS', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (285, 'BELO CAMPO/BA - BRASIL', 'BELO CAMPO', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (291, 'BONINAL/BA - BRASIL', 'BONINAL', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (293, 'BOQUIRA/BA - BRASIL', 'BOQUIRA', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (329, 'CARAVELAS/BA - BRASIL', 'CARAVELAS', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (332, 'CASA NOVA/BA - BRASIL', 'CASA NOVA', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (335, 'CATU/BA - BRASIL', 'CATU', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (337, 'CENTRAL/BA - BRASIL', 'CENTRAL', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (342, 'COCOS/BA - BRASIL', 'COCOS', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (346, 'CONCEICAO DO JACUIPE/BA - BRASIL', 'CONCEICAO DO JACUIPE', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (352, 'CORIBE/BA - BRASIL', 'CORIBE', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (357, 'CRISOPOLIS/BA - BRASIL', 'CRISOPOLIS', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (361, 'DARIO MEIRA/BA - BRASIL', 'DARIO MEIRA', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (366, 'ENCRUZILHADA/BA - BRASIL', 'ENCRUZILHADA', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (372, 'FATIMA/BA - BRASIL', 'FATIMA', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (375, 'FILADELFIA/BA - BRASIL', 'FILADELFIA', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (380, 'GAVIAO/BA - BRASIL', 'GAVIAO', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (385, 'GUAJERU/BA - BRASIL', 'GUAJERU', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (388, 'HELIOPOLIS/BA - BRASIL', 'HELIOPOLIS', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (392, 'IBICOARA/BA - BRASIL', 'IBICOARA', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (397, 'IBIRAPITANGA/BA - BRASIL', 'IBIRAPITANGA', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (402, 'IBOTIRAMA/BA - BRASIL', 'IBOTIRAMA', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (133, 'SERRA DO NAVIO/AP - BRASIL', 'SERRA DO NAVIO', 3, 28);
commit;
prompt 5600 records committed...
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (139, 'ANORI/AM - BRASIL', 'ANORI', 4, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (142, 'AUTAZES/AM - BRASIL', 'AUTAZES', 4, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (146, 'BELEM/AM - BRASIL', 'BELEM', 4, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (149, 'BETANIA/AM - BRASIL', 'BETANIA', 4, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (185, 'ITACOATIARA/AM - BRASIL', 'ITACOATIARA', 4, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (189, 'JUI/AM - BRASIL', 'JUI', 4, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (191, 'JUTAI/AM - BRASIL', 'JUTAI', 4, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (193, 'LARANJAL/AM - BRASIL', 'LARANJAL', 4, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (196, 'MANAUS/AM - BRASIL', 'MANAUS', 4, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (198, 'MARAA/AM - BRASIL', 'MARAA', 4, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (201, 'MONTE VERDE/AM - BRASIL', 'MONTE VERDE', 4, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (206, 'NOVO AIRAO/AM - BRASIL', 'NOVO AIRAO', 4, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (210, 'PAUINI/AM - BRASIL', 'PAUINI', 4, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (215, 'PRESIDENTE FIGUEIREDO/AM - BRASIL', 'PRESIDENTE FIGUEIREDO', 4, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (224, 'SAO DOMINGOS II/AM - BRASIL', 'SAO DOMINGOS II', 4, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (230, 'SAO PAULO/AM - BRASIL', 'SAO PAULO', 4, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (235, 'SILVES/AM - BRASIL', 'SILVES', 4, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (237, 'TAPAUA/AM - BRASIL', 'TAPAUA', 4, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (241, 'URUCARA/AM - BRASIL', 'URUCARA', 4, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (244, 'ABAIRA/BA - BRASIL', 'ABAIRA', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (248, 'AGUA FRIA/BA - BRASIL', 'AGUA FRIA', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (253, 'AMARGOSA/BA - BRASIL', 'AMARGOSA', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (258, 'ANDORINHA/BA - BRASIL', 'ANDORINHA', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (263, 'ANTONIO GONCALVES/BA - BRASIL', 'ANTONIO GONCALVES', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (268, 'ARACI/BA - BRASIL', 'ARACI', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (97, 'PORTO CALVO/AL - BRASIL', 'PORTO CALVO', 2, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (12, 'MARECHAL THAUMATURGO/AC - BRASIL', 'MARECHAL THAUMATURGO', 1, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (17, 'SENA MADUREIRA/AC - BRASIL', 'SENA MADUREIRA', 1, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (23, 'ARAPIRACA/AL - BRASIL', 'ARAPIRACA', 2, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (28, 'BELEM/AL - BRASIL', 'BELEM', 2, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (31, 'BRANQUINHA/AL - BRASIL', 'BRANQUINHA', 2, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (36, 'CANAPI/AL - BRASIL', 'CANAPI', 2, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (41, 'COLONIA LEOPOLDINA/AL - BRASIL', 'COLONIA LEOPOLDINA', 2, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (47, 'ESTRELA DE ALAGOAS/AL - BRASIL', 'ESTRELA DE ALAGOAS', 2, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (54, 'IGREJA NOVA/AL - BRASIL', 'IGREJA NOVA', 2, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (61, 'JUNDIA/AL - BRASIL', 'JUNDIA', 2, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (64, 'LIMOEIRO DE ANADIA/AL - BRASIL', 'LIMOEIRO DE ANADIA', 2, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (72, 'MATA GRANDE/AL - BRASIL', 'MATA GRANDE', 2, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (77, 'MURICI/AL - BRASIL', 'MURICI', 2, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (80, 'OLHO D´AGUA DO CASADO/AL - BRASIL', 'OLHO D´AGUA DO CASADO', 2, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (87, 'PARICONHA/AL - BRASIL', 'PARICONHA', 2, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (91, 'PENEDO/AL - BRASIL', 'PENEDO', 2, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (94, 'PINDOBA/AL - BRASIL', 'PINDOBA', 2, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5788, 'FORTALEZA DO TABOCAO/TO - BRASIL', 'FORTALEZA DO TABOCAO', 27, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5580, 'SAO PAULO/SP - BRASIL', 'SAO PAULO', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5590, 'SEBASTIANOPOLIS DO SUL/SP - BRASIL', 'SEBASTIANOPOLIS DO SUL', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5605, 'TABATINGA/SP - BRASIL', 'TABATINGA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5614, 'TAPIRATIBA/SP - BRASIL', 'TAPIRATIBA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5624, 'TERRA ROXA/SP - BRASIL', 'TERRA ROXA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5635, 'TURIUBA/SP - BRASIL', 'TURIUBA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5640, 'UCHOA/SP - BRASIL', 'UCHOA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5649, 'VARGEM GRANDE DO SUL/SP - BRASIL', 'VARGEM GRANDE DO SUL', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5700, 'NEOPOLIS/SE - BRASIL', 'NEOPOLIS', 26, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5703, 'NOSSA SENHORA DAS DORES/SE - BRASIL', 'NOSSA SENHORA DAS DORES', 26, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5466, 'PONTAL/SP - BRASIL', 'PONTAL', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5471, 'PORTO FELIZ/SP - BRASIL', 'PORTO FELIZ', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5342, 'MARACAI/SP - BRASIL', 'MARACAI', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5351, 'MERIDIANO/SP - BRASIL', 'MERIDIANO', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5361, 'MOGI-GUACU/SP - BRASIL', 'MOGI-GUACU', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5368, 'MONTE ALTO/SP - BRASIL', 'MONTE ALTO', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5377, 'MURUTINGA DO SUL/SP - BRASIL', 'MURUTINGA DO SUL', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5388, 'NOVA CASTILHO/SP - BRASIL', 'NOVA CASTILHO', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5440, 'PEREIRAS/SP - BRASIL', 'PEREIRAS', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5448, 'PIQUEROBI/SP - BRASIL', 'PIQUEROBI', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5182, 'ELDORADO/SP - BRASIL', 'ELDORADO', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5190, 'ESPIRITO SANTO DO PINHAL/SP - BRASIL', 'ESPIRITO SANTO DO PINHAL', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5203, 'FLORIDA PAULISTA/SP - BRASIL', 'FLORIDA PAULISTA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5217, 'GUAIMBE/SP - BRASIL', 'GUAIMBE', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5225, 'GUARANTA/SP - BRASIL', 'GUARANTA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5232, 'GUARULHOS/SP - BRASIL', 'GUARULHOS', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5148, 'CERQUILHO/SP - BRASIL', 'CERQUILHO', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5155, 'CONCHAL/SP - BRASIL', 'CONCHAL', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5163, 'COTIA/SP - BRASIL', 'COTIA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5170, 'DESCALVADO/SP - BRASIL', 'DESCALVADO', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5179, 'DUARTINA/SP - BRASIL', 'DUARTINA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4920, 'PICARRAS/SC - BRASIL', 'PICARRAS', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4927, 'PONTE ALTA DO NORTE/SC - BRASIL', 'PONTE ALTA DO NORTE', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4938, 'RANCHO QUEIMADO/SC - BRASIL', 'RANCHO QUEIMADO', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4949, 'SALETE/SC - BRASIL', 'SALETE', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4956, 'SANTA ROSA DO SUL/SC - BRASIL', 'SANTA ROSA DO SUL', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4965, 'SAO CRISTOVAO DO SUL/SC - BRASIL', 'SAO CRISTOVAO DO SUL', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5013, 'VITOR MEIRELES/SC - BRASIL', 'VITOR MEIRELES', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5024, 'AGUAS DE SANTA BARBARA/SP - BRASIL', 'AGUAS DE SANTA BARBARA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (5042, 'ANDRADINA/SP - BRASIL', 'ANDRADINA', 25, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4783, 'CAMPO ERE/SC - BRASIL', 'CAMPO ERE', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4790, 'CATANDUVAS/SC - BRASIL', 'CATANDUVAS', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4680, 'CUJUBIM/RO - BRASIL', 'CUJUBIM', 22, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4687, 'MACHADINHO D´OESTE/RO - BRASIL', 'MACHADINHO D´OESTE', 22, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4730, 'VILA BRASIL/RR - BRASIL', 'VILA BRASIL', 23, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4737, 'AGUAS FRIAS/SC - BRASIL', 'AGUAS FRIAS', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4750, 'ARMAZEM/SC - BRASIL', 'ARMAZEM', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4755, 'AURORA/SC - BRASIL', 'AURORA', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4761, 'BELA VISTA DO TOLDO/SC - BRASIL', 'BELA VISTA DO TOLDO', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4773, 'BRACO DO NORTE/SC - BRASIL', 'BRACO DO NORTE', 24, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4534, 'SANTA CLARA DO SUL/RS - BRASIL', 'SANTA CLARA DO SUL', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4548, 'SANTO ANTONIO DO PLANALTO/RS - BRASIL', 'SANTO ANTONIO DO PLANALTO', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4562, 'SAO JOSE DO HERVAL/RS - BRASIL', 'SAO JOSE DO HERVAL', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4484, 'PASSO DO SOBRADO/RS - BRASIL', 'PASSO DO SOBRADO', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4494, 'PINHEIRO MACHADO/RS - BRASIL', 'PINHEIRO MACHADO', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4507, 'PRESIDENTE LUCENA/RS - BRASIL', 'PRESIDENTE LUCENA', 21, 28);
commit;
prompt 5700 records committed...
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4520, 'RIOZINHO/RS - BRASIL', 'RIOZINHO', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4527, 'ROSARIO DO SUL/RS - BRASIL', 'ROSARIO DO SUL', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4276, 'CAPAO DA CANOA/RS - BRASIL', 'CAPAO DA CANOA', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4288, 'CAXIAS DO SUL/RS - BRASIL', 'CAXIAS DO SUL', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4332, 'ENGENHO VELHO/RS - BRASIL', 'ENGENHO VELHO', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4340, 'ESMERALDA/RS - BRASIL', 'ESMERALDA', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4347, 'ESTRELA VELHA/RS - BRASIL', 'ESTRELA VELHA', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4357, 'FONTOURA XAVIER/RS - BRASIL', 'FONTOURA XAVIER', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4370, 'GRAMADO DOS LOUREIROS/RS - BRASIL', 'GRAMADO DOS LOUREIROS', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4387, 'IGREJINHA/RS - BRASIL', 'IGREJINHA', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4396, 'ITAARA/RS - BRASIL', 'ITAARA', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4263, 'CAMBARA DO SUL/RS - BRASIL', 'CAMBARA DO SUL', 21, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4015, 'SAO VICENTE DE PAULA/RJ - BRASIL', 'SAO VICENTE DE PAULA', 19, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4028, 'TRIUNFO/RJ - BRASIL', 'TRIUNFO', 19, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4073, 'EQUADOR/RN - BRASIL', 'EQUADOR', 20, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4080, 'FRUTUOSO GOMES/RN - BRASIL', 'FRUTUOSO GOMES', 20, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4094, 'JAPI/RN - BRASIL', 'JAPI', 20, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4098, 'JOAO CAMARA/RN - BRASIL', 'JOAO CAMARA', 20, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4106, 'LAGOA SALGADA/RN - BRASIL', 'LAGOA SALGADA', 20, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4117, 'MESSIAS TARGINO/RN - BRASIL', 'MESSIAS TARGINO', 20, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4129, 'PARAZINHO/RN - BRASIL', 'PARAZINHO', 20, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (4138, 'PEDRO AVELINO/RN - BRASIL', 'PEDRO AVELINO', 20, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3885, 'SUSSUAPARA/PI - BRASIL', 'SUSSUAPARA', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3897, 'VARZEA GRANDE/PI - BRASIL', 'VARZEA GRANDE', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3938, 'CONSELHEIRO PAULINO/RJ - BRASIL', 'CONSELHEIRO PAULINO', 19, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3824, 'PORTO/PI - BRASIL', 'PORTO', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3828, 'REDENCAO DO GURGUEIA/PI - BRASIL', 'REDENCAO DO GURGUEIA', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3842, 'SANTA ROSA DO PIAUI/PI - BRASIL', 'SANTA ROSA DO PIAUI', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3854, 'SAO FRANCISCO DO PIAUI/PI - BRASIL', 'SAO FRANCISCO DO PIAUI', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3866, 'SAO JULIAO/PI - BRASIL', 'SAO JULIAO', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3872, 'SAO RAIMUNDO NONATO/PI - BRASIL', 'SAO RAIMUNDO NONATO', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3648, 'BARRA D´ALCANTARA/PI - BRASIL', 'BARRA D´ALCANTARA', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3687, 'CAPITAO DE CAMPOS/PI - BRASIL', 'CAPITAO DE CAMPOS', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3699, 'COLONIA DO GURGUEIA/PI - BRASIL', 'COLONIA DO GURGUEIA', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3713, 'CURRAL NOVO DO PIAUI/PI - BRASIL', 'CURRAL NOVO DO PIAUI', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3605, 'TUPANATINGA/PE - BRASIL', 'TUPANATINGA', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3614, 'VERTENTE DO LERIO/PE - BRASIL', 'VERTENTE DO LERIO', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3627, 'ALEGRETE DO PIAUI/PI - BRASIL', 'ALEGRETE DO PIAUI', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3640, 'ARRAIAL/PI - BRASIL', 'ARRAIAL', 18, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3437, 'LAGOA DE DENTRO/PE - BRASIL', 'LAGOA DE DENTRO', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3447, 'LAGOINHA/PE - BRASIL', 'LAGOINHA', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3456, 'MALHADAREIA/PE - BRASIL', 'MALHADAREIA', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3466, 'MORAIS/PE - BRASIL', 'MORAIS', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3473, 'NAZARE DA MATA/PE - BRASIL', 'NAZARE DA MATA', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3487, 'PALMARES/PE - BRASIL', 'PALMARES', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3497, 'PAUDALHO/PE - BRASIL', 'PAUDALHO', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3503, 'PETROLINA/PE - BRASIL', 'PETROLINA', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3512, 'PROJETO BRIGIDA/PE - BRASIL', 'PROJETO BRIGIDA', 17, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3165, 'RESERVA/PR - BRASIL', 'RESERVA', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3169, 'RIO AZUL/PR - BRASIL', 'RIO AZUL', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3177, 'RONDON/PR - BRASIL', 'RONDON', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3184, 'SANTA CECILIA DO PAVAO/PR - BRASIL', 'SANTA CECILIA DO PAVAO', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3197, 'SANTANA DO ITARARE/PR - BRASIL', 'SANTANA DO ITARARE', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3207, 'SAO JOAO DO IVAI/PR - BRASIL', 'SAO JOAO DO IVAI', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3216, 'SAO MANOEL DO PARANA/PR - BRASIL', 'SAO MANOEL DO PARANA', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3229, 'SERTANEJA/PR - BRASIL', 'SERTANEJA', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3029, 'JAGUAPITA/PR - BRASIL', 'JAGUAPITA', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3038, 'JESUITAS/PR - BRASIL', 'JESUITAS', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3046, 'LARANJEIRAS DO SUL/PR - BRASIL', 'LARANJEIRAS DO SUL', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (3062, 'MANFRINOPOLIS/PR - BRASIL', 'MANFRINOPOLIS', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2945, 'CORONEL VIVIDA/PR - BRASIL', 'CORONEL VIVIDA', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2956, 'DIAMANTE D´OESTE/PR - BRASIL', 'DIAMANTE D´OESTE', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2966, 'ESPIGAO ALTO DO IGUACU/PR - BRASIL', 'ESPIGAO ALTO DO IGUACU', 16, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2768, 'PARARI/PB - BRASIL', 'PARARI', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2774, 'PEDRAS DE FOGO/PB - BRASIL', 'PEDRAS DE FOGO', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2784, 'POCO DANTAS/PB - BRASIL', 'POCO DANTAS', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2797, 'SALGADO DE SAO FELIX/PB - BRASIL', 'SALGADO DE SAO FELIX', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2810, 'SAO BENTO DE POMBAL/PB - BRASIL', 'SAO BENTO DE POMBAL', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2819, 'SAO JOSE DE PIRANHAS/PB - BRASIL', 'SAO JOSE DE PIRANHAS', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2832, 'SERRA BRANCA/PB - BRASIL', 'SERRA BRANCA', 15, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2492, 'AUGUSTO CORREA/PA - BRASIL', 'AUGUSTO CORREA', 14, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2503, 'BONITO/PA - BRASIL', 'BONITO', 14, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2506, 'BREJO GRANDE DO ARAGUAIA/PA - BRASIL', 'BREJO GRANDE DO ARAGUAIA', 14, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2525, 'CURIONOPOLIS/PA - BRASIL', 'CURIONOPOLIS', 14, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2532, 'FLORESTA DO ARAGUAIA/PA - BRASIL', 'FLORESTA DO ARAGUAIA', 14, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2547, 'LIMOEIRO DO AJURU/PA - BRASIL', 'LIMOEIRO DO AJURU', 14, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2561, 'MUANA/PA - BRASIL', 'MUANA', 14, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2566, 'NOVO PROGRESSO/PA - BRASIL', 'NOVO PROGRESSO', 14, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2363, 'SAO GONCALO DO ABAETE/MG - BRASIL', 'SAO GONCALO DO ABAETE', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2375, 'SAO JOAO DO MANTENINHA/MG - BRASIL', 'SAO JOAO DO MANTENINHA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2387, 'SAO JOSE DO MANTIMENTO/MG - BRASIL', 'SAO JOSE DO MANTIMENTO', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2301, 'RIO PRETO/MG - BRASIL', 'RIO PRETO', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2308, 'RUBIM/MG - BRASIL', 'RUBIM', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2313, 'SALTO DA DIVISA/MG - BRASIL', 'SALTO DA DIVISA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2323, 'SANTA MARIA DE ITABIRA/MG - BRASIL', 'SANTA MARIA DE ITABIRA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2353, 'SANTOS DUMONT/MG - BRASIL', 'SANTOS DUMONT', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2110, 'LIMEIRA DO OESTE/MG - BRASIL', 'LIMEIRA DO OESTE', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2123, 'MAR DE ESPANHA/MG - BRASIL', 'MAR DE ESPANHA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2134, 'MATERLANDIA/MG - BRASIL', 'MATERLANDIA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2141, 'MATOZINHOS/MG - BRASIL', 'MATOZINHOS', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2148, 'MINAS NOVAS/MG - BRASIL', 'MINAS NOVAS', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2159, 'MONTE AZUL/MG - BRASIL', 'MONTE AZUL', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2166, 'MORADA NOVA DE MINAS/MG - BRASIL', 'MORADA NOVA DE MINAS', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2181, 'NOVA LIMA/MG - BRASIL', 'NOVA LIMA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (2045, 'ITAMARATI DE MINAS/MG - BRASIL', 'ITAMARATI DE MINAS', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1843, 'CARMO DA CACHOEIRA/MG - BRASIL', 'CARMO DA CACHOEIRA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1853, 'CARVALHOS/MG - BRASIL', 'CARVALHOS', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1863, 'CENTRAL DE MINAS/MG - BRASIL', 'CENTRAL DE MINAS', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1878, 'CONCEICAO DA APARECIDA/MG - BRASIL', 'CONCEICAO DA APARECIDA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1891, 'CONQUISTA/MG - BRASIL', 'CONQUISTA', 13, 28);
commit;
prompt 5800 records committed...
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1898, 'CORDISBURGO/MG - BRASIL', 'CORDISBURGO', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1906, 'CORONEL XAVIER CHAVES/MG - BRASIL', 'CORONEL XAVIER CHAVES', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1950, 'ENGENHEIRO NAVARRO/MG - BRASIL', 'ENGENHEIRO NAVARRO', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1710, 'AGUAS VERMELHAS/MG - BRASIL', 'AGUAS VERMELHAS', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1725, 'ALVINOPOLIS/MG - BRASIL', 'ALVINOPOLIS', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1732, 'ANTONIO PRADO DE MINAS/MG - BRASIL', 'ANTONIO PRADO DE MINAS', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1600, 'SANTA RITA DO TRIVELATO/MT - BRASIL', 'SANTA RITA DO TRIVELATO', 11, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1616, 'TESOURO/MT - BRASIL', 'TESOURO', 11, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1627, 'ANAURILANDIA/MS - BRASIL', 'ANAURILANDIA', 12, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1637, 'BELA VISTA/MS - BRASIL', 'BELA VISTA', 12, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1683, 'PONTA PORA/MS - BRASIL', 'PONTA PORA', 12, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1691, 'SAO GABRIEL DO OESTE/MS - BRASIL', 'SAO GABRIEL DO OESTE', 12, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1704, 'ACAIACA/MG - BRASIL', 'ACAIACA', 13, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1456, 'SAO VICENTE FERRER/MA - BRASIL', 'SAO VICENTE FERRER', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1468, 'TRES LAGOAS/MA - BRASIL', 'TRES LAGOAS', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1480, 'VILA NOVA DOS MARTIRIOS/MA - BRASIL', 'VILA NOVA DOS MARTIRIOS', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1494, 'ANALANDIA DO NORTE/MT - BRASIL', 'ANALANDIA DO NORTE', 11, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1508, 'CACERES/MT - BRASIL', 'CACERES', 11, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1555, 'MORRO SAO GERONIMO/MT - BRASIL', 'MORRO SAO GERONIMO', 11, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1434, 'SAO FRANCISCO DO BREJAO/MA - BRASIL', 'SAO FRANCISCO DO BREJAO', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1447, 'SAO LUIS GONZAGA DO MARANHAO/MA - BRASIL', 'SAO LUIS GONZAGA DO MARANHAO', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1222, 'BELA VISTA DO MARANHAO/MA - BRASIL', 'BELA VISTA DO MARANHAO', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1236, 'BURITI/MA - BRASIL', 'BURITI', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1240, 'BURITIRANA/MA - BRASIL', 'BURITIRANA', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1252, 'CANTANHEDE/MA - BRASIL', 'CANTANHEDE', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1258, 'CENTRAL DO MARANHAO/MA - BRASIL', 'CENTRAL DO MARANHAO', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1300, 'GOVERNADOR ARCHER/MA - BRASIL', 'GOVERNADOR ARCHER', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1314, 'IMPERATRIZ/MA - BRASIL', 'IMPERATRIZ', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1322, 'JENIPAPO DOS VIEIRAS/MA - BRASIL', 'JENIPAPO DOS VIEIRAS', 10, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (955, 'BARRO ALTO/GO - BRASIL', 'BARRO ALTO', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (963, 'BURITI ALEGRE/GO - BRASIL', 'BURITI ALEGRE', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (974, 'CAMPESTRE DE GOIAS/GO - BRASIL', 'CAMPESTRE DE GOIAS', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (988, 'CHAPADAO DO CEU/GO - BRASIL', 'CHAPADAO DO CEU', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1040, 'ISRAELANDIA/GO - BRASIL', 'ISRAELANDIA', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1050, 'ITAUCU/GO - BRASIL', 'ITAUCU', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1058, 'JOVIANIA/GO - BRASIL', 'JOVIANIA', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1066, 'MAMBAI/GO - BRASIL', 'MAMBAI', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1071, 'MAURILANDIA/GO - BRASIL', 'MAURILANDIA', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (1082, 'MOSSAMEDES/GO - BRASIL', 'MOSSAMEDES', 9, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (825, 'SENADOR SA/CE - BRASIL', 'SENADOR SA', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (836, 'UBAJARA/CE - BRASIL', 'UBAJARA', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (845, 'AFONSO CLAUDIO/ES - BRASIL', 'AFONSO CLAUDIO', 8, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (854, 'ATILIO VIVACQUA/ES - BRASIL', 'ATILIO VIVACQUA', 8, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (721, 'GENERAL SAMPAIO/CE - BRASIL', 'GENERAL SAMPAIO', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (776, 'MORADA NOVA/CE - BRASIL', 'MORADA NOVA', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (784, 'OCARA/CE - BRASIL', 'OCARA', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (793, 'PARAIPABA/CE - BRASIL', 'PARAIPABA', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (801, 'PIQUET CARNEIRO/CE - BRASIL', 'PIQUET CARNEIRO', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (814, 'RUSSAS/CE - BRASIL', 'RUSSAS', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (819, 'SANTANA DO CARIRI/CE - BRASIL', 'SANTANA DO CARIRI', 6, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (558, 'PRESIDENTE TANCREDO NEVES/BA - BRASIL', 'PRESIDENTE TANCREDO NEVES', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (573, 'RIO DO PIRES/BA - BRASIL', 'RIO DO PIRES', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (607, 'SATIRO DIAS/BA - BRASIL', 'SATIRO DIAS', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (618, 'SERROLANDIA/BA - BRASIL', 'SERROLANDIA', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (624, 'TABOCAS DO BREJO VELHO/BA - BRASIL', 'TABOCAS DO BREJO VELHO', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (645, 'URUCUCA/BA - BRASIL', 'URUCUCA', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (650, 'VARZEA DO POCO/BA - BRASIL', 'VARZEA DO POCO', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (272, 'AURELINO LEAL/BA - BRASIL', 'AURELINO LEAL', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (283, 'BARRO PRETO/BA - BRASIL', 'BARRO PRETO', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (290, 'BOM JESUS DA SERRA/BA - BRASIL', 'BOM JESUS DA SERRA', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (349, 'CONTENDAS DO SINCORA/BA - BRASIL', 'CONTENDAS DO SINCORA', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (362, 'DIAS D´AVILA/BA - BRASIL', 'DIAS D´AVILA', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (373, 'FEIRA DA MATA/BA - BRASIL', 'FEIRA DA MATA', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (384, 'GOVERNADOR MANGABEIRA/BA - BRASIL', 'GOVERNADOR MANGABEIRA', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (401, 'IBITITA/BA - BRASIL', 'IBITITA', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (406, 'IGUAI/BA - BRASIL', 'IGUAI', 5, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (141, 'ATALAIA DO NORTE/AM - BRASIL', 'ATALAIA DO NORTE', 4, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (203, 'NHAMUNDA/AM - BRASIL', 'NHAMUNDA', 4, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (212, 'PORTO ALEGRE/AM - BRASIL', 'PORTO ALEGRE', 4, 28);
insert into CIDADE (ID, CODIGO, NOME, ID_ESTADO, ID_PAIS)
values (218, 'SANTA INES/AM - BRASIL', 'SANTA INES', 4, 28);
commit;
prompt 5869 records loaded
prompt Loading CLIENTE...
insert into CLIENTE (ID)
values (1);
insert into CLIENTE (ID)
values (2);
insert into CLIENTE (ID)
values (3);
commit;
prompt 3 records loaded
prompt Loading CONDICAO_PAGAMENTO...
insert into CONDICAO_PAGAMENTO (ID, CODIGO, DESCRICAO)
values (1, 'AVISTA', 'A VISTA');
insert into CONDICAO_PAGAMENTO (ID, CODIGO, DESCRICAO)
values (2, 'ANTECIPADO', 'ANTECIPADO');
insert into CONDICAO_PAGAMENTO (ID, CODIGO, DESCRICAO)
values (3, '30', '30 DIAS');
insert into CONDICAO_PAGAMENTO (ID, CODIGO, DESCRICAO)
values (4, '60', '60 DIAS');
insert into CONDICAO_PAGAMENTO (ID, CODIGO, DESCRICAO)
values (5, '90', '90 DIAS');
insert into CONDICAO_PAGAMENTO (ID, CODIGO, DESCRICAO)
values (6, '30/60', '30/60 DIAS');
insert into CONDICAO_PAGAMENTO (ID, CODIGO, DESCRICAO)
values (7, '30/60/90', '30/60/90 DIAS');
commit;
prompt 7 records loaded
prompt Loading CONDICAO_PAGAMENTO_PRAZO...
insert into CONDICAO_PAGAMENTO_PRAZO (ID, ID_CONDICAO_PAGAMENTO, DIAS_PRAZO)
values (1, 1, null);
insert into CONDICAO_PAGAMENTO_PRAZO (ID, ID_CONDICAO_PAGAMENTO, DIAS_PRAZO)
values (2, 2, 0);
insert into CONDICAO_PAGAMENTO_PRAZO (ID, ID_CONDICAO_PAGAMENTO, DIAS_PRAZO)
values (3, 3, 30);
insert into CONDICAO_PAGAMENTO_PRAZO (ID, ID_CONDICAO_PAGAMENTO, DIAS_PRAZO)
values (4, 4, 60);
insert into CONDICAO_PAGAMENTO_PRAZO (ID, ID_CONDICAO_PAGAMENTO, DIAS_PRAZO)
values (5, 5, 90);
insert into CONDICAO_PAGAMENTO_PRAZO (ID, ID_CONDICAO_PAGAMENTO, DIAS_PRAZO)
values (6, 6, 30);
insert into CONDICAO_PAGAMENTO_PRAZO (ID, ID_CONDICAO_PAGAMENTO, DIAS_PRAZO)
values (7, 6, 60);
insert into CONDICAO_PAGAMENTO_PRAZO (ID, ID_CONDICAO_PAGAMENTO, DIAS_PRAZO)
values (8, 7, 30);
insert into CONDICAO_PAGAMENTO_PRAZO (ID, ID_CONDICAO_PAGAMENTO, DIAS_PRAZO)
values (9, 7, 60);
insert into CONDICAO_PAGAMENTO_PRAZO (ID, ID_CONDICAO_PAGAMENTO, DIAS_PRAZO)
values (10, 7, 90);
commit;
prompt 10 records loaded
prompt Loading CONDICAO_VENDA...
insert into CONDICAO_VENDA (ID, CODIGO, DESCRICAO)
values (1, 'CIF', 'CUST, INSURANCE AND FREIGHT');
insert into CONDICAO_VENDA (ID, CODIGO, DESCRICAO)
values (2, 'FOB', 'FREE ON BOARD');
commit;
prompt 2 records loaded
prompt Loading CONDICAO_VENDA_VIA_TRANSP...
insert into CONDICAO_VENDA_VIA_TRANSP (ID, ID_CONDICAO_VENDA, ID_VIA_TRANSPORTE)
values (1, 1, 1);
insert into CONDICAO_VENDA_VIA_TRANSP (ID, ID_CONDICAO_VENDA, ID_VIA_TRANSPORTE)
values (2, 1, 2);
insert into CONDICAO_VENDA_VIA_TRANSP (ID, ID_CONDICAO_VENDA, ID_VIA_TRANSPORTE)
values (3, 1, 3);
insert into CONDICAO_VENDA_VIA_TRANSP (ID, ID_CONDICAO_VENDA, ID_VIA_TRANSPORTE)
values (4, 2, 1);
insert into CONDICAO_VENDA_VIA_TRANSP (ID, ID_CONDICAO_VENDA, ID_VIA_TRANSPORTE)
values (5, 2, 2);
insert into CONDICAO_VENDA_VIA_TRANSP (ID, ID_CONDICAO_VENDA, ID_VIA_TRANSPORTE)
values (6, 2, 3);
commit;
prompt 6 records loaded
prompt Loading CONSTRAINT...
insert into CONSTRAINT (ID, NAME, CHECK_CONSTRAINT, ERROR_MESSAGE)
values (1, 'TEstado.Sigla', 'SIGLA <> ''''', 'Sigla é campo obrigatório');
insert into CONSTRAINT (ID, NAME, CHECK_CONSTRAINT, ERROR_MESSAGE)
values (2, 'TIdioma.Nome', 'NOME <> ''''', 'Nome é campo obrigatório');
insert into CONSTRAINT (ID, NAME, CHECK_CONSTRAINT, ERROR_MESSAGE)
values (3, 'TAplicacao.Nome', 'NOME <> ''''', 'Nome é campo obrigatório');
commit;
prompt 3 records loaded
prompt Loading EMPRESA...
prompt Table is empty
prompt Loading ESTADO...
insert into ESTADO (ID, ID_PAIS, CODIGO, NOME, SIGLA)
values (1, 28, 'BR/AC', 'ACRE', 'AC');
insert into ESTADO (ID, ID_PAIS, CODIGO, NOME, SIGLA)
values (2, 28, 'BR/AL', 'ALAGOAS', 'AL');
insert into ESTADO (ID, ID_PAIS, CODIGO, NOME, SIGLA)
values (3, 28, 'BR/AP', 'AMAPA', 'AP');
insert into ESTADO (ID, ID_PAIS, CODIGO, NOME, SIGLA)
values (4, 28, 'BR/AM', 'AMAZONAS', 'AM');
insert into ESTADO (ID, ID_PAIS, CODIGO, NOME, SIGLA)
values (5, 28, 'BR/BA', 'BAHIA', 'BA');
insert into ESTADO (ID, ID_PAIS, CODIGO, NOME, SIGLA)
values (6, 28, 'BR/CE', 'CEARA', 'CE');
insert into ESTADO (ID, ID_PAIS, CODIGO, NOME, SIGLA)
values (7, 28, 'BR/DF', 'DISTRITO FEDERAL', 'DF');
insert into ESTADO (ID, ID_PAIS, CODIGO, NOME, SIGLA)
values (8, 28, 'BR/ES', 'ESPIRITO SANTO', 'ES');
insert into ESTADO (ID, ID_PAIS, CODIGO, NOME, SIGLA)
values (9, 28, 'BR/GO', 'GOIAS', 'GO');
insert into ESTADO (ID, ID_PAIS, CODIGO, NOME, SIGLA)
values (10, 28, 'BR/MA', 'MARANHAO', 'MA');
insert into ESTADO (ID, ID_PAIS, CODIGO, NOME, SIGLA)
values (11, 28, 'BR/MT', 'MATO GROSSO', 'MT');
insert into ESTADO (ID, ID_PAIS, CODIGO, NOME, SIGLA)
values (12, 28, 'BR/MS', 'MATO GROSSO DO SUL', 'MS');
insert into ESTADO (ID, ID_PAIS, CODIGO, NOME, SIGLA)
values (13, 28, 'BR/MG', 'MINAS GERAIS', 'MG');
insert into ESTADO (ID, ID_PAIS, CODIGO, NOME, SIGLA)
values (14, 28, 'BR/PA', 'PARA', 'PA');
insert into ESTADO (ID, ID_PAIS, CODIGO, NOME, SIGLA)
values (15, 28, 'BR/PB', 'PARAIBA', 'PB');
insert into ESTADO (ID, ID_PAIS, CODIGO, NOME, SIGLA)
values (16, 28, 'BR/PR', 'PARANA', 'PR');
insert into ESTADO (ID, ID_PAIS, CODIGO, NOME, SIGLA)
values (17, 28, 'BR/PE', 'PERNAMBUCO', 'PE');
insert into ESTADO (ID, ID_PAIS, CODIGO, NOME, SIGLA)
values (18, 28, 'BR/PI', 'PIAUI', 'PI');
insert into ESTADO (ID, ID_PAIS, CODIGO, NOME, SIGLA)
values (19, 28, 'BR/RJ', 'RIO DE JANEIRO', 'RJ');
insert into ESTADO (ID, ID_PAIS, CODIGO, NOME, SIGLA)
values (20, 28, 'BR/RN', 'RIO GRANDE DO NORTE', 'RN');
insert into ESTADO (ID, ID_PAIS, CODIGO, NOME, SIGLA)
values (21, 28, 'BR/RS', 'RIO GRANDE DO SUL', 'RS');
insert into ESTADO (ID, ID_PAIS, CODIGO, NOME, SIGLA)
values (22, 28, 'BR/RO', 'RONDONIA', 'RO');
insert into ESTADO (ID, ID_PAIS, CODIGO, NOME, SIGLA)
values (23, 28, 'BR/RR', 'RORAIMA', 'RR');
insert into ESTADO (ID, ID_PAIS, CODIGO, NOME, SIGLA)
values (24, 28, 'BR/SC', 'SANTA CATARINA', 'SC');
insert into ESTADO (ID, ID_PAIS, CODIGO, NOME, SIGLA)
values (25, 28, 'BR/SP', 'SAO PAULO', 'SP');
insert into ESTADO (ID, ID_PAIS, CODIGO, NOME, SIGLA)
values (26, 28, 'BR/SE', 'SERGIPE', 'SE');
insert into ESTADO (ID, ID_PAIS, CODIGO, NOME, SIGLA)
values (27, 28, 'BR/TO', 'TOCANTINS', 'TO');
commit;
prompt 27 records loaded
prompt Loading FAMILIA_COMERCIAL...
prompt Table is empty
prompt Loading FAMILIA_MATERIAIS...
prompt Table is empty
prompt Loading FORNECEDOR...
insert into FORNECEDOR (ID)
values (3);
commit;
prompt 1 records loaded
prompt Loading IDIOMA...
insert into IDIOMA (ID, CODIGO, NOME)
values (1, 'PT', 'PORTUGUES');
insert into IDIOMA (ID, CODIGO, NOME)
values (2, 'EN', 'INGLES');
insert into IDIOMA (ID, CODIGO, NOME)
values (3, 'ES', 'ESPANHOL');
insert into IDIOMA (ID, CODIGO, NOME)
values (4, 'IT', 'ITALIANO');
insert into IDIOMA (ID, CODIGO, NOME)
values (5, 'FR', 'FRANCES');
insert into IDIOMA (ID, CODIGO, NOME)
values (6, 'NE', 'HOLANDES');
insert into IDIOMA (ID, CODIGO, NOME)
values (7, 'DE', 'ALEMAO');
commit;
prompt 7 records loaded
prompt Loading MATERIAL...
prompt Table is empty
prompt Loading ORGANIZACAO...
prompt Table is empty
prompt Loading PERFIL...
insert into PERFIL (ID, CODIGO, NOME)
values (1, 'PRF_TESTE', 'TESTE DE PERFIL');
commit;
prompt 1 records loaded
prompt Loading PERFIL_APLICACAO...
insert into PERFIL_APLICACAO (ID, ID_PERFIL, ID_APLICACAO)
values (1, 1, 1);
commit;
prompt 1 records loaded
prompt Loading PERFIL_APLICACAO_MENU_ITEM...
insert into PERFIL_APLICACAO_MENU_ITEM (ID, ID_PERFIL_APLICACAO, ID_APLICACAO_MENU_ITEM)
values (1, 1, 1053);
insert into PERFIL_APLICACAO_MENU_ITEM (ID, ID_PERFIL_APLICACAO, ID_APLICACAO_MENU_ITEM)
values (2, 1, 1054);
insert into PERFIL_APLICACAO_MENU_ITEM (ID, ID_PERFIL_APLICACAO, ID_APLICACAO_MENU_ITEM)
values (3, 1, 1055);
insert into PERFIL_APLICACAO_MENU_ITEM (ID, ID_PERFIL_APLICACAO, ID_APLICACAO_MENU_ITEM)
values (4, 1, 1056);
insert into PERFIL_APLICACAO_MENU_ITEM (ID, ID_PERFIL_APLICACAO, ID_APLICACAO_MENU_ITEM)
values (5, 1, 1057);
insert into PERFIL_APLICACAO_MENU_ITEM (ID, ID_PERFIL_APLICACAO, ID_APLICACAO_MENU_ITEM)
values (6, 1, 1058);
insert into PERFIL_APLICACAO_MENU_ITEM (ID, ID_PERFIL_APLICACAO, ID_APLICACAO_MENU_ITEM)
values (7, 1, 1059);
insert into PERFIL_APLICACAO_MENU_ITEM (ID, ID_PERFIL_APLICACAO, ID_APLICACAO_MENU_ITEM)
values (8, 1, 1060);
insert into PERFIL_APLICACAO_MENU_ITEM (ID, ID_PERFIL_APLICACAO, ID_APLICACAO_MENU_ITEM)
values (9, 1, 1061);
insert into PERFIL_APLICACAO_MENU_ITEM (ID, ID_PERFIL_APLICACAO, ID_APLICACAO_MENU_ITEM)
values (10, 1, 1062);
insert into PERFIL_APLICACAO_MENU_ITEM (ID, ID_PERFIL_APLICACAO, ID_APLICACAO_MENU_ITEM)
values (11, 1, 1063);
insert into PERFIL_APLICACAO_MENU_ITEM (ID, ID_PERFIL_APLICACAO, ID_APLICACAO_MENU_ITEM)
values (12, 1, 1064);
insert into PERFIL_APLICACAO_MENU_ITEM (ID, ID_PERFIL_APLICACAO, ID_APLICACAO_MENU_ITEM)
values (13, 1, 1065);
insert into PERFIL_APLICACAO_MENU_ITEM (ID, ID_PERFIL_APLICACAO, ID_APLICACAO_MENU_ITEM)
values (14, 1, 1066);
insert into PERFIL_APLICACAO_MENU_ITEM (ID, ID_PERFIL_APLICACAO, ID_APLICACAO_MENU_ITEM)
values (15, 1, 1067);
insert into PERFIL_APLICACAO_MENU_ITEM (ID, ID_PERFIL_APLICACAO, ID_APLICACAO_MENU_ITEM)
values (16, 1, 1068);
insert into PERFIL_APLICACAO_MENU_ITEM (ID, ID_PERFIL_APLICACAO, ID_APLICACAO_MENU_ITEM)
values (17, 1, 1069);
insert into PERFIL_APLICACAO_MENU_ITEM (ID, ID_PERFIL_APLICACAO, ID_APLICACAO_MENU_ITEM)
values (18, 1, 1070);
insert into PERFIL_APLICACAO_MENU_ITEM (ID, ID_PERFIL_APLICACAO, ID_APLICACAO_MENU_ITEM)
values (19, 1, 1071);
insert into PERFIL_APLICACAO_MENU_ITEM (ID, ID_PERFIL_APLICACAO, ID_APLICACAO_MENU_ITEM)
values (20, 1, 1072);
insert into PERFIL_APLICACAO_MENU_ITEM (ID, ID_PERFIL_APLICACAO, ID_APLICACAO_MENU_ITEM)
values (21, 1, 1073);
insert into PERFIL_APLICACAO_MENU_ITEM (ID, ID_PERFIL_APLICACAO, ID_APLICACAO_MENU_ITEM)
values (22, 1, 1074);
insert into PERFIL_APLICACAO_MENU_ITEM (ID, ID_PERFIL_APLICACAO, ID_APLICACAO_MENU_ITEM)
values (23, 1, 1075);
insert into PERFIL_APLICACAO_MENU_ITEM (ID, ID_PERFIL_APLICACAO, ID_APLICACAO_MENU_ITEM)
values (24, 1, 1076);
insert into PERFIL_APLICACAO_MENU_ITEM (ID, ID_PERFIL_APLICACAO, ID_APLICACAO_MENU_ITEM)
values (25, 1, 1077);
insert into PERFIL_APLICACAO_MENU_ITEM (ID, ID_PERFIL_APLICACAO, ID_APLICACAO_MENU_ITEM)
values (26, 1, 1078);
insert into PERFIL_APLICACAO_MENU_ITEM (ID, ID_PERFIL_APLICACAO, ID_APLICACAO_MENU_ITEM)
values (27, 1, 1079);
insert into PERFIL_APLICACAO_MENU_ITEM (ID, ID_PERFIL_APLICACAO, ID_APLICACAO_MENU_ITEM)
values (28, 1, 1080);
insert into PERFIL_APLICACAO_MENU_ITEM (ID, ID_PERFIL_APLICACAO, ID_APLICACAO_MENU_ITEM)
values (29, 1, 1081);
insert into PERFIL_APLICACAO_MENU_ITEM (ID, ID_PERFIL_APLICACAO, ID_APLICACAO_MENU_ITEM)
values (30, 1, 1082);
insert into PERFIL_APLICACAO_MENU_ITEM (ID, ID_PERFIL_APLICACAO, ID_APLICACAO_MENU_ITEM)
values (31, 1, 1083);
insert into PERFIL_APLICACAO_MENU_ITEM (ID, ID_PERFIL_APLICACAO, ID_APLICACAO_MENU_ITEM)
values (32, 1, 1084);
insert into PERFIL_APLICACAO_MENU_ITEM (ID, ID_PERFIL_APLICACAO, ID_APLICACAO_MENU_ITEM)
values (33, 1, 1085);
insert into PERFIL_APLICACAO_MENU_ITEM (ID, ID_PERFIL_APLICACAO, ID_APLICACAO_MENU_ITEM)
values (34, 1, 1086);
insert into PERFIL_APLICACAO_MENU_ITEM (ID, ID_PERFIL_APLICACAO, ID_APLICACAO_MENU_ITEM)
values (35, 1, 1087);
insert into PERFIL_APLICACAO_MENU_ITEM (ID, ID_PERFIL_APLICACAO, ID_APLICACAO_MENU_ITEM)
values (36, 1, 1088);
insert into PERFIL_APLICACAO_MENU_ITEM (ID, ID_PERFIL_APLICACAO, ID_APLICACAO_MENU_ITEM)
values (37, 1, 1089);
insert into PERFIL_APLICACAO_MENU_ITEM (ID, ID_PERFIL_APLICACAO, ID_APLICACAO_MENU_ITEM)
values (38, 1, 1090);
insert into PERFIL_APLICACAO_MENU_ITEM (ID, ID_PERFIL_APLICACAO, ID_APLICACAO_MENU_ITEM)
values (39, 1, 1091);
insert into PERFIL_APLICACAO_MENU_ITEM (ID, ID_PERFIL_APLICACAO, ID_APLICACAO_MENU_ITEM)
values (40, 1, 1092);
insert into PERFIL_APLICACAO_MENU_ITEM (ID, ID_PERFIL_APLICACAO, ID_APLICACAO_MENU_ITEM)
values (41, 1, 1093);
insert into PERFIL_APLICACAO_MENU_ITEM (ID, ID_PERFIL_APLICACAO, ID_APLICACAO_MENU_ITEM)
values (42, 1, 1094);
insert into PERFIL_APLICACAO_MENU_ITEM (ID, ID_PERFIL_APLICACAO, ID_APLICACAO_MENU_ITEM)
values (43, 1, 1109);
insert into PERFIL_APLICACAO_MENU_ITEM (ID, ID_PERFIL_APLICACAO, ID_APLICACAO_MENU_ITEM)
values (44, 1, 1096);
insert into PERFIL_APLICACAO_MENU_ITEM (ID, ID_PERFIL_APLICACAO, ID_APLICACAO_MENU_ITEM)
values (45, 1, 1097);
insert into PERFIL_APLICACAO_MENU_ITEM (ID, ID_PERFIL_APLICACAO, ID_APLICACAO_MENU_ITEM)
values (46, 1, 1098);
insert into PERFIL_APLICACAO_MENU_ITEM (ID, ID_PERFIL_APLICACAO, ID_APLICACAO_MENU_ITEM)
values (47, 1, 1099);
insert into PERFIL_APLICACAO_MENU_ITEM (ID, ID_PERFIL_APLICACAO, ID_APLICACAO_MENU_ITEM)
values (48, 1, 1100);
insert into PERFIL_APLICACAO_MENU_ITEM (ID, ID_PERFIL_APLICACAO, ID_APLICACAO_MENU_ITEM)
values (49, 1, 1101);
insert into PERFIL_APLICACAO_MENU_ITEM (ID, ID_PERFIL_APLICACAO, ID_APLICACAO_MENU_ITEM)
values (50, 1, 1102);
insert into PERFIL_APLICACAO_MENU_ITEM (ID, ID_PERFIL_APLICACAO, ID_APLICACAO_MENU_ITEM)
values (51, 1, 1103);
insert into PERFIL_APLICACAO_MENU_ITEM (ID, ID_PERFIL_APLICACAO, ID_APLICACAO_MENU_ITEM)
values (52, 1, 1104);
insert into PERFIL_APLICACAO_MENU_ITEM (ID, ID_PERFIL_APLICACAO, ID_APLICACAO_MENU_ITEM)
values (53, 1, 1105);
insert into PERFIL_APLICACAO_MENU_ITEM (ID, ID_PERFIL_APLICACAO, ID_APLICACAO_MENU_ITEM)
values (54, 1, 1106);
insert into PERFIL_APLICACAO_MENU_ITEM (ID, ID_PERFIL_APLICACAO, ID_APLICACAO_MENU_ITEM)
values (55, 1, 1107);
insert into PERFIL_APLICACAO_MENU_ITEM (ID, ID_PERFIL_APLICACAO, ID_APLICACAO_MENU_ITEM)
values (56, 1, 1108);
insert into PERFIL_APLICACAO_MENU_ITEM (ID, ID_PERFIL_APLICACAO, ID_APLICACAO_MENU_ITEM)
values (57, 1, 1110);
insert into PERFIL_APLICACAO_MENU_ITEM (ID, ID_PERFIL_APLICACAO, ID_APLICACAO_MENU_ITEM)
values (58, 1, 983);
insert into PERFIL_APLICACAO_MENU_ITEM (ID, ID_PERFIL_APLICACAO, ID_APLICACAO_MENU_ITEM)
values (59, 1, 984);
insert into PERFIL_APLICACAO_MENU_ITEM (ID, ID_PERFIL_APLICACAO, ID_APLICACAO_MENU_ITEM)
values (60, 1, 985);
insert into PERFIL_APLICACAO_MENU_ITEM (ID, ID_PERFIL_APLICACAO, ID_APLICACAO_MENU_ITEM)
values (61, 1, 986);
insert into PERFIL_APLICACAO_MENU_ITEM (ID, ID_PERFIL_APLICACAO, ID_APLICACAO_MENU_ITEM)
values (62, 1, 987);
insert into PERFIL_APLICACAO_MENU_ITEM (ID, ID_PERFIL_APLICACAO, ID_APLICACAO_MENU_ITEM)
values (63, 1, 988);
insert into PERFIL_APLICACAO_MENU_ITEM (ID, ID_PERFIL_APLICACAO, ID_APLICACAO_MENU_ITEM)
values (64, 1, 989);
insert into PERFIL_APLICACAO_MENU_ITEM (ID, ID_PERFIL_APLICACAO, ID_APLICACAO_MENU_ITEM)
values (65, 1, 990);
insert into PERFIL_APLICACAO_MENU_ITEM (ID, ID_PERFIL_APLICACAO, ID_APLICACAO_MENU_ITEM)
values (66, 1, 991);
insert into PERFIL_APLICACAO_MENU_ITEM (ID, ID_PERFIL_APLICACAO, ID_APLICACAO_MENU_ITEM)
values (67, 1, 992);
insert into PERFIL_APLICACAO_MENU_ITEM (ID, ID_PERFIL_APLICACAO, ID_APLICACAO_MENU_ITEM)
values (68, 1, 993);
insert into PERFIL_APLICACAO_MENU_ITEM (ID, ID_PERFIL_APLICACAO, ID_APLICACAO_MENU_ITEM)
values (69, 1, 994);
insert into PERFIL_APLICACAO_MENU_ITEM (ID, ID_PERFIL_APLICACAO, ID_APLICACAO_MENU_ITEM)
values (70, 1, 995);
insert into PERFIL_APLICACAO_MENU_ITEM (ID, ID_PERFIL_APLICACAO, ID_APLICACAO_MENU_ITEM)
values (71, 1, 996);
insert into PERFIL_APLICACAO_MENU_ITEM (ID, ID_PERFIL_APLICACAO, ID_APLICACAO_MENU_ITEM)
values (72, 1, 997);
insert into PERFIL_APLICACAO_MENU_ITEM (ID, ID_PERFIL_APLICACAO, ID_APLICACAO_MENU_ITEM)
values (73, 1, 998);
insert into PERFIL_APLICACAO_MENU_ITEM (ID, ID_PERFIL_APLICACAO, ID_APLICACAO_MENU_ITEM)
values (74, 1, 999);
insert into PERFIL_APLICACAO_MENU_ITEM (ID, ID_PERFIL_APLICACAO, ID_APLICACAO_MENU_ITEM)
values (75, 1, 1000);
insert into PERFIL_APLICACAO_MENU_ITEM (ID, ID_PERFIL_APLICACAO, ID_APLICACAO_MENU_ITEM)
values (76, 1, 1001);
insert into PERFIL_APLICACAO_MENU_ITEM (ID, ID_PERFIL_APLICACAO, ID_APLICACAO_MENU_ITEM)
values (77, 1, 1002);
insert into PERFIL_APLICACAO_MENU_ITEM (ID, ID_PERFIL_APLICACAO, ID_APLICACAO_MENU_ITEM)
values (78, 1, 1003);
insert into PERFIL_APLICACAO_MENU_ITEM (ID, ID_PERFIL_APLICACAO, ID_APLICACAO_MENU_ITEM)
values (79, 1, 1004);
insert into PERFIL_APLICACAO_MENU_ITEM (ID, ID_PERFIL_APLICACAO, ID_APLICACAO_MENU_ITEM)
values (80, 1, 1005);
insert into PERFIL_APLICACAO_MENU_ITEM (ID, ID_PERFIL_APLICACAO, ID_APLICACAO_MENU_ITEM)
values (81, 1, 1006);
insert into PERFIL_APLICACAO_MENU_ITEM (ID, ID_PERFIL_APLICACAO, ID_APLICACAO_MENU_ITEM)
values (82, 1, 1007);
insert into PERFIL_APLICACAO_MENU_ITEM (ID, ID_PERFIL_APLICACAO, ID_APLICACAO_MENU_ITEM)
values (83, 1, 1008);
insert into PERFIL_APLICACAO_MENU_ITEM (ID, ID_PERFIL_APLICACAO, ID_APLICACAO_MENU_ITEM)
values (84, 1, 1009);
insert into PERFIL_APLICACAO_MENU_ITEM (ID, ID_PERFIL_APLICACAO, ID_APLICACAO_MENU_ITEM)
values (85, 1, 1010);
insert into PERFIL_APLICACAO_MENU_ITEM (ID, ID_PERFIL_APLICACAO, ID_APLICACAO_MENU_ITEM)
values (86, 1, 1011);
insert into PERFIL_APLICACAO_MENU_ITEM (ID, ID_PERFIL_APLICACAO, ID_APLICACAO_MENU_ITEM)
values (87, 1, 1012);
insert into PERFIL_APLICACAO_MENU_ITEM (ID, ID_PERFIL_APLICACAO, ID_APLICACAO_MENU_ITEM)
values (88, 1, 1013);
insert into PERFIL_APLICACAO_MENU_ITEM (ID, ID_PERFIL_APLICACAO, ID_APLICACAO_MENU_ITEM)
values (89, 1, 1014);
insert into PERFIL_APLICACAO_MENU_ITEM (ID, ID_PERFIL_APLICACAO, ID_APLICACAO_MENU_ITEM)
values (90, 1, 1015);
insert into PERFIL_APLICACAO_MENU_ITEM (ID, ID_PERFIL_APLICACAO, ID_APLICACAO_MENU_ITEM)
values (91, 1, 1016);
insert into PERFIL_APLICACAO_MENU_ITEM (ID, ID_PERFIL_APLICACAO, ID_APLICACAO_MENU_ITEM)
values (92, 1, 1017);
insert into PERFIL_APLICACAO_MENU_ITEM (ID, ID_PERFIL_APLICACAO, ID_APLICACAO_MENU_ITEM)
values (93, 1, 1018);
insert into PERFIL_APLICACAO_MENU_ITEM (ID, ID_PERFIL_APLICACAO, ID_APLICACAO_MENU_ITEM)
values (94, 1, 981);
insert into PERFIL_APLICACAO_MENU_ITEM (ID, ID_PERFIL_APLICACAO, ID_APLICACAO_MENU_ITEM)
values (95, 1, 982);
insert into PERFIL_APLICACAO_MENU_ITEM (ID, ID_PERFIL_APLICACAO, ID_APLICACAO_MENU_ITEM)
values (96, 1, 1019);
insert into PERFIL_APLICACAO_MENU_ITEM (ID, ID_PERFIL_APLICACAO, ID_APLICACAO_MENU_ITEM)
values (97, 1, 1020);
insert into PERFIL_APLICACAO_MENU_ITEM (ID, ID_PERFIL_APLICACAO, ID_APLICACAO_MENU_ITEM)
values (98, 1, 1021);
insert into PERFIL_APLICACAO_MENU_ITEM (ID, ID_PERFIL_APLICACAO, ID_APLICACAO_MENU_ITEM)
values (99, 1, 1022);
commit;
prompt 100 records committed...
insert into PERFIL_APLICACAO_MENU_ITEM (ID, ID_PERFIL_APLICACAO, ID_APLICACAO_MENU_ITEM)
values (100, 1, 1023);
insert into PERFIL_APLICACAO_MENU_ITEM (ID, ID_PERFIL_APLICACAO, ID_APLICACAO_MENU_ITEM)
values (101, 1, 1024);
insert into PERFIL_APLICACAO_MENU_ITEM (ID, ID_PERFIL_APLICACAO, ID_APLICACAO_MENU_ITEM)
values (102, 1, 1025);
insert into PERFIL_APLICACAO_MENU_ITEM (ID, ID_PERFIL_APLICACAO, ID_APLICACAO_MENU_ITEM)
values (103, 1, 1026);
insert into PERFIL_APLICACAO_MENU_ITEM (ID, ID_PERFIL_APLICACAO, ID_APLICACAO_MENU_ITEM)
values (104, 1, 1027);
insert into PERFIL_APLICACAO_MENU_ITEM (ID, ID_PERFIL_APLICACAO, ID_APLICACAO_MENU_ITEM)
values (105, 1, 1028);
insert into PERFIL_APLICACAO_MENU_ITEM (ID, ID_PERFIL_APLICACAO, ID_APLICACAO_MENU_ITEM)
values (106, 1, 1029);
insert into PERFIL_APLICACAO_MENU_ITEM (ID, ID_PERFIL_APLICACAO, ID_APLICACAO_MENU_ITEM)
values (107, 1, 1030);
insert into PERFIL_APLICACAO_MENU_ITEM (ID, ID_PERFIL_APLICACAO, ID_APLICACAO_MENU_ITEM)
values (108, 1, 1031);
insert into PERFIL_APLICACAO_MENU_ITEM (ID, ID_PERFIL_APLICACAO, ID_APLICACAO_MENU_ITEM)
values (109, 1, 1032);
insert into PERFIL_APLICACAO_MENU_ITEM (ID, ID_PERFIL_APLICACAO, ID_APLICACAO_MENU_ITEM)
values (110, 1, 1033);
insert into PERFIL_APLICACAO_MENU_ITEM (ID, ID_PERFIL_APLICACAO, ID_APLICACAO_MENU_ITEM)
values (111, 1, 1034);
insert into PERFIL_APLICACAO_MENU_ITEM (ID, ID_PERFIL_APLICACAO, ID_APLICACAO_MENU_ITEM)
values (112, 1, 1035);
insert into PERFIL_APLICACAO_MENU_ITEM (ID, ID_PERFIL_APLICACAO, ID_APLICACAO_MENU_ITEM)
values (113, 1, 1036);
insert into PERFIL_APLICACAO_MENU_ITEM (ID, ID_PERFIL_APLICACAO, ID_APLICACAO_MENU_ITEM)
values (114, 1, 1037);
insert into PERFIL_APLICACAO_MENU_ITEM (ID, ID_PERFIL_APLICACAO, ID_APLICACAO_MENU_ITEM)
values (115, 1, 1038);
insert into PERFIL_APLICACAO_MENU_ITEM (ID, ID_PERFIL_APLICACAO, ID_APLICACAO_MENU_ITEM)
values (116, 1, 1039);
insert into PERFIL_APLICACAO_MENU_ITEM (ID, ID_PERFIL_APLICACAO, ID_APLICACAO_MENU_ITEM)
values (117, 1, 1040);
insert into PERFIL_APLICACAO_MENU_ITEM (ID, ID_PERFIL_APLICACAO, ID_APLICACAO_MENU_ITEM)
values (118, 1, 1041);
insert into PERFIL_APLICACAO_MENU_ITEM (ID, ID_PERFIL_APLICACAO, ID_APLICACAO_MENU_ITEM)
values (119, 1, 1042);
insert into PERFIL_APLICACAO_MENU_ITEM (ID, ID_PERFIL_APLICACAO, ID_APLICACAO_MENU_ITEM)
values (120, 1, 1043);
insert into PERFIL_APLICACAO_MENU_ITEM (ID, ID_PERFIL_APLICACAO, ID_APLICACAO_MENU_ITEM)
values (121, 1, 1044);
insert into PERFIL_APLICACAO_MENU_ITEM (ID, ID_PERFIL_APLICACAO, ID_APLICACAO_MENU_ITEM)
values (122, 1, 1045);
insert into PERFIL_APLICACAO_MENU_ITEM (ID, ID_PERFIL_APLICACAO, ID_APLICACAO_MENU_ITEM)
values (123, 1, 1046);
insert into PERFIL_APLICACAO_MENU_ITEM (ID, ID_PERFIL_APLICACAO, ID_APLICACAO_MENU_ITEM)
values (124, 1, 1047);
insert into PERFIL_APLICACAO_MENU_ITEM (ID, ID_PERFIL_APLICACAO, ID_APLICACAO_MENU_ITEM)
values (125, 1, 1048);
insert into PERFIL_APLICACAO_MENU_ITEM (ID, ID_PERFIL_APLICACAO, ID_APLICACAO_MENU_ITEM)
values (126, 1, 1049);
insert into PERFIL_APLICACAO_MENU_ITEM (ID, ID_PERFIL_APLICACAO, ID_APLICACAO_MENU_ITEM)
values (127, 1, 1050);
insert into PERFIL_APLICACAO_MENU_ITEM (ID, ID_PERFIL_APLICACAO, ID_APLICACAO_MENU_ITEM)
values (128, 1, 1051);
insert into PERFIL_APLICACAO_MENU_ITEM (ID, ID_PERFIL_APLICACAO, ID_APLICACAO_MENU_ITEM)
values (129, 1, 1052);
commit;
prompt 129 records loaded
prompt Loading PERFIL_USUARIO...
insert into PERFIL_USUARIO (ID, ID_PERFIL, ID_USUARIO)
values (1, 1, 1);
insert into PERFIL_USUARIO (ID, ID_PERFIL, ID_USUARIO)
values (2, 1, 2);
commit;
prompt 2 records loaded
prompt Loading PESSOA...
insert into PESSOA (ID, NOME, ENDERECO, BAIRRO, ID_CIDADE, CODIGO)
values (1, 'RODRIGO QUEIJA CORERATO', 'RUA JOAQUIM PINTO DE MORAES, 57', 'PAINEIRAS', 5127, 'RQCORERATO');
insert into PESSOA (ID, NOME, ENDERECO, BAIRRO, ID_CIDADE, CODIGO)
values (2, 'FELIPE REIS CORERATO', 'RUA JOAQUIM PINTO DE MORAES, 57', 'PAINEIRAS', 5127, 'FRCORERATO');
insert into PESSOA (ID, NOME, ENDERECO, BAIRRO, ID_CIDADE, CODIGO)
values (3, 'SILVANA REIS CORERATO', 'RUA JOAQUIM PINTO DE MORAES, 57', 'PAINEIRAS', 5127, 'SRCORERATO');
commit;
prompt 3 records loaded
prompt Loading PLANTA...
prompt Table is empty
prompt Loading PRODUTO...
prompt Table is empty
prompt Loading SEQUENCE...
insert into SEQUENCE (ID, NAME, INCREMENT_BY, CURR_VAL)
values (2, 'TAplicacao', 1, null);
insert into SEQUENCE (ID, NAME, INCREMENT_BY, CURR_VAL)
values (3, 'TPais', 1, null);
insert into SEQUENCE (ID, NAME, INCREMENT_BY, CURR_VAL)
values (4, 'TEstado', 1, null);
insert into SEQUENCE (ID, NAME, INCREMENT_BY, CURR_VAL)
values (5, 'TCidade', 1, null);
insert into SEQUENCE (ID, NAME, INCREMENT_BY, CURR_VAL)
values (6, 'TPessoa', 1, null);
insert into SEQUENCE (ID, NAME, INCREMENT_BY, CURR_VAL)
values (7, 'TAplicacaoMenuItem', 1, 1110);
insert into SEQUENCE (ID, NAME, INCREMENT_BY, CURR_VAL)
values (1, 'TSequence', 1, 35);
insert into SEQUENCE (ID, NAME, INCREMENT_BY, CURR_VAL)
values (8, 'TUsuario', 1, null);
insert into SEQUENCE (ID, NAME, INCREMENT_BY, CURR_VAL)
values (11, 'TPerfilMenuItem', 1, null);
insert into SEQUENCE (ID, NAME, INCREMENT_BY, CURR_VAL)
values (10, 'TPerfil', 1, null);
insert into SEQUENCE (ID, NAME, INCREMENT_BY, CURR_VAL)
values (12, 'TPerfilAplicacao', 1, null);
insert into SEQUENCE (ID, NAME, INCREMENT_BY, CURR_VAL)
values (13, 'TPerfilUsuario', 1, null);
insert into SEQUENCE (ID, NAME, INCREMENT_BY, CURR_VAL)
values (14, 'TConstraint', 1, 5);
insert into SEQUENCE (ID, NAME, INCREMENT_BY, CURR_VAL)
values (15, 'TEmpresa', 1, null);
insert into SEQUENCE (ID, NAME, INCREMENT_BY, CURR_VAL)
values (16, 'TPlanta', 1, null);
insert into SEQUENCE (ID, NAME, INCREMENT_BY, CURR_VAL)
values (17, 'TOrganizacao', 1, null);
insert into SEQUENCE (ID, NAME, INCREMENT_BY, CURR_VAL)
values (18, 'TIdioma', 1, 9);
insert into SEQUENCE (ID, NAME, INCREMENT_BY, CURR_VAL)
values (19, 'TCondicaoVenda', 1, 2);
insert into SEQUENCE (ID, NAME, INCREMENT_BY, CURR_VAL)
values (20, 'TViaTransporte', 1, 3);
insert into SEQUENCE (ID, NAME, INCREMENT_BY, CURR_VAL)
values (21, 'TCondicaoPagamento', 1, 7);
insert into SEQUENCE (ID, NAME, INCREMENT_BY, CURR_VAL)
values (22, 'TUnidadeMedida', 1, null);
insert into SEQUENCE (ID, NAME, INCREMENT_BY, CURR_VAL)
values (23, 'TUnidadeMonetaria', 1, 3);
insert into SEQUENCE (ID, NAME, INCREMENT_BY, CURR_VAL)
values (24, 'TFamiliaMaterial', 1, null);
insert into SEQUENCE (ID, NAME, INCREMENT_BY, CURR_VAL)
values (25, 'TFamiliaComercial', 1, null);
insert into SEQUENCE (ID, NAME, INCREMENT_BY, CURR_VAL)
values (26, 'TCarteiraClientes', 1, null);
insert into SEQUENCE (ID, NAME, INCREMENT_BY, CURR_VAL)
values (27, 'TCondicaoPagamentoPrazo', 1, 13);
insert into SEQUENCE (ID, NAME, INCREMENT_BY, CURR_VAL)
values (28, 'TFamiliaMateriais', 1, null);
insert into SEQUENCE (ID, NAME, INCREMENT_BY, CURR_VAL)
values (29, 'TAplicacaoModulo', 1, null);
insert into SEQUENCE (ID, NAME, INCREMENT_BY, CURR_VAL)
values (30, 'TPerfilAplicacaoMenuItem', 1, 86);
insert into SEQUENCE (ID, NAME, INCREMENT_BY, CURR_VAL)
values (31, 'TTaxaCambio', 1, 3);
insert into SEQUENCE (ID, NAME, INCREMENT_BY, CURR_VAL)
values (34, 'TMaterial', 1, null);
insert into SEQUENCE (ID, NAME, INCREMENT_BY, CURR_VAL)
values (33, 'TCondicaoVendaViaTransp', 1, 6);
insert into SEQUENCE (ID, NAME, INCREMENT_BY, CURR_VAL)
values (35, 'TProduto', 1, null);
commit;
prompt 33 records loaded
prompt Loading UNIDADE_MONETARIA...
insert into UNIDADE_MONETARIA (ID, CODIGO, NOME, SIMBOLO)
values (1, 'BRL', 'REAIS BRASILEIROS', 'R$');
insert into UNIDADE_MONETARIA (ID, CODIGO, NOME, SIMBOLO)
values (2, 'USD', 'DOLARES AMERICANOS', 'US$');
insert into UNIDADE_MONETARIA (ID, CODIGO, NOME, SIMBOLO)
values (3, 'EUR', 'EURO EUROPEU', 'E');
commit;
prompt 3 records loaded
prompt Loading TAXA_CAMBIO...
insert into TAXA_CAMBIO (ID, ID_UNIDADE_MONETARIA, ID_UNIDADE_MONETARIA_COT, DAT_COTACAO, VLR_COTACAO)
values (2, 2, 1, to_date('12-12-2006', 'dd-mm-yyyy'), 2);
insert into TAXA_CAMBIO (ID, ID_UNIDADE_MONETARIA, ID_UNIDADE_MONETARIA_COT, DAT_COTACAO, VLR_COTACAO)
values (3, 2, 1, to_date('09-12-2006', 'dd-mm-yyyy'), 3);
commit;
prompt 2 records loaded
prompt Loading UNIDADE_MEDIDA...
prompt Table is empty
prompt Loading USUARIO...
insert into USUARIO (ID, CODIGO, NOME, SENHA)
values (1, 'RQCORERATO', 'RODRIGO QUEIJA CORERATO', 'SUPERMAN');
insert into USUARIO (ID, CODIGO, NOME, SENHA)
values (2, 'SRCORERATO', 'SILVANA REIS CORERATO', 'HELLOKITTY');
commit;
prompt 2 records loaded
prompt Loading VIA_TRANSPORTE...
insert into VIA_TRANSPORTE (ID, CODIGO, NOME)
values (1, 'RODOVIARIA', 'RODOVIARIA');
insert into VIA_TRANSPORTE (ID, CODIGO, NOME)
values (2, 'AEREA', 'AEREA');
insert into VIA_TRANSPORTE (ID, CODIGO, NOME)
values (3, 'MARITIMA', 'MARITIMA');
commit;
prompt 3 records loaded
prompt Enabling foreign key constraints for CIDADE...
alter table CIDADE enable constraint C_PAIS_FK;
prompt Enabling foreign key constraints for ESTADO...
alter table ESTADO enable constraint E_PAIS_FK;
prompt Enabling foreign key constraints for PESSOA...
alter table PESSOA enable constraint P_CIDADE_FK;
prompt Enabling foreign key constraints for TAXA_CAMBIO...
alter table TAXA_CAMBIO enable constraint TAXA_CAMBIO_FK1;
alter table TAXA_CAMBIO enable constraint TAXA_CAMBIO_FK2;
prompt Enabling triggers for APLICACAO...
alter table APLICACAO enable all triggers;
prompt Enabling triggers for APLICACAO_MENU_ITEM...
alter table APLICACAO_MENU_ITEM enable all triggers;
prompt Enabling triggers for APLICACAO_MODULO...
alter table APLICACAO_MODULO enable all triggers;
prompt Enabling triggers for CARTEIRA_CLIENTES...
alter table CARTEIRA_CLIENTES enable all triggers;
prompt Enabling triggers for PAIS...
alter table PAIS enable all triggers;
prompt Enabling triggers for CIDADE...
alter table CIDADE enable all triggers;
prompt Enabling triggers for CLIENTE...
alter table CLIENTE enable all triggers;
prompt Enabling triggers for CONDICAO_PAGAMENTO...
alter table CONDICAO_PAGAMENTO enable all triggers;
prompt Enabling triggers for CONDICAO_PAGAMENTO_PRAZO...
alter table CONDICAO_PAGAMENTO_PRAZO enable all triggers;
prompt Enabling triggers for CONDICAO_VENDA...
alter table CONDICAO_VENDA enable all triggers;
prompt Enabling triggers for CONDICAO_VENDA_VIA_TRANSP...
alter table CONDICAO_VENDA_VIA_TRANSP enable all triggers;
prompt Enabling triggers for CONSTRAINT...
alter table CONSTRAINT enable all triggers;
prompt Enabling triggers for EMPRESA...
alter table EMPRESA enable all triggers;
prompt Enabling triggers for ESTADO...
alter table ESTADO enable all triggers;
prompt Enabling triggers for FAMILIA_COMERCIAL...
alter table FAMILIA_COMERCIAL enable all triggers;
prompt Enabling triggers for FAMILIA_MATERIAIS...
alter table FAMILIA_MATERIAIS enable all triggers;
prompt Enabling triggers for FORNECEDOR...
alter table FORNECEDOR enable all triggers;
prompt Enabling triggers for IDIOMA...
alter table IDIOMA enable all triggers;
prompt Enabling triggers for MATERIAL...
alter table MATERIAL enable all triggers;
prompt Enabling triggers for ORGANIZACAO...
alter table ORGANIZACAO enable all triggers;
prompt Enabling triggers for PERFIL...
alter table PERFIL enable all triggers;
prompt Enabling triggers for PERFIL_APLICACAO...
alter table PERFIL_APLICACAO enable all triggers;
prompt Enabling triggers for PERFIL_APLICACAO_MENU_ITEM...
alter table PERFIL_APLICACAO_MENU_ITEM enable all triggers;
prompt Enabling triggers for PERFIL_USUARIO...
alter table PERFIL_USUARIO enable all triggers;
prompt Enabling triggers for PESSOA...
alter table PESSOA enable all triggers;
prompt Enabling triggers for PLANTA...
alter table PLANTA enable all triggers;
prompt Enabling triggers for PRODUTO...
alter table PRODUTO enable all triggers;
prompt Enabling triggers for SEQUENCE...
alter table SEQUENCE enable all triggers;
prompt Enabling triggers for UNIDADE_MONETARIA...
alter table UNIDADE_MONETARIA enable all triggers;
prompt Enabling triggers for TAXA_CAMBIO...
alter table TAXA_CAMBIO enable all triggers;
prompt Enabling triggers for UNIDADE_MEDIDA...
alter table UNIDADE_MEDIDA enable all triggers;
prompt Enabling triggers for USUARIO...
alter table USUARIO enable all triggers;
prompt Enabling triggers for VIA_TRANSPORTE...
alter table VIA_TRANSPORTE enable all triggers;
set feedback on
set define on
prompt Done.
