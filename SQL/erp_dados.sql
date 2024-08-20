prompt PL/SQL Developer import file
prompt Created on domingo, 17 de setembro de 2006 by Rodrigo
set feedback off
set define off
prompt Disabling triggers for CENTRO_CUSTOS...
alter table CENTRO_CUSTOS disable all triggers;
prompt Disabling triggers for PAIS...
alter table PAIS disable all triggers;
prompt Disabling triggers for ESTADO...
alter table ESTADO disable all triggers;
prompt Disabling triggers for CIDADE...
alter table CIDADE disable all triggers;
prompt Disabling triggers for CONTA...
alter table CONTA disable all triggers;
prompt Disabling triggers for GRUPO_CONTAS...
alter table GRUPO_CONTAS disable all triggers;
prompt Disabling triggers for SUB_CONTA...
alter table SUB_CONTA disable all triggers;
prompt Disabling triggers for CONTA_CONTABIL...
alter table CONTA_CONTABIL disable all triggers;
prompt Disabling triggers for ENTIDADE...
alter table ENTIDADE disable all triggers;
prompt Disabling triggers for LANCAMENTO_FIXO...
alter table LANCAMENTO_FIXO disable all triggers;
prompt Disabling triggers for PREVISAO_CAIXA...
alter table PREVISAO_CAIXA disable all triggers;
prompt Disabling triggers for FLUXO_CAIXA...
alter table FLUXO_CAIXA disable all triggers;
prompt Disabling foreign key constraints for ESTADO...
alter table ESTADO disable constraint E_PAIS;
prompt Disabling foreign key constraints for CIDADE...
alter table CIDADE disable constraint C_ESTADO_FK;
alter table CIDADE disable constraint C_PAIS_FK;
prompt Disabling foreign key constraints for CONTA_CONTABIL...
alter table CONTA_CONTABIL disable constraint CONTA_CONTABIL_FK1;
alter table CONTA_CONTABIL disable constraint CONTA_CONTABIL_FK2;
alter table CONTA_CONTABIL disable constraint CONTA_CONTABIL_FK3;
alter table CONTA_CONTABIL disable constraint CONTA_CONTABIL_FK4;
prompt Disabling foreign key constraints for ENTIDADE...
alter table ENTIDADE disable constraint ENTIDADE_FK1;
prompt Disabling foreign key constraints for LANCAMENTO_FIXO...
alter table LANCAMENTO_FIXO disable constraint LANCAMENTO_FIXO_FK1;
alter table LANCAMENTO_FIXO disable constraint LANCAMENTO_FIXO_FK2;
prompt Disabling foreign key constraints for PREVISAO_CAIXA...
alter table PREVISAO_CAIXA disable constraint PREVISAO_CAIXA_FK1;
alter table PREVISAO_CAIXA disable constraint PREVISAO_CAIXA_FK2;
alter table PREVISAO_CAIXA disable constraint PREVISAO_CAIXA_FK3;
prompt Disabling foreign key constraints for FLUXO_CAIXA...
alter table FLUXO_CAIXA disable constraint FLUXO_CAIXA_FK1;
alter table FLUXO_CAIXA disable constraint FLUXO_CAIXA_FK2;
prompt Loading CENTRO_CUSTOS...
insert into CENTRO_CUSTOS (ID_CENTRO_CUSTOS, CODIGO, NOME)
values (1, '01', 'RODRIGO');
insert into CENTRO_CUSTOS (ID_CENTRO_CUSTOS, CODIGO, NOME)
values (2, '02', 'SILVANA');
commit;
prompt 2 records loaded
prompt Loading PAIS...
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (1, 'AD', 'ANDORRA');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (2, 'AE', 'EMIRADOS ARABES UNIDOS');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (3, 'AF', 'AFEGANISTAO');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (4, 'AG', 'ANTIGUA E BARBUDA');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (5, 'AI', 'ANGUILHA');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (6, 'AL', 'ALBANIA');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (7, 'AM', 'ARMENIA');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (8, 'AN', 'ANTILHAS HOLANDESAS');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (9, 'AO', 'ANGOLA');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (10, 'AR', 'ARGENTINA');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (11, 'AS', 'SAMOA AMERICANA');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (12, 'AT', 'AUSTRIA');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (13, 'AU', 'AUSTRALIA');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (14, 'AW', 'ARUBA');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (15, 'AZ', 'AZERBAIJAO');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (16, 'BA', 'BOSNIA E HERZEGOVINA');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (17, 'BB', 'BARBADOS');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (18, 'BD', 'BANGLADESH');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (19, 'BE', 'BELGICA');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (20, 'BF', 'BURQUINA FASO');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (21, 'BG', 'BULGARIA');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (22, 'BH', 'BAREM');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (23, 'BI', 'BURUNDI');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (24, 'BJ', 'BENIM');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (25, 'BM', 'BERMUDAS');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (26, 'BN', 'BRUNEI');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (27, 'BO', 'BOLIVIA');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (28, 'BR', 'BRASIL');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (29, 'BS', 'BAHAMAS');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (30, 'BT', 'BUTAO');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (31, 'BU', 'BURMA');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (32, 'BW', 'BOTSUANA');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (33, 'BY', 'BIELORRÚSSIA');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (34, 'BZ', 'BELIZE');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (35, 'CA', 'CANADA');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (36, 'CC', 'ILHAS DOS COCOS');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (37, 'CD', 'REPUBLICA DEMOCRATICA DO CONGO');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (38, 'CF', 'REPUBLICA CENTRO-AFRICANA');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (39, 'CG', 'CONGO');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (40, 'CH', 'SUICA');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (41, 'CK', 'ILHAS COOK');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (42, 'CL', 'CHILE');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (43, 'CM', 'CAMAROES');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (44, 'CN', 'CHINA');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (45, 'CO', 'COLOMBIA');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (46, 'CR', 'COSTA RICA');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (47, 'CU', 'CUBA');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (48, 'CV', 'CABO VERDE');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (49, 'CX', 'ILHA DO NATAL');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (50, 'CY', 'CHIPRE');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (51, 'CZ', 'REPUBLICA CHECA');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (52, 'DE', 'ALEMANHA');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (53, 'DJ', 'JIBUTI');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (54, 'DK', 'DINAMARCA');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (55, 'DM', 'DOMINICA');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (56, 'DO', 'REPUBLICA DOMINICANA');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (57, 'EC', 'EQUADOR');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (58, 'EE', 'ESTONIA');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (59, 'EG', 'EGITO');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (60, 'EH', 'SAHARA OCIDENTAL');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (61, 'ES', 'ESPANHA');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (62, 'ET', 'ETIOPIA');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (63, 'FI', 'FINLANDIA');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (64, 'FJ', 'FIJI');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (65, 'FK', 'ILHAS MALVINAS');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (66, 'FM', 'MICRONESIA');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (67, 'FO', 'ILHAS FAROE');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (68, 'FR', 'FRANCA');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (69, 'GA', 'GABAO');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (70, 'GB', 'REINO UNIDO');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (71, 'GD', 'GRANADA');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (72, 'GE', 'GEORGIA');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (73, 'GF', 'GUIANA FRANCESA');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (74, 'GH', 'GANA');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (75, 'GI', 'GIBRALTAR');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (76, 'GL', 'GROENLANDIA');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (77, 'GM', 'GAMBIA');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (78, 'GN', 'GUINE');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (79, 'GP', 'GUADALUPE');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (80, 'GQ', 'GUINE EQUATORIAL');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (81, 'GR', 'GRECIA');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (82, 'GT', 'GUATEMALA');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (83, 'GU', 'GUAME');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (84, 'GW', 'GUINE-BISSAU');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (85, 'GY', 'GUIANA');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (86, 'HK', 'HONG KONG');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (87, 'HN', 'HONDURAS');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (88, 'HR', 'CROACIA');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (89, 'HT', 'HAITI');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (90, 'HU', 'HUNGRIA');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (91, 'ID', 'INDONESIA');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (92, 'IE', 'IRLANDA');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (93, 'IL', 'ISRAEL');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (94, 'IN', 'INDIA');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (95, 'IO', 'TERRITORIO BRITANICO DO OCEANO INDICO');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (96, 'IQ', 'IRAQUE');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (97, 'IR', 'IRA');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (98, 'IS', 'ISLANDIA');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (99, 'IT', 'ITALIA');
commit;
prompt 100 records committed...
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (100, 'JM', 'JAMAICA');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (101, 'JO', 'JORDANIA');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (102, 'JP', 'JAPAO');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (103, 'KE', 'QUENIA');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (104, 'KG', 'QUIRGUIZISTAO');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (105, 'KH', 'CAMBOJA');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (106, 'KI', 'QUIRIBATI');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (107, 'KM', 'COMORES');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (108, 'KN', 'SAO CRISTOVAO E NEVES');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (109, 'KP', 'COREIA DO NORTE');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (110, 'KR', 'COREIA DO SUL');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (111, 'KY', 'ILHAS CAYMAN');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (112, 'KZ', 'CAZAQUISTAO');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (113, 'LA', 'LAOS');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (114, 'LB', 'LIBANO');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (115, 'LC', 'SANTA LUCIA');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (116, 'LI', 'LISTENSTAINE');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (117, 'LK', 'SRI LANKA');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (118, 'LR', 'LIBERIA');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (119, 'LS', 'LESOTO');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (120, 'LT', 'LITUANIA');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (121, 'LU', 'LUXEMBURGO');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (122, 'LY', 'LIBIA');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (123, 'MA', 'MARROCOS');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (124, 'MC', 'MONACO');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (125, 'MD', 'MOLDAVIA');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (126, 'MG', 'MADAGASCAR');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (127, 'MH', 'ILHAS MARSHALL');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (128, 'MK', 'MACEDONIA');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (129, 'ML', 'MALI');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (130, 'MM', 'BIRMANIA');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (131, 'MN', 'MONGOLIA');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (132, 'MO', 'MACAU');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (133, 'MP', 'MARIANAS DO NORTE');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (134, 'MQ', 'MARTINICA');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (135, 'MR', 'MAURITANIA');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (136, 'MS', 'MONTSERRAT');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (137, 'MT', 'MALTA');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (138, 'MU', 'MAURICIA');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (139, 'MV', 'MALDIVAS');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (140, 'MW', 'MALAWI');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (141, 'MX', 'MEXICO');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (142, 'MY', 'MALASIA');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (143, 'MZ', 'MOCAMBIQUE');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (144, 'NA', 'NAMIBIA');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (145, 'NC', 'NOVA CALEDONIA');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (146, 'NE', 'NIGER');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (147, 'NF', 'ILHA NORFOLK');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (148, 'NG', 'NIGERIA');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (149, 'NI', 'NICARAGUA');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (150, 'NL', 'HOLANDA');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (151, 'NO', 'NORUEGA');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (152, 'NP', 'NEPAL');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (153, 'NR', 'NAURU');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (154, 'NU', 'NIUE');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (155, 'NZ', 'NOVA ZELANDIA');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (156, 'OM', 'OMA');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (157, 'PA', 'PANAMA');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (158, 'PE', 'PERU');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (159, 'PF', 'POLINESIA FRANCESA');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (160, 'PG', 'PAPUA-NOVA GUINE');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (161, 'PH', 'FILIPINAS');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (162, 'PK', 'PAQUISTAO');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (163, 'PL', 'POLONIA');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (164, 'PM', 'SAO PEDRO E MIQUELON');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (165, 'PN', 'PITCAIRN');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (166, 'PR', 'PORTO RICO');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (167, 'PT', 'PORTUGAL');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (168, 'PW', 'PALAU');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (169, 'PY', 'PARAGUAI');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (170, 'QA', 'CATAR');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (171, 'RE', 'REUNIAO');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (172, 'RO', 'ROMENIA');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (173, 'RU', 'RUSSIA');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (174, 'RW', 'RUANDA');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (176, 'SA', 'ARABIA SAUDITA');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (177, 'SB', 'ILHAS SALOMAO');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (178, 'SC', 'SEICHELES');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (179, 'SD', 'SUDAO');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (180, 'SE', 'SUECIA');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (181, 'SG', 'SINGAPURA');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (182, 'SH', 'SANTA HELENA');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (183, 'SI', 'ESLOVENIA');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (184, 'SK', 'ESLOVAQUIA');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (185, 'SL', 'SERRA LEOA');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (186, 'SM', 'SAO MARINO');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (187, 'SN', 'SENEGAL');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (188, 'SO', 'SOMALIA');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (189, 'SR', 'SURINAME');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (190, 'ST', 'SAO TOME E PRINCIPE');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (191, 'SV', 'EL SALVADOR');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (192, 'SY', 'SIRIA');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (193, 'SZ', 'SUAZILANDIA ');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (194, 'TC', 'ILHAS TURKS E CAICOS');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (195, 'TD', 'CHADE');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (196, 'TG', 'TOGO');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (197, 'TH', 'TAILANDIA');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (198, 'TJ', 'TAJIQUISTAO');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (199, 'TK', 'TOKELAU');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (200, 'TM', 'TURCOMENISTAO');
commit;
prompt 200 records committed...
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (201, 'TN', 'TUNISIA');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (202, 'TO', 'TONGA');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (203, 'TP', 'TIMOR LESTE');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (204, 'TR', 'TURQUIA');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (205, 'TT', 'TRINIDAD E TOBAGO');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (206, 'TV', 'TUVALU');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (207, 'TW', 'TAIWAN');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (208, 'TZ', 'TANZANIA');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (209, 'UA', 'UCRANIA');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (210, 'UG', 'UGANDA');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (211, 'US', 'ESTADOS UNIDOS');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (212, 'UY', 'URUGUAI');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (213, 'UZ', 'UZBEQUISTAO');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (214, 'VA', 'VATICANO');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (215, 'VC', 'SAO VICENTE E GRANADINAS');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (216, 'VE', 'VENEZUELA');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (217, 'VG', 'ILHAS VIRGENS BRITANICAS');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (218, 'VI', 'ILHAS VIRGENS AMERICANAS');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (219, 'VN', 'VIETNAM');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (220, 'VU', 'VANUATU');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (221, 'WS', 'SAMOA');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (222, 'YE', 'IEMEN');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (223, 'YU', 'IUGOSLAVIA');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (224, 'ZA', 'AFRICA DO SUL');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (225, 'ZM', 'ZAMBIA');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (226, 'ZR', 'ZAIRE');
insert into PAIS (ID_PAIS, CODIGO, NOME)
values (227, 'ZW', 'ZIMBABUE');
commit;
prompt 226 records loaded
prompt Loading ESTADO...
insert into ESTADO (ID_ESTADO, ID_PAIS, CODIGO, NOME)
values (1, 28, 'AC', 'ACRE');
insert into ESTADO (ID_ESTADO, ID_PAIS, CODIGO, NOME)
values (2, 28, 'AL', 'ALAGOAS');
insert into ESTADO (ID_ESTADO, ID_PAIS, CODIGO, NOME)
values (3, 28, 'AP', 'AMAPA');
insert into ESTADO (ID_ESTADO, ID_PAIS, CODIGO, NOME)
values (4, 28, 'AM', 'AMAZONAS');
insert into ESTADO (ID_ESTADO, ID_PAIS, CODIGO, NOME)
values (5, 28, 'BA', 'BAHIA');
insert into ESTADO (ID_ESTADO, ID_PAIS, CODIGO, NOME)
values (6, 28, 'CE', 'CEARA');
insert into ESTADO (ID_ESTADO, ID_PAIS, CODIGO, NOME)
values (7, 28, 'DF', 'DISTRITO FEDERAL');
insert into ESTADO (ID_ESTADO, ID_PAIS, CODIGO, NOME)
values (8, 28, 'ES', 'ESPIRITO SANTO');
insert into ESTADO (ID_ESTADO, ID_PAIS, CODIGO, NOME)
values (9, 28, 'GO', 'GOIAS');
insert into ESTADO (ID_ESTADO, ID_PAIS, CODIGO, NOME)
values (10, 28, 'MA', 'MARANHAO');
insert into ESTADO (ID_ESTADO, ID_PAIS, CODIGO, NOME)
values (11, 28, 'MT', 'MATO GROSSO');
insert into ESTADO (ID_ESTADO, ID_PAIS, CODIGO, NOME)
values (12, 28, 'MS', 'MATO GROSSO DO SUL');
insert into ESTADO (ID_ESTADO, ID_PAIS, CODIGO, NOME)
values (13, 28, 'MG', 'MINAS GERAIS');
insert into ESTADO (ID_ESTADO, ID_PAIS, CODIGO, NOME)
values (14, 28, 'PA', 'PARA');
insert into ESTADO (ID_ESTADO, ID_PAIS, CODIGO, NOME)
values (15, 28, 'PB', 'PARAIBA');
insert into ESTADO (ID_ESTADO, ID_PAIS, CODIGO, NOME)
values (16, 28, 'PR', 'PARANA');
insert into ESTADO (ID_ESTADO, ID_PAIS, CODIGO, NOME)
values (17, 28, 'PE', 'PERNAMBUCO');
insert into ESTADO (ID_ESTADO, ID_PAIS, CODIGO, NOME)
values (18, 28, 'PI', 'PIAUI');
insert into ESTADO (ID_ESTADO, ID_PAIS, CODIGO, NOME)
values (19, 28, 'RJ', 'RIO DE JANEIRO');
insert into ESTADO (ID_ESTADO, ID_PAIS, CODIGO, NOME)
values (20, 28, 'RN', 'RIO GRANDE DO NORTE');
insert into ESTADO (ID_ESTADO, ID_PAIS, CODIGO, NOME)
values (21, 28, 'RS', 'RIO GRANDE DO SUL');
insert into ESTADO (ID_ESTADO, ID_PAIS, CODIGO, NOME)
values (22, 28, 'RO', 'RONDONIA');
insert into ESTADO (ID_ESTADO, ID_PAIS, CODIGO, NOME)
values (23, 28, 'RR', 'RORAIMA');
insert into ESTADO (ID_ESTADO, ID_PAIS, CODIGO, NOME)
values (24, 28, 'SC', 'SANTA CATARINA');
insert into ESTADO (ID_ESTADO, ID_PAIS, CODIGO, NOME)
values (25, 28, 'SP', 'SAO PAULO');
insert into ESTADO (ID_ESTADO, ID_PAIS, CODIGO, NOME)
values (26, 28, 'SE', 'SERGIPE');
insert into ESTADO (ID_ESTADO, ID_PAIS, CODIGO, NOME)
values (27, 28, 'TO', 'TOCANTINS');
commit;
prompt 27 records loaded
prompt Loading CIDADE...
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5835, 'PORTO ALEGRE DO TOCANTINS', 27, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5836, 'PORTO NACIONAL', 27, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5837, 'PRAIA NORTE', 27, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5838, 'PRESIDENTE KENNEDY', 27, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5839, 'PUGMIL', 27, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5840, 'RECURSOLANDIA', 27, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5841, 'RIACHINHO', 27, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5842, 'RIO DOS BOIS', 27, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5843, 'RIO SONO', 27, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5844, 'SAMPAIO', 27, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5845, 'SANDOLANDIA', 27, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5846, 'SANTA FE DO ARAGUAIA', 27, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5847, 'SANTA MARIA DO TOCANTINS', 27, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5848, 'SANTA RITA DO TOCANTINS', 27, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5849, 'SANTA ROSA DO TOCANTINS', 27, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5850, 'SANTA TEREZA DO TOCANTINS', 27, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5851, 'SANTA TEREZINHA DO TOCANTINS', 27, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5852, 'SAO BENTO DO TOCANTINS', 27, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5853, 'SAO MIGUEL DO TOCANTINS', 27, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5854, 'SAO SALVADOR DO TOCANTINS', 27, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5855, 'SAO SEBASTIAO DO TOCANTINS', 27, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5856, 'SAO VALERIO DA NATIVIDADE', 27, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5857, 'SILVANOPOLIS', 27, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5858, 'SITIO NOVO DO TOCANTINS', 27, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5859, 'SUCUPIRA', 27, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5860, 'TAGUATINGA', 27, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5861, 'TAIPAS DO TOCANTINS', 27, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5862, 'TALISMA', 27, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5863, 'TAQUARUSSU DO PORTO', 27, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5864, 'TOCANTINIA', 27, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5865, 'TOCANTINOPOLIS', 27, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5866, 'TUPIRAMA', 27, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5867, 'TUPIRATINS', 27, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5868, 'WANDERLANDIA', 27, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5869, 'XAMBIOA', 27, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5712, 'POCO VERDE', 26, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5713, 'PORTO DA FOLHA', 26, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5714, 'PROPRIA', 26, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5715, 'RIACHAO DO DANTAS', 26, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5716, 'RIACHUELO', 26, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5717, 'RIBEIROPOLIS', 26, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5718, 'ROSARIO DO CATETE', 26, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5719, 'SALGADO', 26, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5720, 'SANTA LUZIA DO ITANHY', 26, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5721, 'SANTA ROSA DE LIMA', 26, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5722, 'SANTANA DO SAO FRANCISCO', 26, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5723, 'SANTO AMARO DAS BROTAS', 26, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5724, 'SAO CRISTOVAO', 26, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5725, 'SAO DOMINGOS', 26, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5726, 'SAO FRANCISCO', 26, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5727, 'SAO MIGUEL DO ALEIXO', 26, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5728, 'SIMAO DIAS', 26, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5729, 'SIRIRI', 26, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5730, 'TELHA', 26, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5731, 'TOBIAS BARRETO', 26, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5732, 'TOMAR DO GERU', 26, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5733, 'UMBAUBA', 26, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5734, 'ABREULANDIA', 27, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5735, 'AGUIARNOPOLIS', 27, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5736, 'ALIANCA DO TOCANTINS', 27, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5737, 'ALMAS', 27, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5738, 'ALVORADA', 27, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5739, 'ANANAS', 27, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5740, 'ANGICO', 27, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5741, 'APARECIDA DO RIO NEGRO', 27, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5742, 'ARAGOMINAS', 27, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5743, 'ARAGUACEMA', 27, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5744, 'ARAGUACU', 27, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5745, 'ARAGUAINA', 27, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5746, 'ARAGUANA', 27, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5747, 'ARAGUATINS', 27, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5748, 'ARAPOEMA', 27, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5749, 'ARRAIAS', 27, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5750, 'AUGUSTINOPOLIS', 27, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5751, 'AURORA DO TOCANTINS', 27, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5752, 'AXIXA DO TOCANTINS', 27, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5753, 'BABACULANDIA', 27, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5754, 'BANDEIRANTES DO TOCANTINS', 27, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5755, 'BARRA DO OURO', 27, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5756, 'BARROLANDIA', 27, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5757, 'BERNARDO SAYAO', 27, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5758, 'BOM JESUS DO TOCANTINS', 27, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5759, 'BRASILANDIA DO TOCANTINS', 27, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5760, 'BREJINHO DE NAZARE', 27, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5761, 'BURITI DO TOCANTINS', 27, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5762, 'CACHOEIRINHA', 27, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5763, 'CAMPOS LINDOS', 27, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5764, 'CARIRI DO TOCANTINS', 27, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5765, 'CARMOLANDIA', 27, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5766, 'CARRASCO BONITO', 27, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5767, 'CASEARA', 27, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5768, 'CENTENARIO', 27, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5769, 'CHAPADA DA NATIVIDADE', 27, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5770, 'CHAPADA DE AREIA', 27, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5771, 'COLINAS DO TOCANTINS', 27, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5772, 'COLMEIA', 27, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5773, 'COMBINADO', 27, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5774, 'CONCEICAO DO TOCANTINS', 27, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5775, 'COUTO DE MAGALHAES', 27, 28);
commit;
prompt 100 records committed...
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5776, 'CRISTALANDIA', 27, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5777, 'CRIXAS DO TOCANTINS', 27, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5778, 'DARCINOPOLIS', 27, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5779, 'DIANOPOLIS', 27, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5780, 'DIVINOPOLIS DO TOCANTINS', 27, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5781, 'DOIS IRMAOS DO TOCANTINS', 27, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5782, 'DUERE', 27, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5783, 'ESPERANTINA', 27, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5784, 'FATIMA', 27, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5785, 'FIGUEIROPOLIS', 27, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5786, 'FILADELFIA', 27, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5787, 'FORMOSO DO ARAGUAIA', 27, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5788, 'FORTALEZA DO TABOCAO', 27, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5789, 'GOIANORTE', 27, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5790, 'GOIATINS', 27, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5791, 'GUARAI', 27, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5792, 'GURUPI', 27, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5793, 'IPUEIRAS', 27, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5794, 'ITACAJA', 27, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5795, 'ITAGUATINS', 27, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5796, 'ITAPIRATINS', 27, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5797, 'ITAPORA DO TOCANTINS', 27, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5798, 'JAU DO TOCANTINS', 27, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5799, 'JUARINA', 27, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5800, 'LAGOA DA CONFUSAO', 27, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5801, 'LAGOA DO TOCANTINS', 27, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5802, 'LAJEADO', 27, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5803, 'LIZARDA', 27, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5804, 'LUZINOPOLIS', 27, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5805, 'MARIANOPOLIS DO TOCANTINS', 27, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5806, 'MATEIROS', 27, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5807, 'MAURILANDIA DO TOCANTINS', 27, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5808, 'MIRACEMA DO TOCANTINS', 27, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5809, 'MIRANORTE', 27, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5810, 'MONTE DO CARMO', 27, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5811, 'MONTE SANTO', 27, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5812, 'MURICILANDIA', 27, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5813, 'NATIVIDADE', 27, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5814, 'NAZARE', 27, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5815, 'NOVA OLINDA', 27, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5816, 'NOVA ROSALANDIA', 27, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5817, 'NOVO ACORDO', 27, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5818, 'NOVO JARDIM', 27, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5819, 'OLIVEIRA DE FATIMA', 27, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5820, 'PALMAS', 27, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5821, 'PALMEIRANTE', 27, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5822, 'PALMEIRAS DO TOCANTINS', 27, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5823, 'PALMEIROPOLIS', 27, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5824, 'PARAISO DO TOCANTINS', 27, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5825, 'PARANA', 27, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5826, 'PAU D´ARCO', 27, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5827, 'PEDRO AFONSO', 27, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5828, 'PEIXE', 27, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5829, 'PEQUIZEIRO', 27, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5830, 'PINDORAMA DO TOCANTINS', 27, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5831, 'PIRAQUE', 27, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5832, 'PIUM', 27, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5833, 'PONTE ALTA DO BOM JESUS', 27, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5834, 'PONTE ALTA DO TOCANTINS', 27, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5578, 'SAO MANUEL', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5579, 'SAO MIGUEL ARCANJO', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5580, 'SAO PAULO', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5581, 'SAO PEDRO', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5582, 'SAO PEDRO DO TURVO', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5583, 'SAO ROQUE', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5584, 'SAO SEBASTIAO', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5585, 'SAO SEBASTIAO DA GRAMA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5586, 'SAO SIMAO', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5587, 'SAO VICENTE', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5588, 'SARAPUI', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5589, 'SARUTAIA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5590, 'SEBASTIANOPOLIS DO SUL', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5591, 'SERRA AZUL', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5592, 'SERRA NEGRA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5593, 'SERRANA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5594, 'SERTAOZINHO', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5595, 'SETE BARRAS', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5596, 'SEVERINIA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5597, 'SILVEIRAS', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5598, 'SOCORRO', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5599, 'SOROCABA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5600, 'SUD MENNUCCI', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5601, 'SUMARE', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5602, 'SUZANAPOLIS', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5603, 'SUZANO', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5604, 'TABAPUA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5605, 'TABATINGA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5606, 'TABOAO DA SERRA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5607, 'TACIBA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5608, 'TAGUAI', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5609, 'TAIACU', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5610, 'TAIUVA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5611, 'TAMBAU', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5612, 'TANABI', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5613, 'TAPIRAI', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5614, 'TAPIRATIBA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5615, 'TAQUARITINGA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5616, 'TAQUARITUBA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5617, 'TAQUARIVAI', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5618, 'TARABAI', 25, 28);
commit;
prompt 200 records committed...
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5619, 'TARUMA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5620, 'TATUI', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5621, 'TAUBATE', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5622, 'TEJUPA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5623, 'TEODORO SAMPAIO', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5624, 'TERRA ROXA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5625, 'TIETE', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5626, 'TIMBURI', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5627, 'TORRE DE PEDRA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5628, 'TORRINHA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5629, 'TRABIJU', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5630, 'TREMEMBE', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5631, 'TRES FRONTEIRAS', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5632, 'TUIUTI', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5633, 'TUPA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5634, 'TUPI PAULISTA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5635, 'TURIUBA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5636, 'TURMALINA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5637, 'UBARANA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5638, 'UBATUBA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5639, 'UBIRAJARA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5640, 'UCHOA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5641, 'UNIAO PAULISTA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5642, 'URANIA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5643, 'URU', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5644, 'URUPES', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5645, 'VALENTIM GENTIL', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5646, 'VALINHOS', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5647, 'VALPARAISO', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5648, 'VARGEM', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5649, 'VARGEM GRANDE DO SUL', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5650, 'VARGEM GRANDE PAULISTA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5651, 'VARZEA PAULISTA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5652, 'VERA CRUZ', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5653, 'VINHEDO', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5654, 'VIRADOURO', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5655, 'VISTA ALEGRE DO ALTO', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5656, 'VITORIA BRASIL', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5657, 'VOTORANTIM', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5658, 'VOTUPORANGA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5659, 'AMPARO DE SAO FRANCISCO', 26, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5660, 'AQUIDABA', 26, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5661, 'ARACAJU', 26, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5662, 'ARAUA', 26, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5663, 'AREIA BRANCA', 26, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5664, 'BARRA DOS COQUEIROS', 26, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5665, 'BOQUIM', 26, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5666, 'BREJO GRANDE', 26, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5667, 'CAMPO DO BRITO', 26, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5668, 'CANHOBA', 26, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5669, 'CANINDE DE SAO FRANCISCO', 26, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5670, 'CAPELA', 26, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5671, 'CARIRA', 26, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5672, 'CARMOPOLIS', 26, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5673, 'CEDRO DE SAO JOAO', 26, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5674, 'CRISTINAPOLIS', 26, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5675, 'CUMBE', 26, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5676, 'DIVINA PASTORA', 26, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5677, 'ESTANCIA', 26, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5678, 'FEIRA NOVA', 26, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5679, 'FREI PAULO', 26, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5680, 'GARARU', 26, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5681, 'GENERAL MAYNARD', 26, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5682, 'GRACHO CARDOSO', 26, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5683, 'ILHA DAS FLORES', 26, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5684, 'INDIAROBA', 26, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5685, 'ITABAIANA', 26, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5686, 'ITABAIANINHA', 26, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5687, 'ITABI', 26, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5688, 'ITAPORANGA D´AJUDA', 26, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5689, 'JAPARATUBA', 26, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5690, 'JAPOATA', 26, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5691, 'LAGARTO', 26, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5692, 'LARANJEIRAS', 26, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5693, 'MACAMBIRA', 26, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5694, 'MALHADA DOS BOIS', 26, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5695, 'MALHADOR', 26, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5696, 'MARUIM', 26, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5697, 'MOITA BONITA', 26, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5698, 'MONTE ALEGRE DE SERGIPE', 26, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5699, 'MURIBECA', 26, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5700, 'NEOPOLIS', 26, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5701, 'NOSSA SENHORA APARECIDA', 26, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5702, 'NOSSA SENHORA DA GLORIA', 26, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5703, 'NOSSA SENHORA DAS DORES', 26, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5704, 'NOSSA SENHORA DE LOURDES', 26, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5705, 'NOSSA SENHORA DO SOCORRO', 26, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5706, 'PACATUBA', 26, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5707, 'PEDRA MOLE', 26, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5708, 'PEDRINHAS', 26, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5709, 'PINHAO', 26, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5710, 'PIRAMBU', 26, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5711, 'POCO REDONDO', 26, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5458, 'PIRATININGA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5459, 'PITANGUEIRAS', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5460, 'PLANALTO', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5461, 'PLATINA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5462, 'POA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5463, 'POLONI', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5464, 'POMPEIA', 25, 28);
commit;
prompt 300 records committed...
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5465, 'PONGAI', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5466, 'PONTAL', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5467, 'PONTALINDA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5468, 'PONTES GESTAL', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5469, 'POPULINA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5470, 'PORANGABA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5471, 'PORTO FELIZ', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5472, 'PORTO FERREIRA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5473, 'POTIM', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5474, 'POTIRENDABA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5475, 'PRACINHA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5476, 'PRADOPOLIS', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5477, 'PRAIA GRANDE', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5478, 'PRATANIA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5479, 'PRESIDENTE ALVES', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5480, 'PRESIDENTE BERNARDES', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5481, 'PRESIDENTE EPITACIO', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5482, 'PRESIDENTE PRUDENTE', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5483, 'PRESIDENTE VENCESLAU', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5484, 'PROMISSAO', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5485, 'QUADRA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5486, 'QUATA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5487, 'QUEIROZ', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5488, 'QUELUZ', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5489, 'QUINTANA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5490, 'RAFARD', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5491, 'RANCHARIA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5492, 'REDENCAO DA SERRA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5493, 'REGENTE FEIJO', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5494, 'REGINOPOLIS', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5495, 'REGISTRO', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5496, 'RESTINGA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5497, 'RIBEIRA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5498, 'RIBEIRAO BONITO', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5499, 'RIBEIRAO BRANCO', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5500, 'RIBEIRAO CORRENTE', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5501, 'RIBEIRAO DO SUL', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5502, 'RIBEIRAO DOS INDIOS', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5503, 'RIBEIRAO GRANDE', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5504, 'RIBEIRAO PIRES', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5505, 'RIBEIRAO PRETO', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5506, 'RIFAINA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5507, 'RINCAO', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5508, 'RINOPOLIS', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5509, 'RIO CLARO', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5510, 'RIO DAS PEDRAS', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5511, 'RIO GRANDE DA SERRA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5512, 'RIOLANDIA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5513, 'RIVERSUL', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5514, 'ROSANA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5515, 'ROSEIRA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5516, 'RUBIACEA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5517, 'RUBINEIA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5518, 'SABINO', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5519, 'SAGRES', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5520, 'SALES', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5521, 'SALES OLIVEIRA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5522, 'SALESOPOLIS', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5523, 'SALMOURAO', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5524, 'SALTINHO', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5525, 'SALTO', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5526, 'SALTO DE PIRAPORA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5527, 'SALTO GRANDE', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5528, 'SANDOVALINA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5529, 'SANTA ADELIA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5530, 'SANTA ALBERTINA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5531, 'SANTA BARBARA D´OESTE', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5532, 'SANTA BRANCA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5533, 'SANTA CLARA D´OESTE', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5534, 'SANTA CRUZ DA CONCEICAO', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5535, 'SANTA CRUZ DA ESPERANCA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5536, 'SANTA CRUZ DAS PALMEIRAS', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5537, 'SANTA CRUZ DO RIO PARDO', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5538, 'SANTA ERNESTINA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5539, 'SANTA FE DO SUL', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5540, 'SANTA GERTRUDES', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5541, 'SANTA ISABEL', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5542, 'SANTA LUCIA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5543, 'SANTA MARIA DA SERRA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5544, 'SANTA MERCEDES', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5545, 'SANTA RITA DO PASSA QUATRO', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5546, 'SANTA RITA D´OESTE', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5547, 'SANTA ROSA DE VITERBO', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5548, 'SANTA SALETE', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5549, 'SANTANA DA PONTE PENSA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5550, 'SANTANA DE PARNAIBA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5551, 'SANTO ANASTACIO', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5552, 'SANTO ANDRE', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5553, 'SANTO ANTONIO DA ALEGRIA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5554, 'SANTO ANTONIO DE POSSE', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5555, 'SANTO ANTONIO DO ARACANGUA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5556, 'SANTO ANTONIO DO JARDIM', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5557, 'SANTO ANTONIO DO PINHAL', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5558, 'SANTO EXPEDITO', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5559, 'SANTOPOLIS DO AGUAPEI', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5560, 'SANTOS', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5561, 'SAO BENTO DO SAPUCAI', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5562, 'SAO BERNARDO DO CAMPO', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5563, 'SAO CAETANO DO SUL', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5564, 'SAO CARLOS', 25, 28);
commit;
prompt 400 records committed...
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5565, 'SAO FRANCISCO', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5566, 'SAO JOAO DA BOA VISTA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5567, 'SAO JOAO DAS DUAS PONTES', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5568, 'SAO JOAO DE IRACEMA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5569, 'SAO JOAO DO PAU D´ALHO', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5570, 'SAO JOAQUIM DA BARRA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5571, 'SAO JOSE DA BELA VISTA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5572, 'SAO JOSE DO BARREIRO', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5573, 'SAO JOSE DO RIO PARDO', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5574, 'SAO JOSE DO RIO PRETO', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5575, 'SAO JOSE DOS CAMPOS', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5576, 'SAO LOURENCO DA SERRA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5577, 'SAO LUIS DO PARAITINGA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5323, 'LIMEIRA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5324, 'LINDOIA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5325, 'LINS', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5326, 'LORENA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5327, 'LOUVEIRA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5328, 'LUCELIA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5329, 'LUCIANOPOLIS', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5330, 'LUIS ANTONIO', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5331, 'LUIZIANIA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5332, 'LUPERCIO', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5333, 'LUTECIA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5334, 'MACATUBA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5335, 'MACAUBAL', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5336, 'MACEDONIA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5337, 'MAGDA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5338, 'MAIRINQUE', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5339, 'MAIRIPORA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5340, 'MANDURI', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5341, 'MARABA PAULISTA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5342, 'MARACAI', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5343, 'MARAPOAMA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5344, 'MARIAPOLIS', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5345, 'MARILIA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5346, 'MARINOPOLIS', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5347, 'MARTINOPOLIS', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5348, 'MATAO', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5349, 'MAUA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5350, 'MENDONCA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5351, 'MERIDIANO', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5352, 'MIGUELOPOLIS', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5353, 'MINEIROS DO TIETE', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5354, 'MIRA ESTRELA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5355, 'MIRACATU', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5356, 'MIRANDOPOLIS', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5357, 'MIRANTE DO PARANAPANEMA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5358, 'MIRASSOL', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5359, 'MIRASSOLANDIA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5360, 'MOCOCA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5361, 'MOGI-GUACU', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5362, 'MOJI DAS CRUZES', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5363, 'MOJI-MIRIM', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5364, 'MOMBUCA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5365, 'MONCOES', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5366, 'MONGAGUA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5367, 'MONTE ALEGRE DO SUL', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5368, 'MONTE ALTO', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5369, 'MONTE APRAZIVEL', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5370, 'MONTE AZUL PAULISTA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5371, 'MONTE CASTELO', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5372, 'MONTE MOR', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5373, 'MONTEIRO LOBATO', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5374, 'MORRO AGUDO', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5375, 'MORUNGABA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5376, 'MOTUCA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5377, 'MURUTINGA DO SUL', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5378, 'NANTES', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5379, 'NARANDIBA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5380, 'NATIVIDADE DA SERRA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5381, 'NAZARE PAULISTA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5382, 'NEVES PAULISTA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5383, 'NHANDEARA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5384, 'NIPOA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5385, 'NOVA ALIANCA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5386, 'NOVA CAMPINA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5387, 'NOVA CANAA PAULISTA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5388, 'NOVA CASTILHO', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5389, 'NOVA EUROPA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5390, 'NOVA GRANADA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5391, 'NOVA GUATAPORANGA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5392, 'NOVA INDEPENDENCIA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5393, 'NOVA LUZITANIA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5394, 'NOVA ODESSA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5395, 'NOVAIS', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5396, 'NOVO HORIZONTE', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5397, 'NUPORANGA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5398, 'OCAUCU', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5399, 'OLEO', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5400, 'OLIMPIA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5401, 'ONDA VERDE', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5402, 'ORIENTE', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5403, 'ORINDIUVA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5404, 'ORLANDIA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5405, 'OSASCO', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5406, 'OSCAR BRESSANE', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5407, 'OSVALDO CRUZ', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5408, 'OURINHOS', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5409, 'OURO VERDE', 25, 28);
commit;
prompt 500 records committed...
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5410, 'OUROESTE', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5411, 'PACAEMBU', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5412, 'PALESTINA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5413, 'PALMARES PAULISTA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5414, 'PALMEIRA D´OESTE', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5415, 'PALMITAL', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5416, 'PANORAMA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5417, 'PARAGUACU PAULISTA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5418, 'PARAIBUNA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5419, 'PARAISO', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5420, 'PARANAPANEMA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5421, 'PARANAPUA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5422, 'PARAPUA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5423, 'PARDINHO', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5424, 'PARIQUERA-ACU', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5425, 'PARISI', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5426, 'PATROCINIO PAULISTA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5427, 'PAULICEIA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5428, 'PAULINIA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5429, 'PAULISTANIA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5430, 'PAULO DE FARIA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5431, 'PEDERNEIRAS', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5432, 'PEDRA BELA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5433, 'PEDRANOPOLIS', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5434, 'PEDREGULHO', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5435, 'PEDREIRA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5436, 'PEDRINHAS PAULISTA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5437, 'PEDRO DE TOLEDO', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5438, 'PENAPOLIS', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5439, 'PEREIRA BARRETO', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5440, 'PEREIRAS', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5441, 'PERUIBE', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5442, 'PIACATU', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5443, 'PIEDADE', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5444, 'PILAR DO SUL', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5445, 'PINDAMONHANGABA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5446, 'PINDORAMA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5447, 'PINHALZINHO', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5448, 'PIQUEROBI', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5449, 'PIQUETE', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5450, 'PIRACAIA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5451, 'PIRACICABA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5452, 'PIRAJU', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5453, 'PIRAJUI', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5454, 'PIRANGI', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5455, 'PIRAPORA DO BOM JESUS', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5456, 'PIRAPOZINHO', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5457, 'PIRASSUNUNGA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5182, 'ELDORADO', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5183, 'ELIAS FAUSTO', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5184, 'ELISIARIO', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5185, 'EMBAUBA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5186, 'EMBU', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5187, 'EMBU-GUACU', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5188, 'EMILIANOPOLIS', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5189, 'ENGENHEIRO COELHO', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5190, 'ESPIRITO SANTO DO PINHAL', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5191, 'ESPIRITO SANTO DO TURVO', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5192, 'ESTIVA DO GERBI', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5193, 'ESTRELA DO NORTE', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5194, 'ESTRELA D´OESTE', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5195, 'EUCLIDES DA CUNHA PAULISTA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5196, 'FARTURA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5197, 'FERNANDO PRESTES', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5198, 'FERNANDOPOLIS', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5199, 'FERNAO', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5200, 'FERRAZ DE VASCONCELOS', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5201, 'FLORA RICA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5202, 'FLOREAL', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5203, 'FLORIDA PAULISTA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5204, 'FLORINIA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5205, 'FRANCA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5206, 'FRANCISCO MORATO', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5207, 'FRANCO DA ROCHA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5208, 'GABRIEL MONTEIRO', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5209, 'GALIA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5210, 'GARCA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5211, 'GASTAO VIDIGAL', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5212, 'GAVIAO PEIXOTO', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5213, 'GENERAL SALGADO', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5214, 'GETULINA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5215, 'GLICERIO', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5216, 'GUAICARA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5217, 'GUAIMBE', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5218, 'GUAIRA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5219, 'GUAPIACU', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5220, 'GUAPIARA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5221, 'GUARA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5222, 'GUARACAI', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5223, 'GUARACI', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5224, 'GUARANI D´OESTE', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5225, 'GUARANTA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5226, 'GUARARAPES', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5227, 'GUARAREMA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5228, 'GUARATINGUETA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5229, 'GUAREI', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5230, 'GUARIBA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5231, 'GUARUJA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5232, 'GUARULHOS', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5233, 'GUATAPARA', 25, 28);
commit;
prompt 600 records committed...
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5234, 'GUZOLANDIA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5235, 'HERCULANDIA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5236, 'HOLAMBRA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5237, 'HORTOLANDIA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5238, 'IACANGA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5239, 'IACRI', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5240, 'IARAS', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5241, 'IBATE', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5242, 'IBIRA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5243, 'IBIRAREMA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5244, 'IBITINGA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5245, 'IBIUNA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5246, 'ICEM', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5247, 'IEPE', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5248, 'IGARACU DO TIETE', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5249, 'IGARAPAVA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5250, 'IGARATA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5251, 'IGUAPE', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5252, 'ILHA COMPRIDA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5253, 'ILHA SOLTEIRA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5254, 'ILHABELA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5255, 'INDAIATUBA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5256, 'INDIANA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5257, 'INDIAPORA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5258, 'INUBIA PAULISTA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5259, 'IPAUCU', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5260, 'IPERO', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5261, 'IPEUNA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5262, 'IPIGUA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5263, 'IPORANGA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5264, 'IPUA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5265, 'IRACEMAPOLIS', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5266, 'IRAPUA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5267, 'IRAPURU', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5268, 'ITABERA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5269, 'ITAI', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5270, 'ITAJOBI', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5271, 'ITAJU', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5272, 'ITANHAEM', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5273, 'ITAOCA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5274, 'ITAPECERICA DA SERRA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5275, 'ITAPETININGA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5276, 'ITAPEVA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5277, 'ITAPEVI', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5278, 'ITAPIRA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5279, 'ITAPIRAPUA PAULISTA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5280, 'ITAPOLIS', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5281, 'ITAPORANGA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5282, 'ITAPUI', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5283, 'ITAPURA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5284, 'ITAQUAQUECETUBA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5285, 'ITARARE', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5286, 'ITARIRI', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5287, 'ITATIBA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5288, 'ITATINGA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5289, 'ITIRAPINA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5290, 'ITIRAPUA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5291, 'ITOBI', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5292, 'ITU', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5293, 'ITUPEVA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5294, 'ITUVERAVA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5295, 'JABORANDI', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5296, 'JABOTICABAL', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5297, 'JACAREI', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5298, 'JACI', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5299, 'JACUPIRANGA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5300, 'JAGUARIUNA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5301, 'JALES', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5302, 'JAMBEIRO', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5303, 'JANDIRA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5304, 'JARDINOPOLIS', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5305, 'JARINU', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5306, 'JAU', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5307, 'JERIQUARA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5308, 'JOANOPOLIS', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5309, 'JOAO RAMALHO', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5310, 'JOSE BONIFACIO', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5311, 'JULIO MESQUITA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5312, 'JUMIRIM', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5313, 'JUNDIAI', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5314, 'JUNQUEIROPOLIS', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5315, 'JUQUIA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5316, 'JUQUITIBA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5317, 'LAGOINHA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5318, 'LARANJAL PAULISTA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5319, 'LAVINIA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5320, 'LAVRINHAS', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5321, 'LEME', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5322, 'LENCOIS PAULISTA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5043, 'ANGATUBA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5044, 'ANHEMBI', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5045, 'ANHUMAS', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5046, 'APARECIDA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5047, 'APARECIDA D´OESTE', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5048, 'APIAI', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5049, 'ARACARIGUAMA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5050, 'ARACATUBA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5051, 'ARACOIABA DA SERRA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5052, 'ARAMINA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5053, 'ARANDU', 25, 28);
commit;
prompt 700 records committed...
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5054, 'ARAPEI', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5055, 'ARARAQUARA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5056, 'ARARAS', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5057, 'ARCO-IRIS', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5058, 'AREALVA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5059, 'AREIAS', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5060, 'AREIOPOLIS', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5061, 'ARIRANHA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5062, 'ARTUR NOGUEIRA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5063, 'ARUJA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5064, 'ASPASIA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5065, 'ASSIS', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5066, 'ATIBAIA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5067, 'AURIFLAMA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5068, 'AVAI', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5069, 'AVANHANDAVA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5070, 'AVARE', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5071, 'BADY BASSITT', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5072, 'BALBINOS', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5073, 'BALSAMO', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5074, 'BANANAL', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5075, 'BARAO DE ANTONINA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5076, 'BARBOSA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5077, 'BARIRI', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5078, 'BARRA BONITA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5079, 'BARRA DO CHAPEU', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5080, 'BARRA DO TURVO', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5081, 'BARRETOS', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5082, 'BARRINHA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5083, 'BARUERI', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5084, 'BASTOS', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5085, 'BATATAIS', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5086, 'BAURU', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5087, 'BEBEDOURO', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5088, 'BENTO DE ABREU', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5089, 'BERNARDINO DE CAMPOS', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5090, 'BERTIOGA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5091, 'BILAC', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5092, 'BIRIGUI', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5093, 'BIRITIBA-MIRIM', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5094, 'BOA ESPERANCA DO SUL', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5095, 'BOCAINA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5096, 'BOFETE', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5097, 'BOITUVA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5098, 'BOM JESUS DOS PERDOES', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5099, 'BOM SUCESSO DE ITARARE', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5100, 'BORA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5101, 'BORACEIA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5102, 'BORBOREMA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5103, 'BOREBI', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5104, 'BOTUCATU', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5105, 'BRAGANCA PAULISTA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5106, 'BRAUNA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5107, 'BREJO ALEGRE', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5108, 'BRODOSQUI', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5109, 'BROTAS', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5110, 'BURI', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5111, 'BURITAMA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5112, 'BURITIZAL', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5113, 'CABRALIA PAULISTA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5114, 'CABREUVA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5115, 'CACAPAVA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5116, 'CACHOEIRA PAULISTA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5117, 'CACONDE', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5118, 'CAFELANDIA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5119, 'CAIABU', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5120, 'CAIEIRAS', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5121, 'CAIUA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5122, 'CAJAMAR', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5123, 'CAJATI', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5124, 'CAJOBI', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5125, 'CAJURU', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5126, 'CAMPINA DO MONTE ALEGRE', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5127, 'CAMPINAS', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5128, 'CAMPO LIMPO PAULISTA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5129, 'CAMPOS DO JORDAO', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5130, 'CAMPOS NOVOS PAULISTA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5131, 'CANANEIA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5132, 'CANAS', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5133, 'CANDIDO MOTA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5134, 'CANDIDO RODRIGUES', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5135, 'CAPAO BONITO', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5136, 'CAPELA DO ALTO', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5137, 'CAPIVARI', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5138, 'CARAGUATATUBA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5139, 'CARAPICUIBA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5140, 'CARDOSO', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5141, 'CASA BRANCA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5142, 'CASSIA DOS COQUEIROS', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5143, 'CASTILHO', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5144, 'CATANDUVA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5145, 'CATIGUA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5146, 'CEDRAL', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5147, 'CERQUEIRA CESAR', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5148, 'CERQUILHO', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5149, 'CESARIO LANGE', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5150, 'CHARQUEADA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5151, 'CHAVANTES', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5152, 'CLEMENTINA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5153, 'COLINA', 25, 28);
commit;
prompt 800 records committed...
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5154, 'COLOMBIA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5155, 'CONCHAL', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5156, 'CONCHAS', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5157, 'CORDEIROPOLIS', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5158, 'COROADOS', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5159, 'CORONEL MACEDO', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5160, 'CORUMBATAI', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5161, 'COSMOPOLIS', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5162, 'COSMORAMA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5163, 'COTIA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5164, 'CRAVINHOS', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5165, 'CRISTAIS PAULISTA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5166, 'CRUZALIA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5167, 'CRUZEIRO', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5168, 'CUBATAO', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5169, 'CUNHA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5170, 'DESCALVADO', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5171, 'DIADEMA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5172, 'DIRCE REIS', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5173, 'DIVINOLANDIA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5174, 'DOBRADA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5175, 'DOIS CORREGOS', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5176, 'DOLCINOPOLIS', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5177, 'DOURADO', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5178, 'DRACENA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5179, 'DUARTINA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5180, 'DUMONT', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5181, 'ECHAPORA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4915, 'PAULO LOPES', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4916, 'PEDRAS GRANDES', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4917, 'PENHA', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4918, 'PERITIBA', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4919, 'PETROLANDIA', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4920, 'PICARRAS', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4921, 'PINHALZINHO', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4922, 'PINHEIRO PRETO', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4923, 'PIRATUBA', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4924, 'PLANALTO ALEGRE', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4925, 'POMERODE', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4926, 'PONTE ALTA', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4927, 'PONTE ALTA DO NORTE', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4928, 'PONTE SERRADA', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4929, 'PORTO BELO', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4930, 'PORTO UNIAO', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4931, 'POUSO REDONDO', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4932, 'PRAIA GRANDE', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4933, 'PRESIDENTE CASTELO BRANCO', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4934, 'PRESIDENTE GETULIO', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4935, 'PRESIDENTE NEREU', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4936, 'PRINCESA', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4937, 'QUILOMBO', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4938, 'RANCHO QUEIMADO', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4939, 'RIO DO CAMPO', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4940, 'RIO DO OESTE', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4941, 'RIO DO SUL', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4942, 'RIO DOS CEDROS', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4943, 'RIO FORTUNA', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4944, 'RIO NEGRINHO', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4945, 'RIO RUFINO', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4946, 'RIQUEZA', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4947, 'RODEIO', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4948, 'ROMELANDIA', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4949, 'SALETE', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4950, 'SALTINHO', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4951, 'SALTO VELOSO', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4952, 'SANGAO', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4953, 'SANTA CECILIA', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4954, 'SANTA HELENA', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4955, 'SANTA ROSA DE LIMA', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4956, 'SANTA ROSA DO SUL', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4957, 'SANTA TEREZINHA', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4958, 'SANTA TEREZINHA DO PROGRESSO', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4959, 'SANTIAGO DO SUL', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4960, 'SANTO AMARO DA IMPERATRIZ', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4961, 'SAO BENTO DO SUL', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4962, 'SAO BERNARDINO', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4963, 'SAO BONIFACIO', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4964, 'SAO CARLOS', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4965, 'SAO CRISTOVAO DO SUL', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4966, 'SAO DOMINGOS', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4967, 'SAO FRANCISCO DO SUL', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4968, 'SAO JOAO BATISTA', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4969, 'SAO JOAO DO ITAPERIU', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4970, 'SAO JOAO DO OESTE', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4971, 'SAO JOAO DO SUL', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4972, 'SAO JOAQUIM', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4973, 'SAO JOSE', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4974, 'SAO JOSE DO CEDRO', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4975, 'SAO JOSE DO CERRITO', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4976, 'SAO LOURENCO DO OESTE', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4977, 'SAO LUDGERO', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4978, 'SAO MARTINHO', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4979, 'SAO MIGUEL DA BOA VISTA', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4980, 'SAO MIGUEL D´OESTE', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4981, 'SAO PEDRO DE ALCANTARA', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4982, 'SAUDADES', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4983, 'SCHROEDER', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4984, 'SEARA', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4985, 'SERRA ALTA', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4986, 'SIDEROPOLIS', 24, 28);
commit;
prompt 900 records committed...
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4987, 'SOMBRIO', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4988, 'SUL BRASIL', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4989, 'TAIO', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4990, 'TANGARA', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4991, 'TIGRINHOS', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4992, 'TIJUCAS', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4993, 'TIMBE DO SUL', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4994, 'TIMBO', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4995, 'TIMBO GRANDE', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4996, 'TRES BARRAS', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4997, 'TREVISO', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4998, 'TREZE DE MAIO', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4999, 'TREZE TILIAS', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5000, 'TROMBUDO CENTRAL', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5001, 'TUBARAO', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5002, 'TUNAPOLIS', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5003, 'TURVO', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5004, 'UNIAO DO OESTE', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5005, 'URUBICI', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5006, 'URUPEMA', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5007, 'URUSSANGA', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5008, 'VARGEAO', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5009, 'VARGEM', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5010, 'VARGEM BONITA', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5011, 'VIDAL RAMOS', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5012, 'VIDEIRA', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5013, 'VITOR MEIRELES', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5014, 'WITMARSUM', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5015, 'XANXERE', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5016, 'XAVANTINA', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5017, 'XAXIM', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5018, 'ZORTEA', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5019, 'ADAMANTINA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5020, 'ADOLFO', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5021, 'AGUAI', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5022, 'AGUAS DA PRATA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5023, 'AGUAS DE LINDOIA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5024, 'AGUAS DE SANTA BARBARA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5025, 'AGUAS DE SAO PEDRO', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5026, 'AGUDOS', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5027, 'ALAMBARI', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5028, 'ALFREDO MARCONDES', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5029, 'ALTAIR', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5030, 'ALTINOPOLIS', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5031, 'ALTO ALEGRE', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5032, 'ALUMINIO', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5033, 'ALVARES FLORENCE', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5034, 'ALVARES MACHADO', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5035, 'ALVARO DE CARVALHO', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5036, 'ALVINLANDIA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5037, 'AMERICANA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5038, 'AMERICO BRASILIENSE', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5039, 'AMERICO DE CAMPOS', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5040, 'AMPARO', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5041, 'ANALANDIA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5042, 'ANDRADINA', 25, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4776, 'BRUSQUE', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4777, 'CACADOR', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4778, 'CAIBI', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4779, 'CALMON', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4780, 'CAMBORIU', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4781, 'CAMPO ALEGRE', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4782, 'CAMPO BELO DO SUL', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4783, 'CAMPO ERE', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4784, 'CAMPOS NOVOS', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4785, 'CANELINHA', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4786, 'CANOINHAS', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4787, 'CAPAO ALTO', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4788, 'CAPINZAL', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4789, 'CAPIVARI DE BAIXO', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4790, 'CATANDUVAS', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4791, 'CAXAMBU DO SUL', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4792, 'CELSO RAMOS', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4793, 'CERRO NEGRO', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4794, 'CHAPADAO DO LAGEADO', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4795, 'CHAPECO', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4796, 'COCAL DO SUL', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4797, 'CONCORDIA', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4798, 'CORDILHEIRA ALTA', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4799, 'CORONEL FREITAS', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4800, 'CORONEL MARTINS', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4801, 'CORREIA PINTO', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4802, 'CORUPA', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4803, 'CRICIUMA', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4804, 'CUNHA PORA', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4805, 'CUNHATAI', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4806, 'CURITIBANOS', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4807, 'DESCANSO', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4808, 'DIONISIO CERQUEIRA', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4809, 'DONA EMMA', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4810, 'DOUTOR PEDRINHO', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4811, 'ERMO', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4812, 'ERVAL VELHO', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4813, 'FAXINAL DOS GUEDES', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4814, 'FLOR DO SERTAO', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4815, 'FLORIANOPOLIS', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4816, 'FORMOSA DO SUL', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4817, 'FORQUILHINHA', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4818, 'FRAIBURGO', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4819, 'FREI ROGERIO', 24, 28);
commit;
prompt 1000 records committed...
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4820, 'GALVAO', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4821, 'GAROPABA', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4822, 'GARUVA', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4823, 'GASPAR', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4824, 'GOVERNADOR CELSO RAMOS', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4825, 'GRAO PARA', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4826, 'GRAVATAL', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4827, 'GUABIRUBA', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4828, 'GUARACIABA', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4829, 'GUARAMIRIM', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4830, 'GUARUJA DO SUL', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4831, 'GUATAMBU', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4832, 'HERVAL D´OESTE', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4833, 'IBIAM', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4834, 'IBICARE', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4835, 'IBIRAMA', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4836, 'ICARA', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4837, 'ILHOTA', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4838, 'IMARUI', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4839, 'IMBITUBA', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4840, 'IMBUIA', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4841, 'INDAIAL', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4842, 'IOMERE', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4843, 'IPIRA', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4844, 'IPORA DO OESTE', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4845, 'IPUACU', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4846, 'IPUMIRIM', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4847, 'IRACEMINHA', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4848, 'IRANI', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4849, 'IRATI', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4850, 'IRINEOPOLIS', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4851, 'ITA', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4852, 'ITAIOPOLIS', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4853, 'ITAJAI', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4854, 'ITAPEMA', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4855, 'ITAPIRANGA', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4856, 'ITAPOA', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4857, 'ITUPORANGA', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4858, 'JABORA', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4859, 'JACINTO MACHADO', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4860, 'JAGUARUNA', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4861, 'JARAGUA DO SUL', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4862, 'JARDINOPOLIS', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4863, 'JOACABA', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4864, 'JOINVILLE', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4865, 'JOSE BOITEUX', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4866, 'LACERDOPOLIS', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4867, 'LAGES', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4868, 'LAGUNA', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4869, 'LAJEADO GRANDE', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4870, 'LAURENTINO', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4871, 'LAURO MULLER', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4872, 'LEBON REGIS', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4873, 'LEOBERTO LEAL', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4874, 'LINDOIA DO SUL', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4875, 'LONTRAS', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4876, 'LUIZ ALVES', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4877, 'LUZERNA', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4878, 'MACIEIRA', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4879, 'MAFRA', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4880, 'MAJOR GERCINO', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4881, 'MAJOR VIEIRA', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4882, 'MARACAJA', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4883, 'MARAVILHA', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4884, 'MAREMA', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4885, 'MASSARANDUBA', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4886, 'MATOS COSTA', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4887, 'MELEIRO', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4888, 'MIRIM DOCE', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4889, 'MODELO', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4890, 'MONDAI', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4891, 'MONTE CARLO', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4892, 'MONTE CASTELO', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4893, 'MORRO DA FUMACA', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4894, 'MORRO GRANDE', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4895, 'NAVEGANTES', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4896, 'NOVA ERECHIM', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4897, 'NOVA ITABERABA', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4898, 'NOVA TRENTO', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4899, 'NOVA VENEZA', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4900, 'NOVO HORIZONTE', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4901, 'ORLEANS', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4902, 'OTACILIO COSTA', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4903, 'OURO', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4904, 'OURO VERDE', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4905, 'PAIAL', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4906, 'PAINEL', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4907, 'PALHOCA', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4908, 'PALMA SOLA', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4909, 'PALMEIRA', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4910, 'PALMITOS', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4911, 'PAPANDUVA', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4912, 'PARAISO', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4913, 'PASSO DE TORRES', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4914, 'PASSOS MAIA', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4650, 'VIAMAO', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4651, 'VICENTE DUTRA', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4652, 'VICTOR GRAEFF', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4653, 'VILA FLORES', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4654, 'VILA LANGARO', 21, 28);
commit;
prompt 1100 records committed...
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4655, 'VILA MARIA', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4656, 'VILA NOVA DO SUL', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4657, 'VISTA ALEGRE', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4658, 'VISTA ALEGRE DO PRATA', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4659, 'VISTA GAUCHA', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4660, 'VITORIA DAS MISSOES', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4661, 'WESTFALIA', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4662, 'XANGRI-LA', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4663, 'ALTA FLORESTA D´OESTE', 22, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4664, 'ALTO ALEGRE DO PARECIS', 22, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4665, 'ALTO PARAISO', 22, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4666, 'ALVORADA D´OESTE', 22, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4667, 'ARIQUEMES', 22, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4668, 'BURITIS', 22, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4669, 'CABIXI', 22, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4670, 'CACAULANDIA', 22, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4671, 'CACOAL', 22, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4672, 'CAMPO NOVO DE RONDONIA', 22, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4673, 'CANDEIAS DO JAMARI', 22, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4674, 'CASTANHEIRAS', 22, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4675, 'CEREJEIRAS', 22, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4676, 'CHUPINGUAIA', 22, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4677, 'COLORADO DO OESTE', 22, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4678, 'CORUMBIARA', 22, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4679, 'COSTA MARQUES', 22, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4680, 'CUJUBIM', 22, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4681, 'ESPIGAO D´OESTE', 22, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4682, 'GOVERNADOR JORGE TEIXEIRA', 22, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4683, 'GUAJARA-MIRIM', 22, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4684, 'JAMARI', 22, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4685, 'JARU', 22, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4686, 'JI-PARANA', 22, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4687, 'MACHADINHO D´OESTE', 22, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4688, 'MINISTRO ANDREAZZA', 22, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4689, 'MIRANTE DA SERRA', 22, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4690, 'MONTE NEGRO', 22, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4691, 'NOVA BRASILANDIA D´OESTE', 22, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4692, 'NOVA MAMORE', 22, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4693, 'NOVA UNIAO', 22, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4694, 'NOVO HORIZONTE DO OESTE', 22, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4695, 'OURO PRETO DO OESTE', 22, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4696, 'PARECIS', 22, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4697, 'PIMENTA BUENO', 22, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4698, 'PIMENTEIRAS DO OESTE', 22, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4699, 'PORTO VELHO', 22, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4700, 'PRESIDENTE MEDICI', 22, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4701, 'PRIMAVERA DE RONDONIA', 22, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4702, 'RIO CRESPO', 22, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4703, 'ROLIM DE MOURA', 22, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4704, 'SANTA LUZIA D´OESTE', 22, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4705, 'SAO FELIPE D´OESTE', 22, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4706, 'SAO FRANCISCO DO GUAPORE', 22, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4707, 'SAO MIGUEL DO GUAPORE', 22, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4708, 'SERINGUEIRAS', 22, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4709, 'TEIXEIROPOLIS', 22, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4710, 'THEOBROMA', 22, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4711, 'URUPA', 22, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4712, 'VALE DO ANARI', 22, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4713, 'VALE DO PARAISO', 22, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4714, 'VILHENA', 22, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4715, 'ALTO ALEGRE', 23, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4716, 'AMAJARI', 23, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4717, 'BOA VISTA', 23, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4718, 'BONFIM', 23, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4719, 'CANTA', 23, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4720, 'CARACARAI', 23, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4721, 'CAROEBE', 23, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4722, 'IRACEMA', 23, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4723, 'MUCAJAI', 23, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4724, 'NORMANDIA', 23, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4725, 'PACARAIMA', 23, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4726, 'RORAINOPOLIS', 23, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4727, 'SAO JOAO DA BALIZA', 23, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4728, 'SAO LUIZ', 23, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4729, 'UIRAMUTA', 23, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4730, 'VILA BRASIL', 23, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4731, 'ABDON BATISTA', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4732, 'ABELARDO LUZ', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4733, 'AGROLANDIA', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4734, 'AGRONOMICA', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4735, 'AGUA DOCE', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4736, 'AGUAS DE CHAPECO', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4737, 'AGUAS FRIAS', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4738, 'AGUAS MORNAS', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4739, 'ALFREDO WAGNER', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4740, 'ALTO BELA VISTA', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4741, 'ANCHIETA', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4742, 'ANGELINA', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4743, 'ANITA GARIBALDI', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4744, 'ANITAPOLIS', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4745, 'ANTONIO CARLOS', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4746, 'APIUNA', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4747, 'ARABUTA', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4748, 'ARAQUARI', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4749, 'ARARANGUA', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4750, 'ARMAZEM', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4751, 'ARROIO TRINTA', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4752, 'ARVOREDO', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4753, 'ASCURRA', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4754, 'ATALANTA', 24, 28);
commit;
prompt 1200 records committed...
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4755, 'AURORA', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4756, 'BALNEARIO ARROIO DO SILVA', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4757, 'BALNEARIO CAMBORIU', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4758, 'BALNEARIO GAIVOTA', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4759, 'BANDEIRANTE', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4760, 'BARRA VELHA', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4761, 'BELA VISTA DO TOLDO', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4762, 'BELMONTE', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4763, 'BENEDITO NOVO', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4764, 'BIGUACU', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4765, 'BLUMENAU', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4766, 'BOCAINA DO SUL', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4767, 'BOM JARDIM DA SERRA', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4768, 'BOM JESUS', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4769, 'BOM JESUS DO OESTE', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4770, 'BOM RETIRO', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4771, 'BOMBINHAS', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4772, 'BOTUVERA', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4773, 'BRACO DO NORTE', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4774, 'BRACO DO TROMBUDO', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4775, 'BRUNOPOLIS', 24, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4528, 'SAGRADA FAMILIA', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4529, 'SALDANHA MARINHO', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4530, 'SALTO DO JACUI', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4531, 'SALVADOR DO SUL', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4532, 'SANANDUVA', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4533, 'SANTA BARBARA DO SUL', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4534, 'SANTA CLARA DO SUL', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4535, 'SANTA CRUZ DO SUL', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4536, 'SANTA MARIA', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4537, 'SANTA MARIA DO HERVAL', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4538, 'SANTA ROSA', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4539, 'SANTA TEREZA', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4540, 'SANTA VITORIA DO PALMAR', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4541, 'SANTANA DA BOA VISTA', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4542, 'SANTANA DO LIVRAMENTO', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4543, 'SANTIAGO', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4544, 'SANTO ANGELO', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4545, 'SANTO ANTONIO DA PATRULHA', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4546, 'SANTO ANTONIO DAS MISSOES', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4547, 'SANTO ANTONIO DO PALMA', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4548, 'SANTO ANTONIO DO PLANALTO', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4549, 'SANTO AUGUSTO', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4550, 'SANTO CRISTO', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4551, 'SANTO EXPEDITO DO SUL', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4552, 'SAO BORJA', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4553, 'SAO DOMINGOS DO SUL', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4554, 'SAO FRANCISCO DE ASSIS', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4555, 'SAO FRANCISCO DE PAULA', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4556, 'SAO GABRIEL', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4557, 'SAO JERONIMO', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4558, 'SAO JOAO DA URTIGA', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4559, 'SAO JOAO DO POLESINE', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4560, 'SAO JORGE', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4561, 'SAO JOSE DAS MISSOES', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4562, 'SAO JOSE DO HERVAL', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4563, 'SAO JOSE DO HORTENCIO', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4564, 'SAO JOSE DO NORTE', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4565, 'SAO JOSE DO OURO', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4566, 'SAO JOSE DO SUL', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4567, 'SAO JOSE DOS AUSENTES', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4568, 'SAO LEOPOLDO', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4569, 'SAO LOURENCO DO SUL', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4570, 'SAO LUIZ GONZAGA', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4571, 'SAO MARCOS', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4572, 'SAO MARTINHO', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4573, 'SAO MARTINHO DA SERRA', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4574, 'SAO MIGUEL DAS MISSOES', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4575, 'SAO NICOLAU', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4576, 'SAO PAULO DAS MISSOES', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4577, 'SAO PEDRO DA SERRA', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4578, 'SAO PEDRO DO SUL', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4579, 'SAO SEBASTIAO DO CAI', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4580, 'SAO SEPE', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4581, 'SAO VALENTIM', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4582, 'SAO VALENTIM DO SUL', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4583, 'SAO VENDELINO', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4584, 'SAO VICENTE DO SUL', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4585, 'SAPIRANGA', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4586, 'SAPUCAIA DO SUL', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4587, 'SARANDI', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4588, 'SEBERI', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4589, 'SEDE NOVA', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4590, 'SEGREDO', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4591, 'SELBACH', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4592, 'SENADOR SALGADO FILHO', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4593, 'SENTINELA DO SUL', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4594, 'SERAFINA CORREA', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4595, 'SERIO', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4596, 'SERTAO', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4597, 'SERTAO SANTANA', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4598, 'SETE DE SETEMBRO', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4599, 'SEVERIANO DE ALMEIDA', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4600, 'SILVEIRA MARTINS', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4601, 'SINIMBU', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4602, 'SOBRADINHO', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4603, 'SOLEDADE', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4604, 'TABAI', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4605, 'TAPEJARA', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4606, 'TAPERA', 21, 28);
commit;
prompt 1300 records committed...
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4607, 'TAPES', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4608, 'TAQUARA', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4609, 'TAQUARI', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4610, 'TAQUARUCU DO SUL', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4611, 'TAVARES', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4612, 'TENENTE PORTELA', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4613, 'TERRA DE AREIA', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4614, 'TEUTONIA', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4615, 'TIRADENTES DO SUL', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4616, 'TOROPI', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4617, 'TORRES', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4618, 'TRAMANDAI', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4619, 'TRAVESSEIRO', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4620, 'TRES ARROIOS', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4621, 'TRES CACHOEIRAS', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4622, 'TRES COROAS', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4623, 'TRES DE MAIO', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4624, 'TRES FORQUILHAS', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4625, 'TRES PALMEIRAS', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4626, 'TRES PASSOS', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4627, 'TRINDADE DO SUL', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4628, 'TRIUNFO', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4629, 'TUCUNDUVA', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4630, 'TUNAS', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4631, 'TUPANCI DO SUL', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4632, 'TUPANCIRETA', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4633, 'TUPANDI', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4634, 'TUPARENDI', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4635, 'TURUCU', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4636, 'UBIRETAMA', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4637, 'UNIAO DA SERRA', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4638, 'UNISTALDA', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4639, 'URUGUAIANA', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4640, 'VACARIA', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4641, 'VALE DO SOL', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4642, 'VALE REAL', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4643, 'VALE VERDE', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4644, 'VANINI', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4645, 'VENANCIO AIRES', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4646, 'VERA CRUZ', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4647, 'VERANOPOLIS', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4648, 'VESPASIANO CORREA', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4649, 'VIADUTOS', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4397, 'ITACURUBI', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4398, 'ITAPUCA', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4399, 'ITAQUI', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4400, 'ITATIBA DO SUL', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4401, 'IVORA', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4402, 'IVOTI', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4403, 'JABOTICABA', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4404, 'JACUTINGA', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4405, 'JAGUARAO', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4406, 'JAGUARI', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4407, 'JAQUIRANA', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4408, 'JARI', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4409, 'JOIA', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4410, 'JULIO DE CASTILHOS', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4411, 'LAGOA DOS TRES CANTOS', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4412, 'LAGOA VERMELHA', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4413, 'LAGOAO', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4414, 'LAJEADO', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4415, 'LAJEADO DO BUGRE', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4416, 'LAVRAS DO SUL', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4417, 'LIBERATO SALZANO', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4418, 'LINDOLFO COLLOR', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4419, 'LINHA NOVA', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4420, 'MACAMBARA', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4421, 'MACHADINHO', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4422, 'MAMPITUBA', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4423, 'MANOEL VIANA', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4424, 'MAQUINE', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4425, 'MARATA', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4426, 'MARAU', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4427, 'MARCELINO RAMOS', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4428, 'MARIANA PIMENTEL', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4429, 'MARIANO MORO', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4430, 'MARQUES DE SOUZA', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4431, 'MATA', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4432, 'MATO CASTELHANO', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4433, 'MATO LEITAO', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4434, 'MAXIMILIANO DE ALMEIDA', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4435, 'MINAS DO LEAO', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4436, 'MIRAGUAI', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4437, 'MONTAURI', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4438, 'MONTE ALEGRE DOS CAMPOS', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4439, 'MONTE BELO DO SUL', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4440, 'MONTENEGRO', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4441, 'MORMACO', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4442, 'MORRINHOS DO SUL', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4443, 'MORRO REDONDO', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4444, 'MORRO REUTER', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4445, 'MOSTARDAS', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4446, 'MUCUM', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4447, 'MUITOS CAPOES', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4448, 'MULITERNO', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4449, 'NAO-ME-TOQUE', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4450, 'NICOLAU VERGUEIRO', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4451, 'NONOAI', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4452, 'NOVA ALVORADA', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4453, 'NOVA ARACA', 21, 28);
commit;
prompt 1400 records committed...
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4454, 'NOVA BASSANO', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4455, 'NOVA BOA VISTA', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4456, 'NOVA BRESCIA', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4457, 'NOVA CANDELARIA', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4458, 'NOVA ESPERANCA DO SUL', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4459, 'NOVA HARTZ', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4460, 'NOVA PADUA', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4461, 'NOVA PALMA', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4462, 'NOVA PETROPOLIS', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4463, 'NOVA PRATA', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4464, 'NOVA RAMADA', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4465, 'NOVA ROMA DO SUL', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4466, 'NOVA SANTA RITA', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4467, 'NOVO BARREIRO', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4468, 'NOVO CABRAIS', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4469, 'NOVO HAMBURGO', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4470, 'NOVO MACHADO', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4471, 'NOVO TIRADENTES', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4472, 'OSORIO', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4473, 'PAIM FILHO', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4474, 'PALMARES DO SUL', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4475, 'PALMEIRA DAS MISSOES', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4476, 'PALMITINHO', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4477, 'PANAMBI', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4478, 'PANTANO GRANDE', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4479, 'PARAI', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4480, 'PARAISO DO SUL', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4481, 'PARECI NOVO', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4482, 'PAROBE', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4483, 'PASSA SETE', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4484, 'PASSO DO SOBRADO', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4485, 'PASSO FUNDO', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4486, 'PAVERAMA', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4487, 'PEDRO OSORIO', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4488, 'PEJUCARA', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4489, 'PELOTAS', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4490, 'PICADA CAFE', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4491, 'PINHAL', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4492, 'PINHAL GRANDE', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4493, 'PINHEIRINHO DO VALE', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4494, 'PINHEIRO MACHADO', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4495, 'PIRAPO', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4496, 'PIRATINI', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4497, 'PLANALTO', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4498, 'POCO DAS ANTAS', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4499, 'PONTAO', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4500, 'PONTE PRETA', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4501, 'PORTAO', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4502, 'PORTO ALEGRE', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4503, 'PORTO LUCENA', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4504, 'PORTO VERA CRUZ', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4505, 'PORTO XAVIER', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4506, 'POUSO NOVO', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4507, 'PRESIDENTE LUCENA', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4508, 'PROGRESSO', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4509, 'PROTASIO ALVES', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4510, 'PUTINGA', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4511, 'QUARAI', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4512, 'QUEVEDOS', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4513, 'QUINZE DE NOVEMBRO', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4514, 'REDENTORA', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4515, 'RELVADO', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4516, 'RESTINGA SECA', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4517, 'RIO DOS ËNDIOS', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4518, 'RIO GRANDE', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4519, 'RIO PARDO', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4520, 'RIOZINHO', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4521, 'ROCA SALES', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4522, 'RODEIO BONITO', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4523, 'ROLANTE', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4524, 'RONDA ALTA', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4525, 'RONDINHA', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4526, 'ROQUE GONZALES', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4527, 'ROSARIO DO SUL', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4265, 'CAMPINA DAS MISSOES', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4266, 'CAMPINAS DO SUL', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4267, 'CAMPO BOM', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4268, 'CAMPO NOVO', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4269, 'CAMPOS BORGES', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4270, 'CANDELARIA', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4271, 'CANDIDO GODOI', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4272, 'CANDIOTA', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4273, 'CANELA', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4274, 'CANGUCU', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4275, 'CANOAS', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4276, 'CAPAO DA CANOA', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4277, 'CAPAO DO LEAO', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4278, 'CAPELA DE SANTANA', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4279, 'CAPITAO', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4280, 'CAPIVARI DO SUL', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4281, 'CARAA', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4282, 'CARAZINHO', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4283, 'CARLOS BARBOSA', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4284, 'CARLOS GOMES', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4285, 'CASCA', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4286, 'CASEIROS', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4287, 'CATUIPE', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4288, 'CAXIAS DO SUL', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4289, 'CENTENARIO', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4290, 'CERRITO', 21, 28);
commit;
prompt 1500 records committed...
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4291, 'CERRO BRANCO', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4292, 'CERRO GRANDE', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4293, 'CERRO GRANDE DO SUL', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4294, 'CERRO LARGO', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4295, 'CHAPADA', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4296, 'CHARQUEADAS', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4297, 'CHARRUA', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4298, 'CHIAPETA', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4299, 'CHUI', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4300, 'CHUVISCA', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4301, 'CIDREIRA', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4302, 'CIRIACO', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4303, 'COLINAS', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4304, 'COLORADO', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4305, 'CONDOR', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4306, 'CONSTANTINA', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4307, 'COQUEIROS DO SUL', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4308, 'CORONEL BICACO', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4309, 'COTIPORA', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4310, 'COXILHA', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4311, 'CRISSIUMAL', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4312, 'CRISTAL', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4313, 'CRISTAL DO SUL', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4314, 'CRUZ ALTA', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4315, 'CRUZALTENSE', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4316, 'CRUZEIRO DO SUL', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4317, 'DAVID CANABARRO', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4318, 'DEZESSEIS DE NOVEMBRO', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4319, 'DILERMANDO DE AGUIAR', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4320, 'DOIS IRMAOS', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4321, 'DOIS IRMAOS DAS MISSOES', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4322, 'DOIS LAJEADOS', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4323, 'DOM FELICIANO', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4324, 'DOM PEDRITO', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4325, 'DOM PEDRO DE ALCANTARA', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4326, 'DONA FRANCISCA', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4327, 'DOUTOR MAURICIO CARDOSO', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4328, 'DOUTOR RICARDO', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4329, 'ELDORADO DO SUL', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4330, 'ENCANTADO', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4331, 'ENCRUZILHADA DO SUL', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4332, 'ENGENHO VELHO', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4333, 'ENTRE RIOS DO SUL', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4334, 'ENTRE-IJUIS', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4335, 'EREBANGO', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4336, 'ERECHIM', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4337, 'ERNESTINA', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4338, 'ERVAL GRANDE', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4339, 'ERVAL SECO', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4340, 'ESMERALDA', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4341, 'ESPERANCA DO SUL', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4342, 'ESPUMOSO', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4343, 'ESTACAO', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4344, 'ESTANCIA VELHA', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4345, 'ESTEIO', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4346, 'ESTRELA', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4347, 'ESTRELA VELHA', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4348, 'EUGENIO DE CASTRO', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4349, 'FAGUNDES VARELA', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4350, 'FARROUPILHA', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4351, 'FAXINAL DO SOTURNO', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4352, 'FAXINALZINHO', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4353, 'FAZENDA VILANOVA', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4354, 'FELIZ', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4355, 'FLORES DA CUNHA', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4356, 'FLORIANO PEIXOTO', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4357, 'FONTOURA XAVIER', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4358, 'FORMIGUEIRO', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4359, 'FORTALEZA DOS VALOS', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4360, 'FREDERICO WESTPHALEN', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4361, 'GARIBALDI', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4362, 'GARRUCHOS', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4363, 'GAURAMA', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4364, 'GENERAL CAMARA', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4365, 'GENTIL', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4366, 'GETULIO VARGAS', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4367, 'GIRUA', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4368, 'GLORINHA', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4369, 'GRAMADO', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4370, 'GRAMADO DOS LOUREIROS', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4371, 'GRAMADO XAVIER', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4372, 'GRAVATAI', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4373, 'GUABIJU', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4374, 'GUAIBA', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4375, 'GUAPORE', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4376, 'GUARANI DAS MISSOES', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4377, 'HARMONIA', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4378, 'HERVAL', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4379, 'HERVEIRAS', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4380, 'HORIZONTINA', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4381, 'HUMAITA', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4382, 'IBARAMA', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4383, 'IBIACA', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4384, 'IBIRAIARAS', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4385, 'IBIRAPUITA', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4386, 'IBIRUBA', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4387, 'IGREJINHA', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4388, 'IJUI', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4389, 'ILOPOLIS', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4390, 'IMBE', 21, 28);
commit;
prompt 1600 records committed...
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4391, 'IMIGRANTE', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4392, 'INDEPENDENCIA', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4393, 'IPE', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4394, 'IPIRANGA DO SUL', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4395, 'IRAI', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4396, 'ITAARA', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4140, 'PENDENCIAS', 20, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4141, 'PILOES', 20, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4142, 'POCO BRANCO', 20, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4143, 'PORTALEGRE', 20, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4144, 'PORTO DO MANGUE', 20, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4145, 'PUREZA', 20, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4146, 'RAFAEL FERNANDES', 20, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4147, 'RAFAEL GODEIRO', 20, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4148, 'RIACHO DA CRUZ', 20, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4149, 'RIACHO DE SANTANA', 20, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4150, 'RIACHUELO', 20, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4151, 'RIO DO FOGO', 20, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4152, 'RODOLFO FERNANDES', 20, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4153, 'RUY BARBOSA', 20, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4154, 'SANTA CRUZ', 20, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4155, 'SANTA MARIA', 20, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4156, 'SANTANA DO MATOS', 20, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4157, 'SANTANA DO SERIDO', 20, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4158, 'SANTO ANTONIO', 20, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4159, 'SAO BENTO DO NORTE', 20, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4160, 'SAO BENTO DO TRAIRI', 20, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4161, 'SAO FERNANDO', 20, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4162, 'SAO FRANCISCO DO OESTE', 20, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4163, 'SAO GONCALO DO AMARANTE', 20, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4164, 'SAO JOAO DO SABUGI', 20, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4165, 'SAO JOSE DE MIPIBU', 20, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4166, 'SAO JOSE DO CAMPESTRE', 20, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4167, 'SAO JOSE DO SERIDO', 20, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4168, 'SAO MIGUEL', 20, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4169, 'SAO MIGUEL DE TOUROS', 20, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4170, 'SAO PAULO DO POTENGI', 20, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4171, 'SAO PEDRO', 20, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4172, 'SAO RAFAEL', 20, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4173, 'SAO TOME', 20, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4174, 'SAO VICENTE', 20, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4175, 'SENADOR ELOI DE SOUZA', 20, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4176, 'SENADOR GEORGINO AVELINO', 20, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4177, 'SERRA CAIADA', 20, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4178, 'SERRA DE SAO BENTO', 20, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4179, 'SERRA DO MEL', 20, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4180, 'SERRA NEGRA DO NORTE', 20, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4181, 'SERRINHA', 20, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4182, 'SERRINHA DOS PINTOS', 20, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4183, 'SEVERIANO MELO', 20, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4184, 'SITIO NOVO', 20, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4185, 'TABOLEIRO GRANDE', 20, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4186, 'TAIPU', 20, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4187, 'TANGARA', 20, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4188, 'TENENTE ANANIAS', 20, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4189, 'TENENTE LAURENTINO CRUZ', 20, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4190, 'TIBAU', 20, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4191, 'TIBAU DO SUL', 20, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4192, 'TIMBAUBA DOS BATISTAS', 20, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4193, 'TOUROS', 20, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4194, 'TRIUNFO POTIGUAR', 20, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4195, 'UMARIZAL', 20, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4196, 'UPANEMA', 20, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4197, 'VARZEA', 20, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4198, 'VENHA-VER', 20, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4199, 'VERA CRUZ', 20, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4200, 'VICOSA', 20, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4201, 'VILA FLOR', 20, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4202, 'AGUA SANTA', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4203, 'AGUDO', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4204, 'AJURICABA', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4205, 'ALECRIM', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4206, 'ALEGRETE', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4207, 'ALEGRIA', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4208, 'ALPESTRE', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4209, 'ALTO ALEGRE', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4210, 'ALTO FELIZ', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4211, 'ALVORADA', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4212, 'AMARAL FERRADOR', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4213, 'AMETISTA DO SUL', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4214, 'ANA RECH', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4215, 'ANDRE DA ROCHA', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4216, 'ANTA GORDA', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4217, 'ANTONIO PRADO', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4218, 'ARAMBARE', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4219, 'ARARICA', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4220, 'ARATIBA', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4221, 'ARROIO DO MEIO', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4222, 'ARROIO DO SAL', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4223, 'ARROIO DO TIGRE', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4224, 'ARROIO DOS RATOS', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4225, 'ARROIO GRANDE', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4226, 'ARVOREZINHA', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4227, 'AUGUSTO PESTANA', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4228, 'AUREA', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4229, 'BAGE', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4230, 'BALNEARIO PINHAL', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4231, 'BARAO', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4232, 'BARAO DE COTEGIPE', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4233, 'BARAO DO TRIUNFO', 21, 28);
commit;
prompt 1700 records committed...
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4234, 'BARRA DO GUARITA', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4235, 'BARRA DO QUARAI', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4236, 'BARRA DO RIBEIRO', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4237, 'BARRA DO RIO AZUL', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4238, 'BARRA FUNDA', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4239, 'BARRACAO', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4240, 'BARROS CASSAL', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4241, 'BENJAMIN CONSTANT DO SUL', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4242, 'BENTO GONCALVES', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4243, 'BOA VISTA DAS MISSOES', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4244, 'BOA VISTA DO BURICA', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4245, 'BOA VISTA DO SUL', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4246, 'BOM JESUS', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4247, 'BOM PRINCIPIO', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4248, 'BOM RETIRO DO SUL', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4249, 'BOQUEIRAO DO LEAO', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4250, 'BOSSOROCA', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4251, 'BRAGA', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4252, 'BROCHIER', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4253, 'BUTIA', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4254, 'CACAPAVA DO SUL', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4255, 'CACEQUI', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4256, 'CACHOEIRA DO SUL', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4257, 'CACHOEIRINHA', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4258, 'CACIQUE DOBLE', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4259, 'CAIBATE', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4260, 'CAICARA', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4261, 'CAMAQUA', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4262, 'CAMARGO', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4263, 'CAMBARA DO SUL', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4264, 'CAMPESTRE DA SERRA', 21, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4009, 'SAO JOAO DE MERITI', 19, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4010, 'SAO JOAO DO PARAISO', 19, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4011, 'SAO JOSE DE UBA', 19, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4012, 'SAO JOSE DO VALE DO RIO PRETO', 19, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4013, 'SAO PEDRO DA ALDEIA', 19, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4014, 'SAO SEBASTIAO DO ALTO', 19, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4015, 'SAO VICENTE DE PAULA', 19, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4016, 'SAPUCAIA', 19, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4017, 'SAQUAREMA', 19, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4018, 'SATURNINO BRAGA', 19, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4019, 'SEROPEDICA', 19, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4020, 'SERRINHA', 19, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4021, 'SILVA JARDIM', 19, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4022, 'SUMIDOURO', 19, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4023, 'TANGUA', 19, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4024, 'TERESOPOLIS', 19, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4025, 'TRAJANO DE MORAIS', 19, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4026, 'TRAVESSAO', 19, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4027, 'TRES RIOS', 19, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4028, 'TRIUNFO', 19, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4029, 'UNAMAR', 19, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4030, 'VALAO DO BARRO', 19, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4031, 'VALENCA', 19, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4032, 'VARRE-SAI', 19, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4033, 'VASSOURAS', 19, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4034, 'VISCONDE DE IMBE', 19, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4035, 'VOLTA REDONDA', 19, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4036, 'ACARI', 20, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4037, 'ACU', 20, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4038, 'AFONSO BEZERRA', 20, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4039, 'AGUA NOVA', 20, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4040, 'ALEXANDRIA', 20, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4041, 'ALMINO AFONSO', 20, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4042, 'ALTO DO RODRIGUES', 20, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4043, 'ANGICOS', 20, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4044, 'ANTONIO MARTINS', 20, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4045, 'APODI', 20, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4046, 'AREIA BRANCA', 20, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4047, 'ARES', 20, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4048, 'BAIA FORMOSA', 20, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4049, 'BARAUNA', 20, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4050, 'BARCELONA', 20, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4051, 'BENTO FERNANDES', 20, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4052, 'BOA SAUDE', 20, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4053, 'BODO', 20, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4054, 'BOM JESUS', 20, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4055, 'BREJINHO', 20, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4056, 'CAICARA DO NORTE', 20, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4057, 'CAICARA DO RIO DO VENTO', 20, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4058, 'CAICO', 20, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4059, 'CAMPO GRANDE', 20, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4060, 'CAMPO REDONDO', 20, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4061, 'CANGUARETAMA', 20, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4062, 'CARAUBAS', 20, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4063, 'CARNAUBA DOS DANTAS', 20, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4064, 'CARNAUBAIS', 20, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4065, 'CEARA-MIRIM', 20, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4066, 'CERRO CORA', 20, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4067, 'CORONEL EZEQUIEL', 20, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4068, 'CORONEL JOAO PESSOA', 20, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4069, 'CRUZETA', 20, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4070, 'CURRAIS NOVOS', 20, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4071, 'DOUTOR SEVERIANO', 20, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4072, 'ENCANTO', 20, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4073, 'EQUADOR', 20, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4074, 'ESPIRITO SANTO', 20, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4075, 'EXTREMOZ', 20, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4076, 'FELIPE GUERRA', 20, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4077, 'FERNANDO PEDROZA', 20, 28);
commit;
prompt 1800 records committed...
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4078, 'FLORANIA', 20, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4079, 'FRANCISCO DANTAS', 20, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4080, 'FRUTUOSO GOMES', 20, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4081, 'GALINHOS', 20, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4082, 'GOIANINHA', 20, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4083, 'GOVERNADOR DIX-SEPT ROSADO', 20, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4084, 'GROSSOS', 20, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4085, 'GUAMARE', 20, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4086, 'IELMO MARINHO', 20, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4087, 'IPANGUACU', 20, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4088, 'IPUEIRA', 20, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4089, 'ITAJA', 20, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4090, 'ITAU', 20, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4091, 'JACANA', 20, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4092, 'JANDAIRA', 20, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4093, 'JANDUIS', 20, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4094, 'JAPI', 20, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4095, 'JARDIM DE ANGICOS', 20, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4096, 'JARDIM DE PIRANHAS', 20, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4097, 'JARDIM DO SERIDO', 20, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4098, 'JOAO CAMARA', 20, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4099, 'JOAO DIAS', 20, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4100, 'JOSE DA PENHA', 20, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4101, 'JUCURUTU', 20, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4102, 'LAGOA D´ANTA', 20, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4103, 'LAGOA DE PEDRAS', 20, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4104, 'LAGOA DE VELHOS', 20, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4105, 'LAGOA NOVA', 20, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4106, 'LAGOA SALGADA', 20, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4107, 'LAJES', 20, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4108, 'LAJES PINTADAS', 20, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4109, 'LUCRECIA', 20, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4110, 'LUIS GOMES', 20, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4111, 'MACAIBA', 20, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4112, 'MACAU', 20, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4113, 'MAJOR SALES', 20, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4114, 'MARCELINO VIEIRA', 20, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4115, 'MARTINS', 20, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4116, 'MAXARANGUAPE', 20, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4117, 'MESSIAS TARGINO', 20, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4118, 'MONTANHAS', 20, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4119, 'MONTE ALEGRE', 20, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4120, 'MONTE DAS GAMELEIRAS', 20, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4121, 'MOSSORO', 20, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4122, 'NATAL', 20, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4123, 'NISIA FLORESTA', 20, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4124, 'NOVA CRUZ', 20, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4125, 'OLHO-D´AGUA DO BORGES', 20, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4126, 'OURO BRANCO', 20, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4127, 'PARANA', 20, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4128, 'PARAU', 20, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4129, 'PARAZINHO', 20, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4130, 'PARELHAS', 20, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4131, 'PARNAMIRIM', 20, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4132, 'PASSA E FICA', 20, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4133, 'PASSAGEM', 20, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4134, 'PATU', 20, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4135, 'PAU DOS FERROS', 20, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4136, 'PEDRA GRANDE', 20, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4137, 'PEDRA PRETA', 20, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4138, 'PEDRO AVELINO', 20, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4139, 'PEDRO VELHO', 20, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3878, 'SIGEFREDO PACHECO', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3879, 'SIMOES', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3880, 'SIMPLICIO MENDES', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3881, 'SITIO', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3882, 'SITIO DAS ONCAS', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3883, 'SITIOZINHO', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3884, 'SOCORRO DO PIAUI', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3885, 'SUSSUAPARA', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3886, 'TAMBORIL DO PIAUI', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3887, 'TANQUE DO PIAUI', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3888, 'TANQUINHO', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3889, 'TERESINA', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3890, 'TORROES', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3891, 'TUCUNS', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3892, 'UNIAO', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3893, 'URUCUI', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3894, 'VALENCA DO PIAUI', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3895, 'VALPARAISO', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3896, 'VARZEA BRANCA', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3897, 'VARZEA GRANDE', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3898, 'VARZEA QUEIMADA', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3899, 'VERA MENDES', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3900, 'VEREDAO', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3901, 'VEREDAS', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3902, 'VILA NOVA DO PIAUI', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3903, 'WALL FERRAZ', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3904, 'AMPARO', 19, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3905, 'ANGRA DOS REIS', 19, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3906, 'APERIBE', 19, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3907, 'ARARUAMA', 19, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3908, 'ARE', 19, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3909, 'AREAL', 19, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3910, 'ARMACAO DE BUZIOS', 19, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3911, 'ARRAIAL DO CABO', 19, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3912, 'BACAXA', 19, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3913, 'BAIRRO CHALE', 19, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3914, 'BANQUETE', 19, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3915, 'BARRA DO PIRAI', 19, 28);
commit;
prompt 1900 records committed...
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3916, 'BARRA MANSA', 19, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3917, 'BELFORD ROXO', 19, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3918, 'BOA SORTE', 19, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3919, 'BOAVENTURA', 19, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3920, 'BOM JARDIM', 19, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3921, 'BOM JESUS DO ITABAPOANA', 19, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3922, 'BOM JESUS DO QUERENDO', 19, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3923, 'CABO FRIO', 19, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3924, 'CACHOEIRAS DE MACACU', 19, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3925, 'CAMBUCI', 19, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3926, 'CAMPO DO COELHO', 19, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3927, 'CAMPOS DOS GOYTACAZES', 19, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3928, 'CANTAGALO', 19, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3929, 'CARABUCU', 19, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3930, 'CARAPEBUS', 19, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3931, 'CARDOSO MOREIRA', 19, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3932, 'CARMO', 19, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3933, 'CASIMIRO DE ABREU', 19, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3934, 'COMENDADOR LEVY GASPARIAN', 19, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3935, 'COMENDADOR VENANCIO', 19, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3936, 'CONCEICAO DE MACABU', 19, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3937, 'CONQUISTA', 19, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3938, 'CONSELHEIRO PAULINO', 19, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3939, 'CORDEIRO', 19, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3940, 'DUAS BARRAS', 19, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3941, 'DUQUE DE CAXIAS', 19, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3942, 'ENGENHEIRO PAULO DE FRONTIN', 19, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3943, 'FAROL DE SAO TOME', 19, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3944, 'GUAPIMIRIM', 19, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3945, 'IGUABA GRANDE', 19, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3946, 'ITABORAI', 19, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3947, 'ITAGUAI', 19, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3948, 'ITALVA', 19, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3949, 'ITAOCARA', 19, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3950, 'ITAPERUNA', 19, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3951, 'ITATIAIA', 19, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3952, 'JACONE', 19, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3953, 'JAGUAREMBE', 19, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3954, 'JAPERI', 19, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3955, 'LAJE DO MURIAE', 19, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3956, 'LARANJAIS', 19, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3957, 'MACAE', 19, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3958, 'MACUCO', 19, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3959, 'MAGE', 19, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3960, 'MANGARATIBA', 19, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3961, 'MARICA', 19, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3962, 'MENDES', 19, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3963, 'MIGUEL PEREIRA', 19, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3964, 'MIRACEMA', 19, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3965, 'MURI', 19, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3966, 'NATIVIDADE', 19, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3967, 'NILOPOLIS', 19, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3968, 'NITEROI', 19, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3969, 'NOVA FRIBURGO', 19, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3970, 'NOVA IGUACU', 19, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3971, 'OURANIA', 19, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3972, 'PARACAMBI', 19, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3973, 'PARAIBA DO SUL', 19, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3974, 'PARAISO DO TOBIAS', 19, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3975, 'PARATI', 19, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3976, 'PATY DO ALFERES', 19, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3977, 'PETROPOLIS', 19, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3978, 'PINHEIRAL', 19, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3979, 'PIRAI', 19, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3980, 'PORCIUNCULA', 19, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3981, 'PORTELA', 19, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3982, 'PRAIA SECA', 19, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3983, 'PUREZA', 19, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3984, 'PURILANDIA', 19, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3985, 'QUATIS', 19, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3986, 'QUEIMADOS', 19, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3987, 'QUISSAMA', 19, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3988, 'RAPOSO', 19, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3989, 'RESENDE', 19, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3990, 'RETIRO DO MURIAE', 19, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3991, 'RIO BONITO', 19, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3992, 'RIO CLARO', 19, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3993, 'RIO DAS FLORES', 19, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3994, 'RIO DAS OSTRAS', 19, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3995, 'RIO DE JANEIRO', 19, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3996, 'RIOGRANDINA', 19, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3997, 'ROCHA LEAO', 19, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3998, 'ROSAL', 19, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3999, 'SANTA CLARA', 19, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4000, 'SANTA MARIA MADALENA', 19, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4001, 'SANTA RITA DA FLORESTA', 19, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4002, 'SANTO ANTONIO DE PADUA', 19, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4003, 'SANTO EDUARDO', 19, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4004, 'SAO FIDELIS', 19, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4005, 'SAO FRANCISCO DE ITABAPOANA', 19, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4006, 'SAO FRANCISCO DE PAULA', 19, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4007, 'SAO GONCALO', 19, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4008, 'SAO JOAO DA BARRA', 19, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3762, 'JUREMA', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3763, 'LAGOA ALEGRE', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3764, 'LAGOA DE DENTRO', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3765, 'LAGOA DE SAO FRANCISCO', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3766, 'LAGOA DO BARRO DO PIAUI', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3767, 'LAGOA DO PIAUI', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3768, 'LAGOA DO SITIO', 18, 28);
commit;
prompt 2000 records committed...
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3769, 'LAGOINHA DO PIAUI', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3770, 'LANDRI SALES', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3771, 'LUIS CORREIA', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3772, 'LUZILANDIA', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3773, 'MADEIRO', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3774, 'MANDACARU', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3775, 'MANOEL EMIDIO', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3776, 'MARCOLANDIA', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3777, 'MARCOS PARENTE', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3778, 'MASSAPE DO PIAUI', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3779, 'MATIAS OLIMPIO', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3780, 'MIGUEL ALVES', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3781, 'MIGUEL LEAO', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3782, 'MILTON BRANDAO', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3783, 'MIROLANDIA', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3784, 'MONSENHOR GIL', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3785, 'MONSENHOR HIPOLITO', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3786, 'MONTE ALEGRE DO PIAUI', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3787, 'MORRO CABECA NO TEMPO', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3788, 'MORRO DO CHAPEU DO PIAUI', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3789, 'MORRO DOS CAVALOS', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3790, 'MURICI DOS PORTELAS', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3791, 'NAZARE DO PIAUI', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3792, 'NOSSA SENHORA DE NAZARE', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3793, 'NOSSA SENHORA DOS REMEDIOS', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3794, 'NOVA SANTA RITA', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3795, 'NOVA SANTA ROSA', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3796, 'NOVO ORIENTE DO PIAUI', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3797, 'NOVO PAQUETA', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3798, 'NOVO SANTO ANTONIO', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3799, 'OEIRAS', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3800, 'OITIS', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3801, 'OLHO D´AGUA DO PIAUI', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3802, 'PADRE MARCOS', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3803, 'PAES LANDIM', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3804, 'PAJEU', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3805, 'PAJEU DO PIAUI', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3806, 'PALMEIRA DO PIAUI', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3807, 'PALMEIRAIS', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3808, 'PAQUETA', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3809, 'PARNAGUA', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3810, 'PARNAIBA', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3811, 'PASSAGEM FRANCA DO PIAUI', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3812, 'PATOS DO PIAUI', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3813, 'PAU FERRO', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3814, 'PAULISTANA', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3815, 'PAVUSSU', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3816, 'PEDRO II', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3817, 'PEDRO LAURENTINO', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3818, 'PICOS', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3819, 'PIMENTEIRAS', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3820, 'PIO IX', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3821, 'PIRACURUCA', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3822, 'PIRIPIRI', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3823, 'PITOMBAS', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3824, 'PORTO', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3825, 'PORTO ALEGRE DO PIAUI', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3826, 'PRATA DO PIAUI', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3827, 'QUEIMADA NOVA', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3828, 'REDENCAO DO GURGUEIA', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3829, 'REGENERACAO', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3830, 'RIACHAO', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3831, 'RIACHO DO PADRE', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3832, 'RIACHO FRIO', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3833, 'RIBEIRA DO PIAUI', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3834, 'RIBEIRO GONCALVES', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3835, 'RIO GRANDE DO PIAUI', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3836, 'ROQUE', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3837, 'SALINAS', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3838, 'SANTA CRUZ DO PIAUI', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3839, 'SANTA CRUZ DOS MILAGRES', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3840, 'SANTA FILOMENA', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3841, 'SANTA LUZ', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3842, 'SANTA ROSA DO PIAUI', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3843, 'SANTANA DO PIAUI', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3844, 'SANTO ANTONIO', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3845, 'SANTO ANTONIO DE LISBOA', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3846, 'SANTO ANTONIO DOS MILAGRES', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3847, 'SANTO INACIO DO PIAUI', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3848, 'SAO BENTO', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3849, 'SAO BRAZ DO PIAUI', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3850, 'SAO DIMAS', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3851, 'SAO DOMINGOS', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3852, 'SAO FELIX DO PIAUI', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3853, 'SAO FRANCISCO DE ASSIS DO PIAUI', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3854, 'SAO FRANCISCO DO PIAUI', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3855, 'SAO GONCALO DO GURGUEIA', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3856, 'SAO GONCALO DO PIAUI', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3857, 'SAO JOAO DA CANABRAVA', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3858, 'SAO JOAO DA FRONTEIRA', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3859, 'SAO JOAO DA SERRA', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3860, 'SAO JOAO DA VARJOTA', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3861, 'SAO JOAO DO ARRAIAL', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3862, 'SAO JOAO DO PIAUI', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3863, 'SAO JOSE DO DIVINO', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3864, 'SAO JOSE DO PEIXE', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3865, 'SAO JOSE DO PIAUI', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3866, 'SAO JULIAO', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3867, 'SAO LOURENCO DO PIAUI', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3868, 'SAO LUIS DO PIAUI', 18, 28);
commit;
prompt 2100 records committed...
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3869, 'SAO MIGUEL DA BAIXA GRANDE', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3870, 'SAO MIGUEL DO TAPUIO', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3871, 'SAO PEDRO DO PIAUI', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3872, 'SAO RAIMUNDO NONATO', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3873, 'SEBASTIAO LEAL', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3874, 'SERRA DO MARACUJA', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3875, 'SERRA VELHA', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3876, 'SERRA VERMELHA', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3877, 'SERRINHA', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3641, 'ASSENTAMENTO UNIAO', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3642, 'ASSUNCAO DO PIAUI', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3643, 'ATALHO', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3644, 'AVELINO LOPES', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3645, 'BAIXA GRANDE DO RIBEIRO', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3646, 'BAIXIO', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3647, 'BARRA D ALCANTARA', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3648, 'BARRA D´ALCANTARA', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3649, 'BARRA DO LANCE', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3650, 'BARRAS', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3651, 'BARREIRAS DO PIAUI', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3652, 'BARRIGUDA', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3653, 'BARRO', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3654, 'BARRO DURO', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3655, 'BATALHA', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3656, 'BELA VISTA DO PIAUI', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3657, 'BELEM DO PIAUI', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3658, 'BENEDITINOS', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3659, 'BERTOLINIA', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3660, 'BETANIA DO PIAUI', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3661, 'BOA HORA', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3662, 'BOA VIAGEM', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3663, 'BOCAINA', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3664, 'BOM JESUS', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3665, 'BOM PRINCIPIO DO PIAUI', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3666, 'BONFIM DO PIAUI', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3667, 'BOQUEIRAO DO PIAUI', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3668, 'BRASILEIRA', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3669, 'BREJO DA FORTALEZA', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3670, 'BREJO DO PIAUI', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3671, 'BURITI DOS LOPES', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3672, 'BURITI DOS MONTES', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3673, 'BURITI GRANDE', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3674, 'CABECEIRAS DO PIAUI', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3675, 'CAJAZEIRAS DO PIAUI', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3676, 'CAJUEIRO', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3677, 'CAJUEIRO DA PRAIA', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3678, 'CALDEIRAO GRANDE DO PIAUI', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3679, 'CALDEIRAOZINHO', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3680, 'CAMPINAS DO PIAUI', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3681, 'CAMPO ALEGRE DO FIDALGO', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3682, 'CAMPO GRANDE DO PIAUI', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3683, 'CAMPO LARGO DO PIAUI', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3684, 'CAMPO MAIOR', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3685, 'CANAVIEIRA', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3686, 'CANTO DO BURITI', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3687, 'CAPITAO DE CAMPOS', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3688, 'CAPITAO GERVASIO DE OLIVEIRA', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3689, 'CAPITAO GERVASIO OLIVEIRA', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3690, 'CARACOL', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3691, 'CARAUBAS DO PIAUI', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3692, 'CARIDADE DO PIAUI', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3693, 'CASTELO DO PIAUI', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3694, 'CAXINGO', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3695, 'COCAL', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3696, 'COCAL DE TELHA', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3697, 'COCAL DOS ALVES', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3698, 'COIVARAS', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3699, 'COLONIA DO GURGUEIA', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3700, 'COLONIA DO PIAUI', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3701, 'CONCEICAO', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3702, 'CONCEICAO DO CANINDE', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3703, 'COROATA', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3704, 'CORONEL JOSE DIAS', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3705, 'CORRENTE', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3706, 'COVA DONGA', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3707, 'CRISTALANDIA DO PIAUI', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3708, 'CRISTINO CASTRO', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3709, 'CRISTOVINHO', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3710, 'CURIMATA', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3711, 'CURRAIS', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3712, 'CURRAL DE PEDRA', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3713, 'CURRAL NOVO DO PIAUI', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3714, 'CURRALINHO', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3715, 'CURRALINHOS', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3716, 'DEMERVAL LOBAO', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3717, 'DIRCEU ARCOVERDE', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3718, 'DOM EXPEDITO LOPES', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3719, 'DOM INOCENCIO', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3720, 'DOMINGOS MOURAO', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3721, 'ELESBAO VELOSO', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3722, 'ELISEU MARTINS', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3723, 'ESPERANTINA', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3724, 'FARTURA DO PIAUI', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3725, 'FATIMA DO PIAUI', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3726, 'FLORES DO PIAUI', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3727, 'FLORESTA DO PIAUI', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3728, 'FLORIANO', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3729, 'FRANCINOPOLIS', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3730, 'FRANCISCO AYRES', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3731, 'FRANCISCO MACEDO', 18, 28);
commit;
prompt 2200 records committed...
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3732, 'FRANCISCO SANTOS', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3733, 'FRONTEIRAS', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3734, 'FURTA-LHE A VOLTA', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3735, 'GATURIANO', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3736, 'GEMINIANO', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3737, 'GILBUES', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3738, 'GUADALUPE', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3739, 'GUARIBAS', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3740, 'HUGO NAPOLEAO', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3741, 'ILHA GRANDE', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3742, 'INHUMA', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3743, 'IPIRANGA DO PIAUI', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3744, 'ISAIAS COELHO', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3745, 'ISIDORIA', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3746, 'ITAINOPOLIS', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3747, 'ITAIZINHO', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3748, 'ITAUEIRA', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3749, 'JACOBINA DO PIAUI', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3750, 'JAICOS', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3751, 'JAPECANGA', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3752, 'JARDIM DO MULATO', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3753, 'JATOBA DO PIAUI', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3754, 'JERUMENHA', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3755, 'JOAO COSTA', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3756, 'JOAQUIM PIRES', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3757, 'JOCA MARQUES', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3758, 'JOSE DE FREITAS', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3759, 'JUAZEIRO DO PIAUI', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3760, 'JUAZEIRO DO SEGUNDO', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3761, 'JULIO BORGES', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3517, 'PROJETO SENADOR NILO COELHO NO 3', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3518, 'PROJETO SENADOR NILO COELHO NO 4', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3519, 'PROJETO SENADOR NILO COELHO NO 5', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3520, 'PROJETO SENADOR NILO COELHO NO 6', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3521, 'PROJETO SENADOR NILO COELHO NO 7', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3522, 'PROJETO SENADOR NILO COELHO NO 8', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3523, 'PROJETO SENADOR NILO COELHO NO 9', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3524, 'QUATI', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3525, 'QUIPAPA', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3526, 'QUITIMBU', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3527, 'QUIXABA', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3528, 'RAINHA ISABEL', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3529, 'RAJADA', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3530, 'RANCHARIA', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3531, 'RECIFE', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3532, 'REMEDIO', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3533, 'RIACHO DAS ALMAS', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3534, 'RIACHO DO GADO', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3535, 'RIACHO DO MEIO', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3536, 'RIACHO PEQUENO', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3537, 'RIBEIRAO', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3538, 'RIO DA BARRA', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3539, 'RIO FORMOSO', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3540, 'SAIRE', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3541, 'SALGADINHO', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3542, 'SALGUEIRO', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3543, 'SALOA', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3544, 'SALOBRO', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3545, 'SAMAMBAIA', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3546, 'SANHARO', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3547, 'SANTA CRUZ', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3548, 'SANTA CRUZ DA BAIXA VERDE', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3549, 'SANTA CRUZ DO CAPIBARIBE', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3550, 'SANTA FILOMENA', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3551, 'SANTA LUZIA', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3552, 'SANTA MARIA DA BOA VISTA', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3553, 'SANTA MARIA DO CAMBUCA', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3554, 'SANTA RITA', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3555, 'SANTA ROSA', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3556, 'SANTA TEREZINHA', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3557, 'SANTO ANTONIO', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3558, 'SANTO ANTONIO DAS QUEIMADAS', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3559, 'SAO BENEDITO DO SUL', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3560, 'SAO BENTO DO UNA', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3561, 'SAO CAETANO DO NAVIO', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3562, 'SAO CAITANO', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3563, 'SAO FRANCISCO', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3564, 'SAO JOAO', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3565, 'SAO JOAO DOS LEITES', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3566, 'SAO JOAQUIM DO MONTE', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3567, 'SAO JOSE DA COROA GRANDE', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3568, 'SAO JOSE DO BELMONTE', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3569, 'SAO JOSE DO EGITO', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3570, 'SAO LOURENCO DA MATA', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3571, 'SAO PEDRO', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3572, 'SAO PEDRO DO CORDEIRO', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3573, 'SAO VICENTE', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3574, 'SAO VICENTE FERRER', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3575, 'SERRA BRANCA', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3576, 'SERRA TALHADA', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3577, 'SERRINHA DA PRATA', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3578, 'SERRITA', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3579, 'SERROLANDIA', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3580, 'SERTANIA', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3581, 'SIPAUBA', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3582, 'SIRINHAEM', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3583, 'SITIO DOS NUNES', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3584, 'SOBRADINHO', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3585, 'SOCORRO', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3586, 'SOLIDAO', 17, 28);
commit;
prompt 2300 records committed...
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3587, 'SURUBIM', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3588, 'TABIRA', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3589, 'TABOCAS', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3590, 'TACAIMBO', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3591, 'TACARATU', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3592, 'TAMANDARE', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3593, 'TANQUINHO', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3594, 'TAQUARITINGA DO NORTE', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3595, 'TAUAPIRANGA', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3596, 'TEREZINHA', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3597, 'TERRA NOVA', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3598, 'TIMBAUBA', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3599, 'TIMORANTE', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3600, 'TORITAMA', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3601, 'TRACUNHAEM', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3602, 'TRINDADE', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3603, 'TRIUNFO', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3604, 'TUPANACI', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3605, 'TUPANATINGA', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3606, 'TUPARETAMA', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3607, 'TUPI', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3608, 'UMAS', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3609, 'VARZEA DO MEIO', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3610, 'VARZINHA', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3611, 'VENTUROSA', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3612, 'VERDEJANTE', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3613, 'VERMELHOS', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3614, 'VERTENTE DO LERIO', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3615, 'VERTENTES', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3616, 'VICENCIA', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3617, 'VIRACAO', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3618, 'VITORIA DE SANTO ANTAO', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3619, 'VOLTA', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3620, 'VOLTA DO MOXOTO', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3621, 'XEXEU', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3622, 'ZE GOMES', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3623, 'ACAUA', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3624, 'AGRICOLANDIA', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3625, 'AGUA BRANCA', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3626, 'ALAGOINHA DO PIAUI', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3627, 'ALEGRETE DO PIAUI', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3628, 'ALIANCA DO GURGUEIA', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3629, 'ALTAMIRA', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3630, 'ALTO LONGA', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3631, 'ALTOS', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3632, 'ALVORADA DO GURGUEIA', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3633, 'AMARANTE', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3634, 'ANGICAL DO PIAUI', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3635, 'ANISIO DE ABREU', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3636, 'ANTONIO ALMEIDA', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3637, 'APRAZIVEL', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3638, 'AROAZES', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3639, 'AROEIRO DO ITAI', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3640, 'ARRAIAL', 18, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3383, 'GARCIA', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3384, 'GERGELIM', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3385, 'GLORIA DO GOITA', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3386, 'GOIANA', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3387, 'GRANITO', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3388, 'GRAVATA', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3389, 'GRAVATA DOS GOMES', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3390, 'GROSSOS', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3391, 'GUANUMBI', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3392, 'GUARANI', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3393, 'HORIZONTE ALEGRE', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3394, 'IATECA', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3395, 'IATI', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3396, 'IBIMIRIM', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3397, 'IBIRAJUBA', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3398, 'IBITIRANGA', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3399, 'IBO', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3400, 'IGAPO', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3401, 'IGARASSU', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3402, 'IGUARACI', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3403, 'INAJA', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3404, 'INGA', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3405, 'INGAZEIRA', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3406, 'INHAUM', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3407, 'IPOJUCA', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3408, 'IPUBI', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3409, 'ISACOLANDIA', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3410, 'ITA', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3411, 'ITACURUBA', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3412, 'ITAIBA', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3413, 'ITAMARACA', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3414, 'ITAMBE', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3415, 'ITAPARICA', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3416, 'ITAPETIM', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3417, 'ITAPISSUMA', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3418, 'ITAQUITINGA', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3419, 'JABITACA', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3420, 'JABOATAO DOS GUARARAPES', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3421, 'JACARE', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3422, 'JAQUEIRA', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3423, 'JATAUBA', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3424, 'JATIUCA', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3425, 'JATOBA', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3426, 'JERICO', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3427, 'JERITACO', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3428, 'JIRAU', 17, 28);
commit;
prompt 2400 records committed...
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3429, 'JOAO ALFREDO', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3430, 'JOAQUIM NABUCO', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3431, 'JUCATI', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3432, 'JUPI', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3433, 'JUREMA', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3434, 'JUTAI', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3435, 'LAGOA', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3436, 'LAGOA DA CRUZ', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3437, 'LAGOA DE DENTRO', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3438, 'LAGOA DE FORA', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3439, 'LAGOA DE SAO JOSE', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3440, 'LAGOA DO BARRO', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3441, 'LAGOA DO CARRO', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3442, 'LAGOA DO CARUA', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3443, 'LAGOA DO ITAENGA', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3444, 'LAGOA DO OURO', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3445, 'LAGOA DOS GATOS', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3446, 'LAGOA GRANDE', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3447, 'LAGOINHA', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3448, 'LAJEDO', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3449, 'LIMOEIRO', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3450, 'LIVRAMENTO', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3451, 'LOGRADOURO DOS LEOES', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3452, 'LUANDA', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3453, 'MACAPARANA', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3454, 'MACHADOS', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3455, 'MALHADA REAL', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3456, 'MALHADAREIA', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3457, 'MANARI', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3458, 'MANGUEIRA', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3459, 'MARAIAL', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3460, 'MARAVILHA', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3461, 'MARCOLANDIA', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3462, 'MATA VERDE', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3463, 'MATIAS', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3464, 'MIMOSO', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3465, 'MIRANDIBA', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3466, 'MORAIS', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3467, 'MOREILANDIA', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3468, 'MORENO', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3469, 'MOXOTO', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3470, 'MULUNGU', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3471, 'MUTUCA', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3472, 'NASCENTE', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3473, 'NAZARE DA MATA', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3474, 'NEGRAS', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3475, 'NEVES', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3476, 'NOVA DESCOBERTA', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3477, 'NOVO PERNAMBUCO', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3478, 'OLHO D AGUA DE DENTRO', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3479, 'OLHO D AGUA DO PADRE', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3480, 'OLHO D AGUA DOS GOIS', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3481, 'OLHO D AGUA DOS POMBOS', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3482, 'OLINDA', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3483, 'OROBO', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3484, 'OROCO', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3485, 'OURICURI', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3486, 'PAJEU', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3487, 'PALMARES', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3488, 'PALMEIRINA', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3489, 'PANELAS', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3490, 'PAO DE ACUCAR DE POCAO', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3491, 'PAPAGAIO', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3492, 'PAQUEVIRA', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3493, 'PARANATAMA', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3494, 'PARNAMIRIM', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3495, 'PASSIRA', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3496, 'PAU AMARELO', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3497, 'PAUDALHO', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3498, 'PAULISTA', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3499, 'PEDRA', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3500, 'PERPETUO SOCORRO', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3501, 'PESQUEIRA', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3502, 'PETROLANDIA', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3503, 'PETROLINA', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3504, 'PIEDADE', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3505, 'POCAO', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3506, 'POCAO DE AFRANIO', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3507, 'POCO COMPRIDO', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3508, 'POCO DA CRUZ', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3509, 'POCO DO BOI', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3510, 'POMBOS', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3511, 'PRIMAVERA', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3512, 'PROJETO BRIGIDA', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3513, 'PROJETO SENADOR NILO COELHO C3', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3514, 'PROJETO SENADOR NILO COELHO NO 1', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3515, 'PROJETO SENADOR NILO COELHO NO 10', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3516, 'PROJETO SENADOR NILO COELHO NO 11', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3382, 'GARANHUNS', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3247, 'TRES BARRAS DO PARANA', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3248, 'TUNAS DO PARANA', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3249, 'TUNEIRAS DO OESTE', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3250, 'TUPASSI', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3251, 'TURVO', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3252, 'UBIRATA', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3253, 'UMUARAMA', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3254, 'UNIAO DA VITORIA', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3255, 'UNIFLOR', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3256, 'URAI', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3257, 'VENTANIA', 16, 28);
commit;
prompt 2500 records committed...
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3258, 'VERA CRUZ DO OESTE', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3259, 'VERE', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3260, 'VILA ALTA', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3261, 'VILA NOVA', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3262, 'VIRMOND', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3263, 'VITORINO', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3264, 'WENCESLAU BRAZ', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3265, 'XAMBRE', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3266, 'ABREU E LIMA', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3267, 'AFOGADOS DA INGAZEIRA', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3268, 'AFRANIO', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3269, 'AGRESTINA', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3270, 'AGROVILA 4', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3271, 'AGROVILA 5', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3272, 'AGROVILA MASSANGANO', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3273, 'AGUA PRETA', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3274, 'AGUAS BELAS', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3275, 'ALAGOINHA', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3276, 'ALBUQUERQUE NE', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3277, 'ALEGRE', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3278, 'ALEXANDRA', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3279, 'ALGODOES', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3280, 'ALIANCA', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3281, 'ALTINHO', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3282, 'ALTO DO SAO FRANCISCO', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3283, 'AMARAJI', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3284, 'ANGELIM', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3285, 'ARACOIABA', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3286, 'ARARIPINA', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3287, 'ARCOVERDE', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3288, 'BARRA BONITA', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3289, 'BARRA DE GUABIRABA', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3290, 'BARRA DE SAO PEDRO', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3291, 'BARRA DO BREJO', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3292, 'BARREIROS', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3293, 'BARRO', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3294, 'BELA VISTA', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3295, 'BELEM DE MARIA', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3296, 'BELEM DE SAO FRANCISCO', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3297, 'BELO JARDIM', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3298, 'BERNARDO VIEIRA', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3299, 'BETANIA', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3300, 'BEZERROS', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3301, 'BOA VISTA', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3302, 'BODOCO', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3303, 'BOM CONSELHO', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3304, 'BOM JARDIM', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3305, 'BOM NOME', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3306, 'BONITA', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3307, 'BONITO', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3308, 'BORBOREMA', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3309, 'BREJAO', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3310, 'BREJINHO', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3311, 'BREJINHO DE TABIRA', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3312, 'BREJO DA MADRE DE DEUS', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3313, 'BREJO VELHO', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3314, 'BUENOS AIRES', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3315, 'BUIQUE', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3316, 'CAATINGA GRANDE', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3317, 'CABO DE SANTO AGOSTINHO', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3318, 'CABO DO CAMPO', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3319, 'CABROBO', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3320, 'CACHICHOLA', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3321, 'CACHOEIRA DO ROBERTO', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3322, 'CACHOEIRINHA', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3323, 'CAETES', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3324, 'CAICARINHA DA PENHA', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3325, 'CAJUEIRO', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3326, 'CALCADO', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3327, 'CALDEIROES DOS GUEDES', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3328, 'CALUMBI', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3329, 'CAMARAGIBE', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3330, 'CAMOCIM DE SAO FELIX', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3331, 'CAMPO ALEGRE', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3332, 'CAMPO GRANDE', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3333, 'CAMPO SANTO', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3334, 'CAMPO SUJO', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3335, 'CAMUTANGA', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3336, 'CANAAN', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3337, 'CANHOTINHO', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3338, 'CAPOEIRAS', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3339, 'CARAIBAS', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3340, 'CARAIBEIRAS', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3341, 'CARIRIMIRIM', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3342, 'CARMO', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3343, 'CARNAIBA', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3344, 'CARNAUBEIRA DA PENHA', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3345, 'CARNEIRO', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3346, 'CAROALINA', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3347, 'CARPINA', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3348, 'CARQUEJA', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3349, 'CARUARU', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3350, 'CASINHAS', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3351, 'CATENDE', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3352, 'CATIMBAU', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3353, 'CEDRO', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3354, 'CERCADINHO', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3355, 'CHA DE ALEGRIA', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3356, 'CHA GRANDE', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3357, 'CIMBRES', 17, 28);
commit;
prompt 2600 records committed...
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3358, 'CLARANA', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3359, 'CONCEICAO DAS CRIOULAS', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3360, 'CONDADO', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3361, 'CORRENTES', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3362, 'CORTES', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3363, 'CRUZEIRO DO NORDESTE', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3364, 'CUMARU', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3365, 'CUPIRA', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3366, 'CURRAL NOVO', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3367, 'CUSTODIA', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3368, 'DORMENTES', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3369, 'ESCADA', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3370, 'ESPIRITO SANTO', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3371, 'EXTREMA', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3372, 'EXU', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3373, 'FATIMA', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3374, 'FEIRA NOVA', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3375, 'FEITORIA', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3376, 'FERNANDO DE NORONHA', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3377, 'FERREIROS', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3378, 'FLORES', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3379, 'FLORESTA', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3380, 'FREI MIGUELINHO', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3381, 'GAMELEIRA', 17, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3128, 'PIEN', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3129, 'PINHAIS', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3130, 'PINHAL DE SAO BENTO', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3131, 'PINHALAO', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3132, 'PINHAO', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3133, 'PIRAI DO SUL', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3134, 'PIRAQUARA', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3135, 'PITANGA', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3136, 'PITANGUEIRAS', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3137, 'PLANALTINA DO PARANA', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3138, 'PLANALTO', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3139, 'PONTA GROSSA', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3140, 'PONTAL DO PARANA', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3141, 'PORECATU', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3142, 'PORTO AMAZONAS', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3143, 'PORTO BARREIRO', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3144, 'PORTO RICO', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3145, 'PORTO VITORIA', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3146, 'PRADO FERREIRA', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3147, 'PRANCHITA', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3148, 'PRESIDENTE CASTELO BRANCO', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3149, 'PRIMEIRO DE MAIO', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3150, 'PRUDENTOPOLIS', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3151, 'QUARTO CENTENARIO', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3152, 'QUATIGUA', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3153, 'QUATRO BARRAS', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3154, 'QUATRO PONTES', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3155, 'QUEDAS DO IGUACU', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3156, 'QUERENCIA DO NORTE', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3157, 'QUINTA DO SOL', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3158, 'QUITANDINHA', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3159, 'RAMILANDIA', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3160, 'RANCHO ALEGRE', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3161, 'RANCHO ALEGRE D´OESTE', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3162, 'REALEZA', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3163, 'REBOUCAS', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3164, 'RENASCENCA', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3165, 'RESERVA', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3166, 'RESERVA DO IGUACU', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3167, 'RIBEIRAO CLARO', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3168, 'RIBEIRAO DO PINHAL', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3169, 'RIO AZUL', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3170, 'RIO BOM', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3171, 'RIO BONITO DO IGUACU', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3172, 'RIO BRANCO DO IVAI', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3173, 'RIO BRANCO DO SUL', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3174, 'RIO NEGRO', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3175, 'ROLANDIA', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3176, 'RONCADOR', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3177, 'RONDON', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3178, 'ROSARIO DO IVAI', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3179, 'SABAUDIA', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3180, 'SALGADO FILHO', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3181, 'SALTO DO ITARARE', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3182, 'SALTO DO LONTRA', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3183, 'SANTA AMELIA', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3184, 'SANTA CECILIA DO PAVAO', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3185, 'SANTA CRUZ DE MONTE CASTELO', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3186, 'SANTA FE', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3187, 'SANTA HELENA', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3188, 'SANTA INES', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3189, 'SANTA ISABEL DO IVAI', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3190, 'SANTA IZABEL DO OESTE', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3191, 'SANTA LUCIA', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3192, 'SANTA MARIA DO OESTE', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3193, 'SANTA MARIANA', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3194, 'SANTA MONICA', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3195, 'SANTA TEREZA DO OESTE', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3196, 'SANTA TEREZINHA DE ITAIPU', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3197, 'SANTANA DO ITARARE', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3198, 'SANTO ANTONIO DA PLATINA', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3199, 'SANTO ANTONIO DO CAIUA', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3200, 'SANTO ANTONIO DO PARAISO', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3201, 'SANTO ANTONIO DO SUDOESTE', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3202, 'SANTO INACIO', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3203, 'SAO CARLOS DO IVAI', 16, 28);
commit;
prompt 2700 records committed...
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3204, 'SAO JERONIMO DA SERRA', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3205, 'SAO JOAO', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3206, 'SAO JOAO DO CAIUA', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3207, 'SAO JOAO DO IVAI', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3208, 'SAO JOAO DO TRIUNFO', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3209, 'SAO JORGE DO IVAI', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3210, 'SAO JORGE DO PATROCINIO', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3211, 'SAO JORGE D´OESTE', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3212, 'SAO JOSE DA BOA VISTA', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3213, 'SAO JOSE DAS PALMEIRAS', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3214, 'SAO JOSE DO IVAI', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3215, 'SAO JOSE DOS PINHAIS', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3216, 'SAO MANOEL DO PARANA', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3217, 'SAO MATEUS DO SUL', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3218, 'SAO MIGUEL DO IGUACU', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3219, 'SAO PEDRO DO IGUACU', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3220, 'SAO PEDRO DO IVAI', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3221, 'SAO PEDRO DO PARANA', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3222, 'SAO SEBASTIAO DA AMOREIRA', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3223, 'SAO TOME', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3224, 'SAPOPEMA', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3225, 'SARANDI', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3226, 'SAUDADE DO IGUACU', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3227, 'SENGES', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3228, 'SERRANOPOLIS DO IGUACU', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3229, 'SERTANEJA', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3230, 'SERTANOPOLIS', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3231, 'SIQUEIRA CAMPOS', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3232, 'SOL DE MAIO', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3233, 'SULINA', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3234, 'TAMARANA', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3235, 'TAMBOARA', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3236, 'TAPEJARA', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3237, 'TAPIRA', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3238, 'TEIXEIRA SOARES', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3239, 'TELEMACO BORBA', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3240, 'TERRA BOA', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3241, 'TERRA RICA', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3242, 'TERRA ROXA', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3243, 'TIBAGI', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3244, 'TIJUCAS DO SUL', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3245, 'TOLEDO', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3246, 'TOMAZINA', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2992, 'GUAPIRAMA', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2993, 'GUAPOREMA', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2994, 'GUARACI', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2995, 'GUARANIACU', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2996, 'GUARAPUAVA', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2997, 'GUARAQUECABA', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2998, 'GUARATUBA', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2999, 'HONORIO SERPA', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3000, 'IBAITI', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3001, 'IBEMA', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3002, 'IBIPORA', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3003, 'ICARAIMA', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3004, 'IGUARACU', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3005, 'IGUATU', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3006, 'IMBAU', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3007, 'IMBITUVA', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3008, 'INACIO MARTINS', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3009, 'INAJA', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3010, 'INDIANOPOLIS', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3011, 'IPIRANGA', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3012, 'IPORA', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3013, 'IRACEMA DO OESTE', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3014, 'IRATI', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3015, 'IRETAMA', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3016, 'ITAGUAJE', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3017, 'ITAIPULANDIA', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3018, 'ITAMBARACA', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3019, 'ITAMBE', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3020, 'ITAPEJARA D´OESTE', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3021, 'ITAPERUCU', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3022, 'ITAUNA DO SUL', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3023, 'IVAI', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3024, 'IVAIPORA', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3025, 'IVATE', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3026, 'IVATUBA', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3027, 'JABOTI', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3028, 'JACAREZINHO', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3029, 'JAGUAPITA', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3030, 'JAGUARIAIVA', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3031, 'JANDAIA DO SUL', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3032, 'JANIOPOLIS', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3033, 'JAPIRA', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3034, 'JAPURA', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3035, 'JARDIM ALEGRE', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3036, 'JARDIM OLINDA', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3037, 'JATAIZINHO', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3038, 'JESUITAS', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3039, 'JOAQUIM TAVORA', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3040, 'JUNDIAI DO SUL', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3041, 'JURANDA', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3042, 'JUSSARA', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3043, 'KALORE', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3044, 'LAPA', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3045, 'LARANJAL', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3046, 'LARANJEIRAS DO SUL', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3047, 'LEOPOLIS', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3048, 'LIDIANOPOLIS', 16, 28);
commit;
prompt 2800 records committed...
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3049, 'LINDOESTE', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3050, 'LOANDA', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3051, 'LOBATO', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3052, 'LONDRINA', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3053, 'LUIZIANA', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3054, 'LUNARDELLI', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3055, 'LUPIONOPOLIS', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3056, 'MALLET', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3057, 'MALU', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3058, 'MAMBORE', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3059, 'MANDAGUACU', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3060, 'MANDAGUARI', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3061, 'MANDIRITUBA', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3062, 'MANFRINOPOLIS', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3063, 'MANGUEIRINHA', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3064, 'MANOEL RIBAS', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3065, 'MARECHAL CANDIDO RONDON', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3066, 'MARIA HELENA', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3067, 'MARIALVA', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3068, 'MARILANDIA DO SUL', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3069, 'MARILENA', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3070, 'MARILUZ', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3071, 'MARINGA', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3072, 'MARIOPOLIS', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3073, 'MARIPA', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3074, 'MARMELEIRO', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3075, 'MARQUINHO', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3076, 'MARUMBI', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3077, 'MATELANDIA', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3078, 'MATINHOS', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3079, 'MATO RICO', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3080, 'MAUA DA SERRA', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3081, 'MEDIANEIRA', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3082, 'MERCEDES', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3083, 'MIRADOR', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3084, 'MIRASELVA', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3085, 'MISSAL', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3086, 'MOREIRA SALES', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3087, 'MORRETES', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3088, 'MUNHOZ DE MELO', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3089, 'NOSSA SENHORA DAS GRACAS', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3090, 'NOVA ALIANCA DO IVAI', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3091, 'NOVA AMERICA DA COLINA', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3092, 'NOVA AURORA', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3093, 'NOVA CANTU', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3094, 'NOVA ESPERANCA', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3095, 'NOVA ESPERANCA DO SUDOESTE', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3096, 'NOVA FATIMA', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3097, 'NOVA LARANJEIRAS', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3098, 'NOVA LONDRINA', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3099, 'NOVA OLIMPIA', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3100, 'NOVA PIRAPO', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3101, 'NOVA PRATA DO IGUACU', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3102, 'NOVA SANTA BARBARA', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3103, 'NOVA SANTA ROSA', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3104, 'NOVA TEBAS', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3105, 'NOVO ITACOLOMI', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3106, 'NOVO SARANDI', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3107, 'ORTIGUEIRA', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3108, 'OURIZONA', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3109, 'OURO VERDE DO OESTE', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3110, 'PAICANDU', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3111, 'PALMAS', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3112, 'PALMEIRA', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3113, 'PALMITAL', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3114, 'PALOTINA', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3115, 'PARAISO DO NORTE', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3116, 'PARANACITY', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3117, 'PARANAGUA', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3118, 'PARANAPOEMA', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3119, 'PARANAVAI', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3120, 'PATO BRAGADO', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3121, 'PATO BRANCO', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3122, 'PAULA FREITAS', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3123, 'PAULO FRONTIN', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3124, 'PEABIRU', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3125, 'PEROBAL', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3126, 'PEROLA', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3127, 'PEROLA D´OESTE', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2865, 'ALVORADA DO SUL', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2866, 'AMAPORA', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2867, 'AMPERE', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2868, 'ANAHY', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2869, 'ANDIRA', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2870, 'ANGULO', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2871, 'ANTONINA', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2872, 'ANTONIO OLINTO', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2873, 'APUCARANA', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2874, 'ARAPONGAS', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2875, 'ARAPOTI', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2876, 'ARAPUA', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2877, 'ARARUNA', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2878, 'ARAUCARIA', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2879, 'ARIRANHA DO IVAI', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2880, 'ASSAI', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2881, 'ASSIS CHATEAUBRIAND', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2882, 'ASTORGA', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2883, 'ATALAIA', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2884, 'BAIRRO DA OLARIA', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2885, 'BALSA NOVA', 16, 28);
commit;
prompt 2900 records committed...
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2886, 'BANDEIRANTES', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2887, 'BARBOSA FERRAZ', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2888, 'BARRA DO JACARE', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2889, 'BARRACAO', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2890, 'BELA VISTA DA CAROBA', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2891, 'BELA VISTA DO PARAISO', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2892, 'BITURUNA', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2893, 'BOA ESPERANCA', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2894, 'BOA ESPERANCA DO IGUACU', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2895, 'BOA VENTURA DE SAO ROQUE', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2896, 'BOA VISTA DA APARECIDA', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2897, 'BOCAIUVA DO SUL', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2898, 'BOM JESUS DO SUL', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2899, 'BOM SUCESSO', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2900, 'BOM SUCESSO DO SUL', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2901, 'BORRAZOPOLIS', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2902, 'BRAGANEY', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2903, 'BRAGANTINA', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2904, 'BRASILANDIA DO SUL', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2905, 'CAFEARA', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2906, 'CAFELANDIA', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2907, 'CAFEZAL DO SUL', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2908, 'CALIFORNIA', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2909, 'CAMBARA', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2910, 'CAMBE', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2911, 'CAMBIRA', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2912, 'CAMPINA DA LAGOA', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2913, 'CAMPINA DO SIMAO', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2914, 'CAMPINA GRANDE DO SUL', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2915, 'CAMPO BONITO', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2916, 'CAMPO DO TENENTE', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2917, 'CAMPO LARGO', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2918, 'CAMPO MAGRO', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2919, 'CAMPO MOURAO', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2920, 'CANDIDO DE ABREU', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2921, 'CANDOI', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2922, 'CANTAGALO', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2923, 'CAPANEMA', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2924, 'CAPITAO LEONIDAS MARQUES', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2925, 'CARAMBEI', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2926, 'CARLOPOLIS', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2927, 'CASCAVEL', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2928, 'CASTRO', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2929, 'CATANDUVAS', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2930, 'CENTENARIO DO SUL', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2931, 'CERRO AZUL', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2932, 'CEU AZUL', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2933, 'CHOPINZINHO', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2934, 'CIANORTE', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2935, 'CIDADE GAUCHA', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2936, 'CLEVELANDIA', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2937, 'COLOMBO', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2938, 'COLORADO', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2939, 'CONGONHINHAS', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2940, 'CONSELHEIRO MAIRINCK', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2941, 'CONTENDA', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2942, 'CORBELIA', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2943, 'CORNELIO PROCOPIO', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2944, 'CORONEL DOMINGOS SOARES', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2945, 'CORONEL VIVIDA', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2946, 'CORUMBATAI DO SUL', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2947, 'CRUZ MACHADO', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2948, 'CRUZEIRO DO IGUACU', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2949, 'CRUZEIRO DO OESTE', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2950, 'CRUZEIRO DO SUL', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2951, 'CRUZMALTINA', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2952, 'CURITIBA', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2953, 'CURIUVA', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2954, 'DIAMANTE DO NORTE', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2955, 'DIAMANTE DO SUL', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2956, 'DIAMANTE D´OESTE', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2957, 'DOIS VIZINHOS', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2958, 'DOURADINA', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2959, 'DOUTOR CAMARGO', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2960, 'DOUTOR ULYSSES', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2961, 'ENCANTADO DO OESTE', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2962, 'ENEAS MARQUES', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2963, 'ENGENHEIRO BELTRAO', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2964, 'ENTRE RIOS DO OESTE', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2965, 'ESPERANCA NOVA', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2966, 'ESPIGAO ALTO DO IGUACU', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2967, 'FAROL', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2968, 'FAXINAL', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2969, 'FAZENDA RIO GRANDE', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2970, 'FENIX', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2971, 'FERNANDES PINHEIRO', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2972, 'FIGUEIRA', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2973, 'FLOR DA SERRA DO SUL', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2974, 'FLORAI', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2975, 'FLORESTA', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2976, 'FLORESTOPOLIS', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2977, 'FLORIDA', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2978, 'FORMOSA DO OESTE', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2979, 'FOZ DO IGUACU', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2980, 'FOZ DO JORDAO', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2981, 'FRANCISCO ALVES', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2982, 'FRANCISCO BELTRAO', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2983, 'GENERAL CARNEIRO', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2984, 'GODOY MOREIRA', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2985, 'GOIOERE', 16, 28);
commit;
prompt 3000 records committed...
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2986, 'GOIOXIM', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2987, 'GRANDES RIOS', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2988, 'GUAIRA', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2989, 'GUAIRACA', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2990, 'GUAMIRANGA', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2991, 'GUAMIRIM', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2735, 'JUNCO DO SERIDO', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2736, 'JURIPIRANGA', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2737, 'JURU', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2738, 'LAGOA', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2739, 'LAGOA DE DENTRO', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2740, 'LAGOA SECA', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2741, 'LASTRO', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2742, 'LIVRAMENTO', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2743, 'LUCENA', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2744, 'MAE D´AGUA', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2745, 'MALTA', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2746, 'MAMANGUAPE', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2747, 'MANAIRA', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2748, 'MARCACAO', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2749, 'MARI', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2750, 'MARIZOPOLIS', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2751, 'MASSARANDUBA', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2752, 'MATARACA', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2753, 'MATO GROSSO', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2754, 'MATUREIA', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2755, 'MOGEIRO', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2756, 'MONTADAS', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2757, 'MONTE HOREBE', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2758, 'MONTEIRO', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2759, 'MULUNGU', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2760, 'NATUBA', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2761, 'NAZAREZINHO', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2762, 'NOVA FLORESTA', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2763, 'NOVA OLINDA', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2764, 'NOVA PALMEIRA', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2765, 'OLHO D´AGUA', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2766, 'OLIVEDOS', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2767, 'OURO VELHO', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2768, 'PARARI', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2769, 'PASSAGEM', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2770, 'PATOS', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2771, 'PAULISTA', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2772, 'PEDRA BRANCA', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2773, 'PEDRA LAVRADA', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2774, 'PEDRAS DE FOGO', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2775, 'PEDRO REGIS', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2776, 'PIANCO', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2777, 'PICUI', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2778, 'PILAR', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2779, 'PILOES', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2780, 'PILOEZINHOS', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2781, 'PIRPIRITUBA', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2782, 'PITIMBU', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2783, 'POCINHOS', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2784, 'POCO DANTAS', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2785, 'POMBAL', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2786, 'PRATA', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2787, 'PRINCESA ISABEL', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2788, 'PUXINANA', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2789, 'QUEIMADAS', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2790, 'QUIXABA', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2791, 'REMIGIO', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2792, 'RIACHAO DO POCO', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2793, 'RIACHO DE SANTO ANTONIO', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2794, 'RIACHO DOS CAVALOS', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2795, 'RIO TINTO', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2796, 'SALGADINHO', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2797, 'SALGADO DE SAO FELIX', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2798, 'SANTA CECILIA', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2799, 'SANTA CRUZ', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2800, 'SANTA HELENA', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2801, 'SANTA INES', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2802, 'SANTA LUZIA', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2803, 'SANTA RITA', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2804, 'SANTA TERESINHA', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2805, 'SANTANA DE MANGUEIRA', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2806, 'SANTANA DOS GARROTES', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2807, 'SANTAREM', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2808, 'SANTO ANDRE', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2809, 'SAO BENTO', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2810, 'SAO BENTO DE POMBAL', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2811, 'SAO DOMINGOS DE POMBAL', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2812, 'SAO DOMINGOS DO CARIRI', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2813, 'SAO JOAO DO CARIRI', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2814, 'SAO JOAO DO RIO DO PEIXE', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2815, 'SAO JOAO DO TIGRE', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2816, 'SAO JOSE DA LAGOA TAPADA', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2817, 'SAO JOSE DE CAIANA', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2818, 'SAO JOSE DE ESPINHARAS', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2819, 'SAO JOSE DE PIRANHAS', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2820, 'SAO JOSE DE PRINCESA', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2821, 'SAO JOSE DO BONFIM', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2822, 'SAO JOSE DO BREJO DO CRUZ', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2823, 'SAO JOSE DO SABUGI', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2824, 'SAO JOSE DOS CORDEIROS', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2825, 'SAO JOSE DOS RAMOS', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2826, 'SAO MAMEDE', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2827, 'SAO MIGUEL DE TAIPU', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2828, 'SAO SEBASTIAO DE LAGOA DE ROCA', 15, 28);
commit;
prompt 3100 records committed...
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2829, 'SAO SEBASTIAO DO UMBUZEIRO', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2830, 'SAPE', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2831, 'SERIDO', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2832, 'SERRA BRANCA', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2833, 'SERRA DA RAIZ', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2834, 'SERRA GRANDE', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2835, 'SERRA REDONDA', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2836, 'SERRARIA', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2837, 'SERTAOZINHO', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2838, 'SOBRADO', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2839, 'SOLANEA', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2840, 'SOLEDADE', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2841, 'SOSSEGO', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2842, 'SOUSA', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2843, 'SUME', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2844, 'TACIMA', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2845, 'TAPEROA', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2846, 'TAVARES', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2847, 'TEIXEIRA', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2848, 'TENORIO', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2849, 'TRIUNFO', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2850, 'UIRAUNA', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2851, 'UMBUZEIRO', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2852, 'VARZEA', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2853, 'VIEIROPOLIS', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2854, 'VISTA SERRANA', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2855, 'ZABELE', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2856, 'ABATIA', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2857, 'ADRIANOPOLIS', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2858, 'AGUA BOA', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2859, 'AGUDOS DO SUL', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2860, 'ALMIRANTE TAMANDARE', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2861, 'ALTAMIRA DO PARANA', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2862, 'ALTO PARANA', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2863, 'ALTO PIQUIRI', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2864, 'ALTONIA', 16, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2605, 'SANTO ANTONIO DO TAUA', 14, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2606, 'SAO CAETANO DE ODIVELAS', 14, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2607, 'SAO DOMINGOS DO ARAGUAIA', 14, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2608, 'SAO DOMINGOS DO CAPIM', 14, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2609, 'SAO FELIX DO XINGU', 14, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2610, 'SAO FRANCISCO DO PARA', 14, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2611, 'SAO GERALDO DO ARAGUAIA', 14, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2612, 'SAO JOAO DA PONTA', 14, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2613, 'SAO JOAO DE PIRABAS', 14, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2614, 'SAO JOAO DO ARAGUAIA', 14, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2615, 'SAO JORGE KM 32', 14, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2616, 'SAO MIGUEL DO GUAMA', 14, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2617, 'SAO SEBASTIAO DA BOA VISTA', 14, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2618, 'SAPUCAIA', 14, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2619, 'SENADOR JOSE PORFIRIO', 14, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2620, 'SOURE', 14, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2621, 'SUDOESTE', 14, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2622, 'TAILANDIA', 14, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2623, 'TERRA ALTA', 14, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2624, 'TERRA SANTA', 14, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2625, 'TOME-ACU', 14, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2626, 'TRACUATEUA', 14, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2627, 'TRAIRAO', 14, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2628, 'TUCUMA', 14, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2629, 'TUCURUI', 14, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2630, 'ULIANOPOLIS', 14, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2631, 'URUARA', 14, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2632, 'VIGIA', 14, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2633, 'VILA CANAA', 14, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2634, 'VILA NEREU', 14, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2635, 'VILA NOVA DESCOBERTA', 14, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2636, 'VILA SAO JOSE', 14, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2637, 'VILA SAO JOSE DO ARAGUAIA', 14, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2638, 'VILA TABOCA', 14, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2639, 'VILA UNIAO CURUMU', 14, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2640, 'VISEU', 14, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2641, 'VITORIA DO XINGU', 14, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2642, 'XINGUARA', 14, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2643, 'AGUA BRANCA', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2644, 'AGUIAR', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2645, 'ALAGOA GRANDE', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2646, 'ALAGOA NOVA', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2647, 'ALAGOINHA', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2648, 'ALCANTIL', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2649, 'ALGODAO DE JANDAIRA', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2650, 'ALHANDRA', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2651, 'AMPARO', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2652, 'APARECIDA', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2653, 'ARACAGI', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2654, 'ARARA', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2655, 'ARARUNA', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2656, 'AREIA', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2657, 'AREIA DE BARAUNAS', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2658, 'AREIAL', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2659, 'AROEIRAS', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2660, 'ASSIS CHATEAUBRIAND', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2661, 'ASSUNCAO', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2662, 'BAIA DA TRAICAO', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2663, 'BANANEIRAS', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2664, 'BARRA DE SANTA ROSA', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2665, 'BARRA DE SANTANA', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2666, 'BARRA DE SAO MIGUEL', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2667, 'BAYEUX', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2668, 'BELEM', 15, 28);
commit;
prompt 3200 records committed...
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2669, 'BELEM DO BREJO DO CRUZ', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2670, 'BERNARDINO BATISTA', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2671, 'BOA VENTURA', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2672, 'BOM JESUS', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2673, 'BOM SUCESSO', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2674, 'BONITO DE SANTA FE', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2675, 'BOQUEIRAO', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2676, 'BORBOREMA', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2677, 'BREJO DO CRUZ', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2678, 'BREJO DOS SANTOS', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2679, 'CAAPORA', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2680, 'CABACEIRAS', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2681, 'CABEDELO', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2682, 'CACHOEIRA DOS INDIOS', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2683, 'CACIMBA DE AREIA', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2684, 'CACIMBA DE DENTRO', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2685, 'CAICARA', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2686, 'CAJAZEIRAS', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2687, 'CALDAS BRANDAO', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2688, 'CAMALAU', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2689, 'CAMPINA GRANDE', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2690, 'CARAUBAS', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2691, 'CARRAPATEIRA', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2692, 'CASSERENGUE', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2693, 'CATINGUEIRA', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2694, 'CATOLE DO ROCHA', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2695, 'CATURITE', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2696, 'CONCEICAO', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2697, 'CONDADO', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2698, 'CONDE', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2699, 'CONGO', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2700, 'COREMAS', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2701, 'COXIXOLA', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2702, 'CRUZ DO ESPIRITO SANTO', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2703, 'CUBATI', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2704, 'CUITE', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2705, 'CUITE DE MAMANGUAPE', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2706, 'CUITEGI', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2707, 'CURRAL DE CIMA', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2708, 'CURRAL VELHO', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2709, 'DAMIAO', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2710, 'DESTERRO', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2711, 'DIAMANTE', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2712, 'DONA INES', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2713, 'DUAS ESTRADAS', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2714, 'EMAS', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2715, 'ESPERANCA', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2716, 'FAGUNDES', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2717, 'FREI MARTINHO', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2718, 'GADO BRAVO', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2719, 'GUARABIRA', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2720, 'GURINHEM', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2721, 'GURJAO', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2722, 'IBIARA', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2723, 'IGARACY', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2724, 'IMACULADA', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2725, 'INGA', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2726, 'ITABAIANA', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2727, 'ITAPORANGA', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2728, 'ITAPOROROCA', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2729, 'ITATUBA', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2730, 'JACARAU', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2731, 'JERICO', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2732, 'JOAO PESSOA', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2733, 'JUAREZ TAVORA', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2734, 'JUAZEIRINHO', 15, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2475, 'VIRGOLANDIA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2476, 'VISCONDE DO RIO BRANCO', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2477, 'VOLTA GRANDE', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2478, 'WENCESLAU BRAZ', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2479, 'ABAETETUBA', 14, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2480, 'ABEL FIGUEIREDO', 14, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2481, 'ACARA', 14, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2482, 'AFUA', 14, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2483, 'AGROVILA MONTE SINAI DO KM 201', 14, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2484, 'AGUA AZUL DO NORTE', 14, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2485, 'ALENQUER', 14, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2486, 'ALMEIRIM', 14, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2487, 'ALTAMIRA', 14, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2488, 'ANAJAS', 14, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2489, 'ANANINDEUA', 14, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2490, 'ANAPU', 14, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2491, 'ARAMANAI', 14, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2492, 'AUGUSTO CORREA', 14, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2493, 'AURORA DO PARA', 14, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2494, 'AVEIRO', 14, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2495, 'BAGRE', 14, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2496, 'BAIAO', 14, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2497, 'BANNACH', 14, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2498, 'BARCARENA', 14, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2499, 'BELEM', 14, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2500, 'BELTERRA', 14, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2501, 'BENEVIDES', 14, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2502, 'BOM JESUS DO TOCANTINS', 14, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2503, 'BONITO', 14, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2504, 'BRAGANCA', 14, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2505, 'BRASIL NOVO', 14, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2506, 'BREJO GRANDE DO ARAGUAIA', 14, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2507, 'BREU BRANCO', 14, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2508, 'BREVES', 14, 28);
commit;
prompt 3300 records committed...
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2509, 'BUJARU', 14, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2510, 'CABECEIRA DO SILENCIO', 14, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2511, 'CACHOEIRA DO ARARI', 14, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2512, 'CACHOEIRA DO PIRIA', 14, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2513, 'CAMETA', 14, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2514, 'CANAA DOS CARAJAS', 14, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2515, 'CAPANEMA', 14, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2516, 'CAPISTRANO DE ABREU', 14, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2517, 'CAPITAO POCO', 14, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2518, 'CARAJAS', 14, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2519, 'CASTANHAL', 14, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2520, 'CHAVES', 14, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2521, 'COLARES', 14, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2522, 'CONCEICAO DO ARAGUAIA', 14, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2523, 'CONCORDIA DO PARA', 14, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2524, 'CUMARU DO NORTE', 14, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2525, 'CURIONOPOLIS', 14, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2526, 'CURRALINHO', 14, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2527, 'CURUA', 14, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2528, 'CURUCA', 14, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2529, 'DOM ELISEU', 14, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2530, 'ELDORADO DOS CARAJAS', 14, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2531, 'FARO', 14, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2532, 'FLORESTA DO ARAGUAIA', 14, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2533, 'GARRAFAO DO NORTE', 14, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2534, 'GOIANESIA DO PARA', 14, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2535, 'GURUPA', 14, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2536, 'IGARAPE-ACU', 14, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2537, 'IGARAPE-MIRI', 14, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2538, 'INHANGAPI', 14, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2539, 'IPIXUNA DO PARA', 14, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2540, 'IRITUIA', 14, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2541, 'ITAITUBA', 14, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2542, 'ITUPIRANGA', 14, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2543, 'JACAREACANGA', 14, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2544, 'JACUNDA', 14, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2545, 'JURUTI', 14, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2546, 'LADEIRA', 14, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2547, 'LIMOEIRO DO AJURU', 14, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2548, 'MAE DO RIO', 14, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2549, 'MAGALHAES BARATA', 14, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2550, 'MARABA', 14, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2551, 'MARACANA', 14, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2552, 'MARAPANIM', 14, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2553, 'MARITUBA', 14, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2554, 'MEDICILANDIA', 14, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2555, 'MELGACO', 14, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2556, 'MOCAJUBA', 14, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2557, 'MOJU', 14, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2558, 'MONTE ALEGRE', 14, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2559, 'MONTE DOURADO', 14, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2560, 'MOSQUEIRO', 14, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2561, 'MUANA', 14, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2562, 'NETEOLANDIA', 14, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2563, 'NOVA ESPERANCA DO PIRIA', 14, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2564, 'NOVA IPIXUNA', 14, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2565, 'NOVA TIMBOTEUA', 14, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2566, 'NOVO PROGRESSO', 14, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2567, 'NOVO REPARTIMENTO', 14, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2568, 'OBIDOS', 14, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2569, 'OEIRAS DO PARA', 14, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2570, 'ORIXIMINA', 14, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2571, 'OUREM', 14, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2572, 'OURILANDIA DO NORTE', 14, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2573, 'PACAJA', 14, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2574, 'PALESTINA DO PARA', 14, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2575, 'PARAGOMINAS', 14, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2576, 'PARAUA', 14, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2577, 'PARAUAPEBAS', 14, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2578, 'PAU D ARCO', 14, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2579, 'PAU D´ARCO', 14, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2580, 'PEIXE-BOI', 14, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2581, 'PICARRA', 14, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2582, 'PLACAS', 14, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2583, 'PONTA DE PEDRAS', 14, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2584, 'PORTEL', 14, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2585, 'PORTO DE MOZ', 14, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2586, 'PORTO TROMBETAS', 14, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2587, 'PRAINHA', 14, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2588, 'PRIMAVERA', 14, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2589, 'QUATIPURU', 14, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2590, 'REDENCAO', 14, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2591, 'RIO MARIA', 14, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2592, 'RONDON DO PARA', 14, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2593, 'RUROPOLIS', 14, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2594, 'SALINOPOLIS', 14, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2595, 'SALVATERRA', 14, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2596, 'SANTA BARBARA DO PARA', 14, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2597, 'SANTA CRUZ DO ARARI', 14, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2598, 'SANTA ISABEL DO PARA', 14, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2599, 'SANTA LUZIA DO PARA', 14, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2600, 'SANTA MARIA DAS BARREIRAS', 14, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2601, 'SANTA MARIA DO PARA', 14, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2602, 'SANTANA DO ARAGUAIA', 14, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2603, 'SANTAREM', 14, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2604, 'SANTAREM NOVO', 14, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2358, 'SAO FRANCISCO DE PAULA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2359, 'SAO FRANCISCO DE SALES', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2360, 'SAO FRANCISCO DO GLORIA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2361, 'SAO GERALDO', 13, 28);
commit;
prompt 3400 records committed...
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2362, 'SAO GERALDO DA PIEDADE', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2363, 'SAO GONCALO DO ABAETE', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2364, 'SAO GONCALO DO PARA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2365, 'SAO GONCALO DO RIO ABAIXO', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2366, 'SAO GONCALO DO RIO PRETO', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2367, 'SAO GONCALO DO SAPUCAI', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2368, 'SAO GOTARDO', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2369, 'SAO JOAO BATISTA DO GLORIA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2370, 'SAO JOAO DA MATA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2371, 'SAO JOAO DA PONTE', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2372, 'SAO JOAO DAS MISSOES', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2373, 'SAO JOAO DEL REI', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2374, 'SAO JOAO DO MANHUACU', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2375, 'SAO JOAO DO MANTENINHA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2376, 'SAO JOAO DO ORIENTE', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2377, 'SAO JOAO DO PARAISO', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2378, 'SAO JOAO EVANGELISTA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2379, 'SAO JOAO NEPOMUCENO', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2380, 'SAO JOSE DA LAPA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2381, 'SAO JOSE DA SAFIRA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2382, 'SAO JOSE DA VARGINHA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2383, 'SAO JOSE DO ALEGRE', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2384, 'SAO JOSE DO DIVINO', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2385, 'SAO JOSE DO GOIABAL', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2386, 'SAO JOSE DO JACURI', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2387, 'SAO JOSE DO MANTIMENTO', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2388, 'SAO LOURENCO', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2389, 'SAO MIGUEL DO ANTA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2390, 'SAO PEDRO DA UNIAO', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2391, 'SAO PEDRO DO SUACUI', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2392, 'SAO PEDRO DOS FERROS', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2393, 'SAO ROMAO', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2394, 'SAO ROQUE DE MINAS', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2395, 'SAO SEBASTIAO DA BELA VISTA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2396, 'SAO SEBASTIAO DA VARGEM ALEGRE', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2397, 'SAO SEBASTIAO DO MARANHAO', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2398, 'SAO SEBASTIAO DO OESTE', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2399, 'SAO SEBASTIAO DO PARAISO', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2400, 'SAO SEBASTIAO DO RIO PRETO', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2401, 'SAO SEBASTIAO DO RIO VERDE', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2402, 'SAO THOME DAS LETRAS', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2403, 'SAO TOMAS DE AQUINO', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2404, 'SAO VICENTE DE MINAS', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2405, 'SAPUCAI-MIRIM', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2406, 'SARDOA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2407, 'SENADOR AMARAL', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2408, 'SENADOR CORTES', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2409, 'SENADOR FIRMINO', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2410, 'SENADOR JOSE BENTO', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2411, 'SENADOR MODESTINO GONCALVES', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2412, 'SENHORA DE OLIVEIRA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2413, 'SENHORA DO PORTO', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2414, 'SENHORA DOS REMEDIOS', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2415, 'SERICITA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2416, 'SERITINGA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2417, 'SERRA AZUL DE MINAS', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2418, 'SERRA DA SAUDADE', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2419, 'SERRA DO SALITRE', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2420, 'SERRA DOS AIMORES', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2421, 'SERRANIA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2422, 'SERRANOS', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2423, 'SERRO', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2424, 'SETE LAGOAS', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2425, 'SILVEIRANIA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2426, 'SILVIANOPOLIS', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2427, 'SIMAO PEREIRA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2428, 'SIMONESIA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2429, 'SOBRALIA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2430, 'SOLEDADE DE MINAS', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2431, 'TABULEIRO', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2432, 'TAIOBEIRAS', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2433, 'TAPIRA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2434, 'TAPIRAI', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2435, 'TAQUARACU DE MINAS', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2436, 'TARUMIRIM', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2437, 'TEIXEIRAS', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2438, 'TEOFILO OTONI', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2439, 'TIMOTEO', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2440, 'TIRADENTES', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2441, 'TIROS', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2442, 'TOCANTINS', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2443, 'TOLEDO', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2444, 'TOMBOS', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2445, 'TRES CORACOES', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2446, 'TRES MARIAS', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2447, 'TRES PONTAS', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2448, 'TUMIRITINGA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2449, 'TUPACIGUARA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2450, 'TURMALINA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2451, 'TURVOLANDIA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2452, 'UBA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2453, 'UBAI', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2454, 'UBAPORANGA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2455, 'UBERABA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2456, 'UBERLANDIA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2457, 'UMBURATIBA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2458, 'UNAI', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2459, 'URUANA DE MINAS', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2460, 'URUCANIA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2461, 'URUCUIA', 13, 28);
commit;
prompt 3500 records committed...
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2462, 'VARGEM BONITA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2463, 'VARGINHA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2464, 'VARJAO DE MINAS', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2465, 'VARZEA DA PALMA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2466, 'VARZELANDIA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2467, 'VAZANTE', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2468, 'VERISSIMO', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2469, 'VESPASIANO', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2470, 'VICOSA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2471, 'VIEIRAS', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2472, 'VIRGEM DA LAPA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2473, 'VIRGINIA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2474, 'VIRGINOPOLIS', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2240, 'PIEDADE DE PONTE NOVA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2241, 'PIEDADE DO RIO GRANDE', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2242, 'PIEDADE DOS GERAIS', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2243, 'PIMENTA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2244, 'PINGO D´AGUA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2245, 'PINTOPOLIS', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2246, 'PIRACEMA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2247, 'PIRAJUBA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2248, 'PIRANGA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2249, 'PIRANGUCU', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2250, 'PIRANGUINHO', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2251, 'PIRAPETINGA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2252, 'PIRAPORA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2253, 'PIRAUBA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2254, 'PITANGUI', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2255, 'PIUI', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2256, 'PLANURA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2257, 'POCO FUNDO', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2258, 'POCOS DE CALDAS', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2259, 'POCRANE', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2260, 'POMPEU', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2261, 'PONTE NOVA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2262, 'PONTO CHIQUE', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2263, 'PONTO DOS VOLANTES', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2264, 'PORTEIRINHA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2265, 'PORTO FIRME', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2266, 'POTE', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2267, 'POUSO ALEGRE', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2268, 'POUSO ALTO', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2269, 'PRADOS', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2270, 'PRATA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2271, 'PRATAPOLIS', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2272, 'PRATINHA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2273, 'PRESIDENTE BERNARDES', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2274, 'PRESIDENTE JUSCELINO', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2275, 'PRESIDENTE KUBITSCHEK', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2276, 'PRESIDENTE OLEGARIO', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2277, 'PRUDENTE DE MORAIS', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2278, 'QUARTEL GERAL', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2279, 'QUELUZITA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2280, 'RAPOSOS', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2281, 'RAUL SOARES', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2282, 'RECREIO', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2283, 'RESENDE COSTA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2284, 'RESPLENDOR', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2285, 'RESSAQUINHA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2286, 'RIACHINHO', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2287, 'RIACHO DOS MACHADOS', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2288, 'RIBEIRAO DAS NEVES', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2289, 'RIBEIRAO VERMELHO', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2290, 'RIO ACIMA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2291, 'RIO CASCA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2292, 'RIO DO PRADO', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2293, 'RIO DOCE', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2294, 'RIO ESPERA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2295, 'RIO MANSO', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2296, 'RIO NOVO', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2297, 'RIO PARANAIBA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2298, 'RIO PARDO DE MINAS', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2299, 'RIO PIRACICABA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2300, 'RIO POMBA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2301, 'RIO PRETO', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2302, 'RIO VERMELHO', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2303, 'RITAPOLIS', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2304, 'ROCHEDO DE MINAS', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2305, 'RODEIRO', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2306, 'ROMARIA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2307, 'RUBELITA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2308, 'RUBIM', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2309, 'SABARA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2310, 'SABINOPOLIS', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2311, 'SACRAMENTO', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2312, 'SALINAS', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2313, 'SALTO DA DIVISA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2314, 'SANTA BARBARA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2315, 'SANTA BARBARA DO LESTE', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2316, 'SANTA BARBARA DO TUGURIO', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2317, 'SANTA CRUZ DO ESCALVADO', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2318, 'SANTA EFIGENIA DE MINAS', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2319, 'SANTA FE DE MINAS', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2320, 'SANTA JULIANA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2321, 'SANTA LUZIA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2322, 'SANTA MARGARIDA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2323, 'SANTA MARIA DE ITABIRA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2324, 'SANTA MARIA DO SALTO', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2325, 'SANTA MARIA DO SUACUI', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2326, 'SANTA RITA DE CALDAS', 13, 28);
commit;
prompt 3600 records committed...
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2327, 'SANTA RITA DE IBITIPOCA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2328, 'SANTA RITA DE JACUTINGA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2329, 'SANTA RITA DE MINAS', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2330, 'SANTA RITA DO ITUETO', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2331, 'SANTA RITA DO SAPUCAI', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2332, 'SANTA ROSA DA SERRA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2333, 'SANTA VITORIA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2334, 'SANTANA DA VARGEM', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2335, 'SANTANA DE CATAGUASES', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2336, 'SANTANA DE PIRAPAMA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2337, 'SANTANA DO DESERTO', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2338, 'SANTANA DO GARAMBEU', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2339, 'SANTANA DO JACARE', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2340, 'SANTANA DO MANHUACU', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2341, 'SANTANA DO PARAISO', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2342, 'SANTANA DO RIACHO', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2343, 'SANTANA DOS MONTES', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2344, 'SANTO ANTONIO DA BARRA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2345, 'SANTO ANTONIO DO AMPARO', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2346, 'SANTO ANTONIO DO AVENTUREIRO', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2347, 'SANTO ANTONIO DO GRAMA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2348, 'SANTO ANTONIO DO ITAMBE', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2349, 'SANTO ANTONIO DO JACINTO', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2350, 'SANTO ANTONIO DO MONTE', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2351, 'SANTO ANTONIO DO RIO ABAIXO', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2352, 'SANTO HIPOLITO', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2353, 'SANTOS DUMONT', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2354, 'SAO BENTO ABADE', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2355, 'SAO BRAS DO SUACUI', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2356, 'SAO DOMINGOS DO PRATA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2357, 'SAO FRANCISCO', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2239, 'PIAU', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2104, 'LASSANCE', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2105, 'LAVRAS', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2106, 'LEANDRO FERREIRA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2107, 'LEOPOLDINA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2108, 'LIBERDADE', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2109, 'LIMA DUARTE', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2110, 'LIMEIRA DO OESTE', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2111, 'LONTRA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2112, 'LUMINARIAS', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2113, 'LUZ', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2114, 'MACHACALIS', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2115, 'MACHADO', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2116, 'MADRE DE DEUS DE MINAS', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2117, 'MALACACHETA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2118, 'MAMONAS', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2119, 'MANGA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2120, 'MANHUACU', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2121, 'MANHUMIRIM', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2122, 'MANTENA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2123, 'MAR DE ESPANHA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2124, 'MARAVILHAS', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2125, 'MARIA DA FE', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2126, 'MARIANA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2127, 'MARILAC', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2128, 'MARIPA DE MINAS', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2129, 'MARLIERIA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2130, 'MARMELOPOLIS', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2131, 'MARTINHO CAMPOS', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2132, 'MARTINS SOARES', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2133, 'MATA VERDE', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2134, 'MATERLANDIA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2135, 'MATEUS LEME', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2136, 'MATHIAS LOBATO', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2137, 'MATIAS BARBOSA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2138, 'MATIAS CARDOSO', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2139, 'MATIPO', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2140, 'MATO VERDE', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2141, 'MATOZINHOS', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2142, 'MATUTINA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2143, 'MEDEIROS', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2144, 'MEDINA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2145, 'MENDES PIMENTEL', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2146, 'MERCES', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2147, 'MESQUITA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2148, 'MINAS NOVAS', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2149, 'MINDURI', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2150, 'MIRABELA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2151, 'MIRADOURO', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2152, 'MIRAI', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2153, 'MOEDA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2154, 'MOEMA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2155, 'MONJOLOS', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2156, 'MONSENHOR PAULO', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2157, 'MONTALVANIA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2158, 'MONTE ALEGRE DE MINAS', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2159, 'MONTE AZUL', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2160, 'MONTE BELO', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2161, 'MONTE CARMELO', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2162, 'MONTE SANTO DE MINAS', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2163, 'MONTE SIAO', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2164, 'MONTES CLAROS', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2165, 'MONTEZUMA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2166, 'MORADA NOVA DE MINAS', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2167, 'MORRO DA GARCA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2168, 'MORRO DO PILAR', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2169, 'MUNHOZ', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2170, 'MURIAE', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2171, 'MUTUM', 13, 28);
commit;
prompt 3700 records committed...
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2172, 'MUZAMBINHO', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2173, 'NACIP RAYDAN', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2174, 'NANUQUE', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2175, 'NATALANDIA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2176, 'NATERCIA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2177, 'NAZARENO', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2178, 'NEPOMUCENO', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2179, 'NINHEIRA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2180, 'NOVA ERA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2181, 'NOVA LIMA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2182, 'NOVA MODICA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2183, 'NOVA PONTE', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2184, 'NOVA RESENDE', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2185, 'NOVA SERRANA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2186, 'NOVA UNIAO', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2187, 'NOVO CRUZEIRO', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2188, 'NOVO ORIENTE DE MINAS', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2189, 'NOVORIZONTE', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2190, 'OLARIA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2191, 'OLIMPIO NORONHA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2192, 'OLIVEIRA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2193, 'OLIVEIRA FORTES', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2194, 'ONCA DE PITANGUI', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2195, 'ORATORIOS', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2196, 'OURO BRANCO', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2197, 'OURO FINO', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2198, 'OURO PRETO', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2199, 'OURO VERDE DE MINAS', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2200, 'PADRE PARAISO', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2201, 'PAINEIRAS', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2202, 'PAINS', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2203, 'PAIVA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2204, 'PALMA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2205, 'PALMOPOLIS', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2206, 'PAPAGAIOS', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2207, 'PARA DE MINAS', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2208, 'PARACATU', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2209, 'PARAGUACU', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2210, 'PARAISOPOLIS', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2211, 'PARAOPEBA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2212, 'PASSA QUATRO', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2213, 'PASSA TEMPO', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2214, 'PASSA VINTE', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2215, 'PASSABEM', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2216, 'PASSOS', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2217, 'PATOS DE MINAS', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2218, 'PATROCINIO', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2219, 'PATROCINIO DO MURIAE', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2220, 'PAULA CANDIDO', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2221, 'PAULISTAS', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2222, 'PAVAO', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2223, 'PECANHA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2224, 'PEDRA AZUL', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2225, 'PEDRA DO ANTA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2226, 'PEDRA DO INDAIA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2227, 'PEDRA DOURADA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2228, 'PEDRALVA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2229, 'PEDRAS DE MARIA DA CRUZ', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2230, 'PEDRINOPOLIS', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2231, 'PEDRO LEOPOLDO', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2232, 'PEDRO TEIXEIRA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2233, 'PEQUERI', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2234, 'PEQUI', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2235, 'PERDIGAO', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2236, 'PERDIZES', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2237, 'PERDOES', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2238, 'PESCADOR', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1964, 'EXTREMA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1965, 'FAMA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1966, 'FARIA LEMOS', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1967, 'FELICIO DOS SANTOS', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1968, 'FELISBURGO', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1969, 'FELIXLANDIA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1970, 'FERNANDES TOURINHO', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1971, 'FERROS', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1972, 'FERVEDOURO', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1973, 'FLORESTAL', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1974, 'FORMIGA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1975, 'FORMOSO', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1976, 'FORTALEZA DE MINAS', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1977, 'FORTUNA DE MINAS', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1978, 'FRANCISCO BADARO', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1979, 'FRANCISCO DUMONT', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1980, 'FRANCISCO SA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1981, 'FREI GASPAR', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1982, 'FREI INOCENCIO', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1983, 'FREI LAGONEGRO', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1984, 'FRONTEIRA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1985, 'FRONTEIRA DOS VALES', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1986, 'FRUTA DE LEITE', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1987, 'FRUTAL', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1988, 'FUNILANDIA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1989, 'GALILEIA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1990, 'GONCALVES', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1991, 'GONZAGA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1992, 'GOUVEA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1993, 'GOVERNADOR VALADARES', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1994, 'GRAO MOGOL', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1995, 'GRUPIARA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1996, 'GUANHAES', 13, 28);
commit;
prompt 3800 records committed...
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1997, 'GUAPE', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1998, 'GUARACIABA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1999, 'GUARANESIA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2000, 'GUARANI', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2001, 'GUARARA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2002, 'GUARDA-MOR', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2003, 'GUAXUPE', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2004, 'GUIDOVAL', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2005, 'GUIMARANIA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2006, 'GUIRICEMA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2007, 'GURINHATA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2008, 'HELIODORA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2009, 'IAPU', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2010, 'IBERTIOGA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2011, 'IBIA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2012, 'IBIAI', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2013, 'IBIRACI', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2014, 'IBIRITE', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2015, 'IBITIURA DE MINAS', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2016, 'IBITURUNA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2017, 'ICARAI DE MINAS', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2018, 'IGARAPE', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2019, 'IGARATINGA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2020, 'IGUATAMA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2021, 'IJACI', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2022, 'ILICINEA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2023, 'IMBE DE MINAS', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2024, 'INCONFIDENTES', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2025, 'INDIANOPOLIS', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2026, 'INGAI', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2027, 'INHAPIM', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2028, 'INHAUMA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2029, 'INIMUTABA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2030, 'IPABA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2031, 'IPANEMA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2032, 'IPATINGA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2033, 'IPIACU', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2034, 'IPUIUNA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2035, 'IRAI DE MINAS', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2036, 'ITABIRA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2037, 'ITABIRINHA DE MANTENA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2038, 'ITABIRITO', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2039, 'ITACAMBIRA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2040, 'ITACARAMBI', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2041, 'ITAGUARA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2042, 'ITAIPE', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2043, 'ITAJUBA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2044, 'ITAMARANDIBA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2045, 'ITAMARATI DE MINAS', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2046, 'ITAMBACURI', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2047, 'ITAMBE DO MATO DENTRO', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2048, 'ITAMOGI', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2049, 'ITAMONTE', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2050, 'ITANHANDU', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2051, 'ITANHOMI', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2052, 'ITAOBIM', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2053, 'ITAPAGIPE', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2054, 'ITAPECERICA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2055, 'ITAPEVA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2056, 'ITATIAIUCU', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2057, 'ITAU DE MINAS', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2058, 'ITAUNA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2059, 'ITAVERAVA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2060, 'ITINGA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2061, 'ITUETA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2062, 'ITUIUTABA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2063, 'ITUMIRIM', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2064, 'ITURAMA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2065, 'ITUTINGA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2066, 'JABOTICATUBAS', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2067, 'JACINTO', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2068, 'JACUI', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2069, 'JACUTINGA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2070, 'JAGUARACU', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2071, 'JAIBA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2072, 'JAMPRUCA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2073, 'JANAUBA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2074, 'JANUARIA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2075, 'JAPARAIBA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2076, 'JECEABA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2077, 'JEQUERI', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2078, 'JEQUITAI', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2079, 'JEQUITIBA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2080, 'JEQUITINHONHA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2081, 'JESUANIA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2082, 'JOAIMA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2083, 'JOANESIA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2084, 'JOAO MONLEVADE', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2085, 'JOAO PINHEIRO', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2086, 'JOAQUIM FELICIO', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2087, 'JORDANIA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2088, 'JUATUBA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2089, 'JUIZ DE FORA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2090, 'JURAMENTO', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2091, 'JURUAIA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2092, 'LADAINHA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2093, 'LAGAMAR', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2094, 'LAGOA DA PRATA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2095, 'LAGOA DOS PATOS', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2096, 'LAGOA DOURADA', 13, 28);
commit;
prompt 3900 records committed...
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2097, 'LAGOA FORMOSA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2098, 'LAGOA GRANDE', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2099, 'LAGOA SANTA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2100, 'LAJINHA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2101, 'LAMBARI', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2102, 'LAMIM', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2103, 'LARANJAL', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1841, 'CARLOS CHAGAS', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1842, 'CARMESIA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1843, 'CARMO DA CACHOEIRA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1844, 'CARMO DA MATA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1845, 'CARMO DE MINAS', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1846, 'CARMO DO CAJURU', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1847, 'CARMO DO PARANAIBA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1848, 'CARMO DO RIO CLARO', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1849, 'CARMOPOLIS DE MINAS', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1850, 'CARNEIRINHO', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1851, 'CARRANCAS', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1852, 'CARVALHOPOLIS', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1853, 'CARVALHOS', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1854, 'CASA GRANDE', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1855, 'CASCALHO RICO', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1856, 'CASSIA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1857, 'CATAGUASES', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1858, 'CATAS ALTAS DA NORUEGA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1859, 'CATUJI', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1860, 'CATUTI', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1861, 'CAXAMBU', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1862, 'CEDRO DO ABAETE', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1863, 'CENTRAL DE MINAS', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1864, 'CENTRALINA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1865, 'CHACARA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1866, 'CHALE', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1867, 'CHAPADA DO NORTE', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1868, 'CHAPADA GAUCHA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1869, 'CHIADOR', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1870, 'CIPOTANEA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1871, 'CLARAVAL', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1872, 'CLARO DOS POCOES', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1873, 'CLAUDIO', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1874, 'COIMBRA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1875, 'COLUNA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1876, 'COMENDADOR GOMES', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1877, 'COMERCINHO', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1878, 'CONCEICAO DA APARECIDA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1879, 'CONCEICAO DA BARRA DE MINAS', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1880, 'CONCEICAO DAS ALAGOAS', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1881, 'CONCEICAO DAS PEDRAS', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1882, 'CONCEICAO DE IPANEMA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1883, 'CONCEICAO DO MATO DENTRO', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1884, 'CONCEICAO DO PARA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1885, 'CONCEICAO DO RIO VERDE', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1886, 'CONCEICAO DOS OUROS', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1887, 'CONEGO MARINHO', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1888, 'CONGONHAL', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1889, 'CONGONHAS', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1890, 'CONGONHAS DO NORTE', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1891, 'CONQUISTA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1892, 'CONSELHEIRO LAFAIETE', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1893, 'CONSELHEIRO PENA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1894, 'CONSOLACAO', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1895, 'CONTAGEM', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1896, 'COQUEIRAL', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1897, 'CORACAO DE JESUS', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1898, 'CORDISBURGO', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1899, 'CORDISLANDIA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1900, 'CORINTO', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1901, 'COROACI', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1902, 'COROMANDEL', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1903, 'CORONEL FABRICIANO', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1904, 'CORONEL MURTA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1905, 'CORONEL PACHECO', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1906, 'CORONEL XAVIER CHAVES', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1907, 'CORREGO DANTA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1908, 'CORREGO DO BOM JESUS', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1909, 'CORREGO NOVO', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1910, 'COUTO DE MAGALHAES DE MINAS', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1911, 'CRISTAIS', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1912, 'CRISTALIA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1913, 'CRISTIANO OTONI', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1914, 'CRISTINA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1915, 'CRUCILANDIA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1916, 'CRUZEIRO DA FORTALEZA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1917, 'CRUZILIA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1918, 'CURVELO', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1919, 'DATAS', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1920, 'DELFIM MOREIRA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1921, 'DELFINOPOLIS', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1922, 'DELTA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1923, 'DESCOBERTO', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1924, 'DESTERRO DE ENTRE RIOS', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1925, 'DESTERRO DO MELO', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1926, 'DIAMANTINA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1927, 'DIOGO DE VASCONCELOS', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1928, 'DIONISIO', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1929, 'DIVINESIA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1930, 'DIVINO', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1931, 'DIVINO DAS LARANJEIRAS', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1932, 'DIVINOLANDIA DE MINAS', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1933, 'DIVINOPOLIS', 13, 28);
commit;
prompt 4000 records committed...
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1934, 'DIVISA NOVA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1935, 'DIVISOPOLIS', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1936, 'DOM CAVATI', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1937, 'DOM JOAQUIM', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1938, 'DOM SILVERIO', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1939, 'DOM VICOSO', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1940, 'DONA EUZEBIA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1941, 'DORES DE CAMPOS', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1942, 'DORES DE GUANHAES', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1943, 'DORES DO INDAIA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1944, 'DORES DO TURVO', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1945, 'DORESOPOLIS', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1946, 'DOURADOQUARA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1947, 'DURANDE', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1948, 'ELOI MENDES', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1949, 'ENGENHEIRO CALDAS', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1950, 'ENGENHEIRO NAVARRO', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1951, 'ENTRE FOLHAS', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1952, 'ENTRE RIOS DE MINAS', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1953, 'ERVALIA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1954, 'ESMERALDAS', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1955, 'ESPERA FELIZ', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1956, 'ESPINOSA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1957, 'ESPIRITO SANTO DO DOURADO', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1958, 'ESTIVA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1959, 'ESTRELA DALVA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1960, 'ESTRELA DO INDAIA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1961, 'ESTRELA DO SUL', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1962, 'EUGENOPOLIS', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1963, 'EWBANK DA CAMARA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1708, 'AGUANIL', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1709, 'AGUAS FORMOSAS', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1710, 'AGUAS VERMELHAS', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1711, 'AIMORES', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1712, 'AIURUOCA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1713, 'ALAGOA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1714, 'ALBERTINA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1715, 'ALEM PARAIBA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1716, 'ALFENAS', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1717, 'ALFREDO VASCONCELOS', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1718, 'ALMENARA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1719, 'ALPERCATA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1720, 'ALPINOPOLIS', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1721, 'ALTEROSA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1722, 'ALTO JEQUITIBA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1723, 'ALTO RIO DOCE', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1724, 'ALVARENGA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1725, 'ALVINOPOLIS', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1726, 'ALVORADA DE MINAS', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1727, 'AMPARO DO SERRA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1728, 'ANDRADAS', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1729, 'ANDRELANDIA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1730, 'ANTONIO CARLOS', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1731, 'ANTONIO DIAS', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1732, 'ANTONIO PRADO DE MINAS', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1733, 'ARACAI', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1734, 'ARACITABA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1735, 'ARACUAI', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1736, 'ARAGUARI', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1737, 'ARANTINA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1738, 'ARAPONGA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1739, 'ARAPORA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1740, 'ARAPUA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1741, 'ARAUJOS', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1742, 'ARAXA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1743, 'ARCEBURGO', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1744, 'ARCOS', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1745, 'AREADO', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1746, 'ARGIRITA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1747, 'ARINOS', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1748, 'ASTOLFO DUTRA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1749, 'ATALEIA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1750, 'AUGUSTO DE LIMA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1751, 'BAEPENDI', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1752, 'BALDIM', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1753, 'BAMBUI', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1754, 'BANDEIRA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1755, 'BANDEIRA DO SUL', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1756, 'BARAO DE COCAIS', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1757, 'BARAO DE MONTE ALTO', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1758, 'BARBACENA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1759, 'BARRA LONGA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1760, 'BARROSO', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1761, 'BELA VISTA DE MINAS', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1762, 'BELMIRO BRAGA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1763, 'BELO HORIZONTE', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1764, 'BELO ORIENTE', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1765, 'BELO VALE', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1766, 'BERILO', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1767, 'BERTOPOLIS', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1768, 'BETIM', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1769, 'BIAS FORTES', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1770, 'BICAS', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1771, 'BIQUINHAS', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1772, 'BOA ESPERANCA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1773, 'BOCAINA DE MINAS', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1774, 'BOCAIUVA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1775, 'BOM DESPACHO', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1776, 'BOM JARDIM DE MINAS', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1777, 'BOM JESUS DA PENHA', 13, 28);
commit;
prompt 4100 records committed...
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1778, 'BOM JESUS DO AMPARO', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1779, 'BOM JESUS DO GALHO', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1780, 'BOM REPOUSO', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1781, 'BOM SUCESSO', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1782, 'BONFIM', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1783, 'BONFINOPOLIS DE MINAS', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1784, 'BORDA DA MATA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1785, 'BOTELHOS', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1786, 'BOTUMIRIM', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1787, 'BRAS PIRES', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1788, 'BRASILANDIA DE MINAS', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1789, 'BRASILIA DE MINAS', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1790, 'BRASOPOLIS', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1791, 'BRAUNAS', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1792, 'BRUMADINHO', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1793, 'BUENO BRANDAO', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1794, 'BUENOPOLIS', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1795, 'BURITIS', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1796, 'BURITIZEIRO', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1797, 'CABO VERDE', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1798, 'CACHOEIRA DA PRATA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1799, 'CACHOEIRA DE MINAS', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1800, 'CACHOEIRA DE PAJEU', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1801, 'CACHOEIRA DOURADA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1802, 'CAETANOPOLIS', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1803, 'CAETE', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1804, 'CAIANA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1805, 'CAJURI', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1806, 'CALDAS', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1807, 'CAMACHO', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1808, 'CAMANDUCAIA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1809, 'CAMBUI', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1810, 'CAMBUQUIRA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1811, 'CAMPANARIO', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1812, 'CAMPANHA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1813, 'CAMPESTRE', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1814, 'CAMPINA VERDE', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1815, 'CAMPO BELO', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1816, 'CAMPO DO MEIO', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1817, 'CAMPO FLORIDO', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1818, 'CAMPOS ALTOS', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1819, 'CAMPOS GERAIS', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1820, 'CANA VERDE', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1821, 'CANAA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1822, 'CANAPOLIS', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1823, 'CANDEIAS', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1824, 'CAPARAO', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1825, 'CAPELA NOVA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1826, 'CAPELINHA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1827, 'CAPETINGA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1828, 'CAPIM BRANCO', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1829, 'CAPINOPOLIS', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1830, 'CAPITAO ANDRADE', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1831, 'CAPITAO ENEAS', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1707, 'AGUA COMPRIDA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1832, 'CAPITOLIO', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1833, 'CAPUTIRA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1834, 'CARAI', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1835, 'CARANAIBA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1836, 'CARANDAI', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1837, 'CARANGOLA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1838, 'CARATINGA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1839, 'CARBONITA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1840, 'CAREACU', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1579, 'POCONE', 11, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1580, 'PONTAL DO ARAGUAIA', 11, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1581, 'PONTE BRANCA', 11, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1582, 'PONTES E LACERDA', 11, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1583, 'PORTO ALEGRE DO NORTE', 11, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1584, 'PORTO DOS GAUCHOS', 11, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1585, 'PORTO ESPERIDIAO', 11, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1586, 'PORTO ESTRELA', 11, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1587, 'POXOREO', 11, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1588, 'PRIMAVERA', 11, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1589, 'PRIMAVERA DO LESTE', 11, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1590, 'QUERENCIA', 11, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1591, 'RESERVA DO CABACAL', 11, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1592, 'RIBEIRAO CASCALHEIRA', 11, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1593, 'RIBEIRAOZINHO', 11, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1594, 'RIO BRANCO', 11, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1595, 'RONDONOPOLIS', 11, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1596, 'ROSARIO OESTE', 11, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1597, 'SALTO DO CEU', 11, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1598, 'SANTA CARMEM', 11, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1599, 'SANTA ELVIRA', 11, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1600, 'SANTA RITA DO TRIVELATO', 11, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1601, 'SANTA TEREZINHA', 11, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1602, 'SANTO AFONSO', 11, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1603, 'SANTO ANTONIO DO LEVERGER', 11, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1604, 'SAO FELIX DO ARAGUAIA', 11, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1605, 'SAO JOSE DO POVO', 11, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1606, 'SAO JOSE DO RIO CLARO', 11, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1607, 'SAO JOSE DO XINGU', 11, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1608, 'SAO JOSE DOS QUATRO MARCOS', 11, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1609, 'SAO PEDRO DA CIPA', 11, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1610, 'SINOP', 11, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1611, 'SORRISO', 11, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1612, 'TABAPORA', 11, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1613, 'TANGARA DA SERRA', 11, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1614, 'TAPURAH', 11, 28);
commit;
prompt 4200 records committed...
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1615, 'TERRA NOVA DO NORTE', 11, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1616, 'TESOURO', 11, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1617, 'TORIXOREU', 11, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1618, 'UNIAO DO SUL', 11, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1619, 'VARZEA GRANDE', 11, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1620, 'VERA', 11, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1621, 'VILA BELA DA SANTISSIMA TRINDADE', 11, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1622, 'VILA RICA', 11, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1623, 'AGUA CLARA', 12, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1624, 'ALCINOPOLIS', 12, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1625, 'AMAMBAI', 12, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1626, 'ANASTACIO', 12, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1627, 'ANAURILANDIA', 12, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1628, 'ANGELICA', 12, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1629, 'ANHANDUI', 12, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1630, 'ANTONIO JOAO', 12, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1631, 'APARECIDA DO TABOADO', 12, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1632, 'AQUIDAUANA', 12, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1633, 'ARAL MOREIRA', 12, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1634, 'BANDEIRANTES', 12, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1635, 'BATAGUASSU', 12, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1636, 'BATAIPORA', 12, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1637, 'BELA VISTA', 12, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1638, 'BODOQUENA', 12, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1639, 'BONITO', 12, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1640, 'BRASILANDIA', 12, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1641, 'CAARAPO', 12, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1642, 'CAMAPUA', 12, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1643, 'CAMPO GRANDE', 12, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1644, 'CARACOL', 12, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1645, 'CASSILANDIA', 12, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1646, 'CHAPADAO DO SUL', 12, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1647, 'CORGUINHO', 12, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1648, 'CORONEL SAPUCAIA', 12, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1649, 'CORUMBA', 12, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1650, 'COSTA RICA', 12, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1651, 'COXIM', 12, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1652, 'DEODAPOLIS', 12, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1653, 'DOIS IRMAOS DO BURITI', 12, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1654, 'DOURADINA', 12, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1655, 'DOURADOS', 12, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1656, 'ELDORADO', 12, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1657, 'FATIMA DO SUL', 12, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1658, 'GLORIA DE DOURADOS', 12, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1659, 'GUIA LOPES DA LAGUNA', 12, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1660, 'IGUATEMI', 12, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1661, 'INOCENCIA', 12, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1662, 'ITAPORA', 12, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1663, 'ITAQUIRAI', 12, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1664, 'IVINHEMA', 12, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1665, 'JAPORA', 12, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1666, 'JARAGUARI', 12, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1667, 'JARDIM', 12, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1668, 'JATEI', 12, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1669, 'JUTI', 12, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1670, 'LADARIO', 12, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1671, 'LAGUNA CARAPA', 12, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1672, 'MARACAJU', 12, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1673, 'MIRANDA', 12, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1674, 'MUNDO NOVO', 12, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1675, 'NAVIRAI', 12, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1676, 'NIOAQUE', 12, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1677, 'NOVA ALVORADA DO SUL', 12, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1678, 'NOVA ANDRADINA', 12, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1679, 'NOVO HORIZONTE DO SUL', 12, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1680, 'PARANAIBA', 12, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1681, 'PARANHOS', 12, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1682, 'PEDRO GOMES', 12, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1683, 'PONTA PORA', 12, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1684, 'PORTO MURTINHO', 12, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1685, 'RIBAS DO RIO PARDO', 12, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1686, 'RIO BRILHANTE', 12, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1687, 'RIO NEGRO', 12, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1688, 'RIO VERDE DE MATO GROSSO', 12, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1689, 'ROCHEDO', 12, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1690, 'SANTA RITA DO PARDO', 12, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1691, 'SAO GABRIEL DO OESTE', 12, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1692, 'SELVIRIA', 12, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1693, 'SETE QUEDAS', 12, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1694, 'SIDROLANDIA', 12, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1695, 'SONORA', 12, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1696, 'TACURU', 12, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1697, 'TAQUARUSSU', 12, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1698, 'TERENOS', 12, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1699, 'TRES LAGOAS', 12, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1700, 'VICENTINA', 12, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1701, 'ABADIA DOS DOURADOS', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1702, 'ABAETE', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1703, 'ABRE CAMPO', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1704, 'ACAIACA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1705, 'ACUCENA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1706, 'AGUA BOA', 13, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1452, 'SAO RAIMUNDO', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1453, 'SAO RAIMUNDO DAS MANGABEIRAS', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1454, 'SAO RAIMUNDO DO DOCA BEZERRA', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1455, 'SAO ROBERTO', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1456, 'SAO VICENTE FERRER', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1457, 'SATUBINHA', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1458, 'SENADOR ALEXANDRE COSTA', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1459, 'SENADOR LA ROCQUE', 10, 28);
commit;
prompt 4300 records committed...
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1460, 'SERRANO DO MARANHAO', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1461, 'SITIO NOVO', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1462, 'SUCUPIRA DO NORTE', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1463, 'SUCUPIRA DO RIACHAO', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1464, 'SUMAUMA', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1465, 'TASSO FRAGOSO', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1466, 'TIMBIRAS', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1467, 'TIMON', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1468, 'TRES LAGOAS', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1469, 'TRES LAGOAS DO MANDUCA', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1470, 'TRIZIDELA DO VALE', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1471, 'TUFILANDIA', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1472, 'TUNTUM', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1473, 'TURIACU', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1474, 'TURILANDIA', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1475, 'TUTOIA', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1476, 'URBANO SANTOS', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1477, 'VALE VERDE', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1478, 'VARGEM GRANDE', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1479, 'VIANA', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1480, 'VILA NOVA DOS MARTIRIOS', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1481, 'VIRACAO', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1482, 'VITORIA DO MEARIM', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1483, 'VITORINO FREIRE', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1484, 'ZE DOCA', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1485, 'ACORIZAL', 11, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1486, 'AGUA BOA', 11, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1487, 'ALTA FLORESTA', 11, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1488, 'ALTO ARAGUAIA', 11, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1489, 'ALTO BOA VISTA', 11, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1490, 'ALTO COITE', 11, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1491, 'ALTO GARCAS', 11, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1492, 'ALTO PARAGUAI', 11, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1493, 'ALTO TAQUARI', 11, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1494, 'ANALANDIA DO NORTE', 11, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1495, 'APIACAS', 11, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1496, 'ARAGUAIANA', 11, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1497, 'ARAGUAINHA', 11, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1498, 'ARAPUTANGA', 11, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1499, 'ARENAPOLIS', 11, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1500, 'ARIPUANA', 11, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1501, 'ASSARI', 11, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1502, 'BARAO DE MELGACO', 11, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1503, 'BARRA DO BUGRES', 11, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1504, 'BARRA DO GARCAS', 11, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1505, 'BOA ESPERANCA', 11, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1506, 'BOM JESUS', 11, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1507, 'BRASNORTE', 11, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1508, 'CACERES', 11, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1509, 'CAMPINAPOLIS', 11, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1510, 'CAMPO NOVO DO PARECIS', 11, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1511, 'CAMPO VERDE', 11, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1512, 'CAMPOS DE JULIO', 11, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1513, 'CANA BRAVA DO NORTE', 11, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1514, 'CANARANA', 11, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1515, 'CARAMUJO', 11, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1516, 'CARLINDA', 11, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1517, 'CASTANHEIRA', 11, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1518, 'CHAPADA DOS GUIMARAES', 11, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1519, 'CLAUDIA', 11, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1520, 'COCALINHO', 11, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1521, 'COLIDER', 11, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1522, 'COLNIZA', 11, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1523, 'COMODORO', 11, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1524, 'CONFRESA', 11, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1525, 'COTRIGUACU', 11, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1526, 'CUIABA', 11, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1527, 'DENISE', 11, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1528, 'DIAMANTINO', 11, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1529, 'DOM AQUINO', 11, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1530, 'FELIZ NATAL', 11, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1531, 'FIGUEIROPOLIS D´OESTE', 11, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1532, 'GAUCHA DO NORTE', 11, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1533, 'GENERAL CARNEIRO', 11, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1534, 'GLORIA D´OESTE', 11, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1535, 'GUARANTA DO NORTE', 11, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1536, 'GUIRATINGA', 11, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1537, 'INDIAVAI', 11, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1538, 'IPIRANGA', 11, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1539, 'ITANHANGA', 11, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1540, 'ITAUBA', 11, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1541, 'ITIQUIRA', 11, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1542, 'JACIARA', 11, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1543, 'JANGADA', 11, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1544, 'JAURU', 11, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1545, 'JUARA', 11, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1546, 'JUINA', 11, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1547, 'JURUENA', 11, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1548, 'JUSCIMEIRA', 11, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1549, 'LAMBARI D´OESTE', 11, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1550, 'LUCAS DO RIO VERDE', 11, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1551, 'LUCIARA', 11, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1552, 'MARCELANDIA', 11, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1553, 'MATUPA', 11, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1554, 'MIRASSOL D¿OESTE', 11, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1555, 'MORRO SAO GERONIMO', 11, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1556, 'NOBRES', 11, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1557, 'NORTELANDIA', 11, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1558, 'NOSSA SENHORA DO LIVRAMENTO', 11, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1559, 'NOVA BANDEIRANTES', 11, 28);
commit;
prompt 4400 records committed...
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1560, 'NOVA BRASILANDIA', 11, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1561, 'NOVA CANAA DO NORTE', 11, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1562, 'NOVA GUARITA', 11, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1563, 'NOVA MARILANDIA', 11, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1564, 'NOVA MARINGA', 11, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1565, 'NOVA MONTE VERDE', 11, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1566, 'NOVA MUTUM', 11, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1567, 'NOVA OLIMPIA', 11, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1568, 'NOVA SANTA HELENA', 11, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1569, 'NOVA UBIRATA', 11, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1570, 'NOVA XAVANTINA', 11, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1571, 'NOVO HORIZONTE DO NORTE', 11, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1572, 'NOVO MUNDO', 11, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1573, 'NOVO SAO JOAQUIM', 11, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1574, 'PARANAITA', 11, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1575, 'PARANATINGA', 11, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1576, 'PEDRA PRETA', 11, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1577, 'PEIXOTO DE AZEVEDO', 11, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1578, 'PLANALTO DA SERRA', 11, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1333, 'LAGOA DO MATO', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1334, 'LAGOA DOS RODRIGUES', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1335, 'LAGOA GRANDE DO MARANHAO', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1336, 'LAJEADO', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1337, 'LAJEADO NOVO', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1338, 'LAJEADO VELHO', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1339, 'LEANDRO', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1340, 'LIMA CAMPOS', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1341, 'LORETO', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1342, 'LUIS DOMINGUES', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1343, 'MAGALHAES DE ALMEIDA', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1344, 'MANGUEIRA', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1345, 'MARACACUME', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1346, 'MARAJA DO SENA', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1347, 'MARANHAOZINHO', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1348, 'MARIANOPOLIS', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1349, 'MATA ROMA', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1350, 'MATINHA', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1351, 'MATOES', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1352, 'MATOES DO NORTE', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1353, 'MILAGRES DO MARANHAO', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1354, 'MIMOSO', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1355, 'MIRADOR', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1356, 'MIRANDA DO NORTE', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1357, 'MIRINZAL', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1358, 'MONCAO', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1359, 'MONTE CASTELO', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1360, 'MONTES ALTOS', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1361, 'MORRO DOS CABOCLOS', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1362, 'MORROS', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1363, 'MUNDO NOVO', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1364, 'NAZARE DO BRUNO', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1365, 'NINA RODRIGUES', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1366, 'NOVA BRASILIA', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1367, 'NOVA COLINAS', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1368, 'NOVA IORQUE', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1369, 'NOVA OLINDA DO MARANHAO', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1370, 'NOVO BACABAL', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1371, 'OLHO DAGUA', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1372, 'OLHO D´AGUA DAS CUNHAS', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1373, 'OLINDA NOVA DO MARANHAO', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1374, 'PACAS', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1375, 'PACIENCIA', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1376, 'PACO DO LUMIAR', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1377, 'PALMAS', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1378, 'PALMEIRANDIA', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1379, 'PARAIBANO', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1380, 'PARNARAMA', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1381, 'PASSAGEM BOA', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1382, 'PASSAGEM FRANCA', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1383, 'PASTOS BONS', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1384, 'PAULINO NEVES', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1385, 'PAULO RAMOS', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1386, 'PEDREIRAS', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1387, 'PEDRO DO ROSARIO', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1388, 'PENALVA', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1389, 'PEQUIA', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1390, 'PERI MIRIM', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1391, 'PERITORO', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1392, 'PINDARE MIRIM', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1393, 'PINDORAMA', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1394, 'PINHEIRO', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1395, 'PIO XII', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1396, 'PIRAPEMAS', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1397, 'POCAO DE PEDRAS', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1398, 'PORTO FRANCO', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1399, 'PORTO RICO DO MARANHAO', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1400, 'PRESIDENTE DUTRA', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1401, 'PRESIDENTE JUSCELINO', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1402, 'PRESIDENTE MEDICI', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1403, 'PRESIDENTE SARNEY', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1404, 'PRESIDENTE VARGAS', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1405, 'PRIMEIRA CRUZ', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1406, 'PRIMEIRO COCAL', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1407, 'RAPOSA', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1408, 'REMANSO', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1409, 'RIACHAO', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1410, 'RIBAMAR FIQUENE', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1411, 'RIO NOVO', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1412, 'ROSARIO', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1413, 'SABONETE', 10, 28);
commit;
prompt 4500 records committed...
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1414, 'SALGADINHO', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1415, 'SAMBAIBA', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1416, 'SANTA FILOMENA DO MARANHAO', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1417, 'SANTA HELENA', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1418, 'SANTA INES', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1419, 'SANTA LUZIA', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1420, 'SANTA LUZIA DO PARUA', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1421, 'SANTA QUITERIA DO MARANHAO', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1422, 'SANTA RITA', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1423, 'SANTA VITORIA', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1424, 'SANTANA DO MARANHAO', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1425, 'SANTO AMARO DO MARANHAO', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1426, 'SANTO ANTONIO DOS LOPES', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1427, 'SANTO ANTONIO DOS VIEIRAS', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1428, 'SAO BENEDITO DO RIO PRETO', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1429, 'SAO BENTO', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1430, 'SAO BERNARDO', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1431, 'SAO DOMINGOS DO AZEITAO', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1432, 'SAO DOMINGOS DO MARANHAO', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1433, 'SAO FELIX DE BALSAS', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1434, 'SAO FRANCISCO DO BREJAO', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1435, 'SAO FRANCISCO DO MARANHAO', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1436, 'SAO JOAO', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1437, 'SAO JOAO BATISTA', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1438, 'SAO JOAO DO CARU', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1439, 'SAO JOAO DO PARAISO', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1440, 'SAO JOAO DO SOTER', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1441, 'SAO JOAO DOS PATOS', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1442, 'SAO JOSE DAS VERDADES', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1443, 'SAO JOSE DE RIBAMAR', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1444, 'SAO JOSE DO MEARIM', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1445, 'SAO JOSE DOS BASILIOS', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1446, 'SAO LUIS', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1447, 'SAO LUIS GONZAGA DO MARANHAO', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1448, 'SAO MATEUS DO MARANHAO', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1449, 'SAO PAULO APOSTOLO', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1450, 'SAO PEDRO DA AGUA BRANCA', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1451, 'SAO PEDRO DOS CRENTES', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1207, 'ARAIOSES', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1208, 'ARAME', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1209, 'ARARI', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1210, 'ARRAIAS', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1211, 'AXIXA', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1212, 'BACABAL', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1213, 'BACABEIRA', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1214, 'BACURI', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1215, 'BACURI DO RIACHAO', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1216, 'BACURITUBA', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1217, 'BALSAS', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1218, 'BARAO DE GRAJAU', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1219, 'BARRA DO CORDA', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1220, 'BARREIRINHAS', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1221, 'BATATEIRA', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1222, 'BELA VISTA DO MARANHAO', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1223, 'BELAGUA', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1224, 'BENEDITO LEITE', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1225, 'BEQUIMAO', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1226, 'BERNARDO DO MEARIM', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1227, 'BOA VISTA DA TABUA', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1228, 'BOA VISTA DO GURUPI', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1229, 'BOM JARDIM', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1230, 'BOM JESUS DAS SELVAS', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1231, 'BOM LUGAR', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1232, 'BOM PRINCIPIO', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1233, 'BREJINHO', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1234, 'BREJO', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1235, 'BREJO DE AREIA', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1236, 'BURITI', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1237, 'BURITI BRAVO', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1238, 'BURITICUPU', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1239, 'BURITIRAMA', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1240, 'BURITIRANA', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1241, 'CACHOEIRA GRANDE', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1242, 'CACHOEIRINHA', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1243, 'CAJAPIO', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1244, 'CAJARI', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1245, 'CAJAZEIRAS', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1246, 'CAJAZEIRAS II', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1247, 'CAJUAPARA', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1248, 'CALUMBI', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1249, 'CAMPESTRE DO MARANHAO', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1250, 'CANDIDO MENDES', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1251, 'CANELEIRINHO', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1252, 'CANTANHEDE', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1253, 'CAPINZAL DO NORTE', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1254, 'CAROLINA', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1255, 'CARUTAPERA', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1256, 'CAXIAS', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1257, 'CEDRAL', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1258, 'CENTRAL DO MARANHAO', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1259, 'CENTRO DO GUILHERME', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1260, 'CENTRO DO MARCOLINO', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1261, 'CENTRO DO ROQUE', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1262, 'CENTRO DO TOINHO', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1263, 'CENTRO DOS CARLOS', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1264, 'CENTRO DOS RAMOS', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1265, 'CENTRO NOVO DO MARANHAO', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1266, 'CHAPADINHA', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1267, 'CIDELANDIA', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1268, 'CLEMENTE', 10, 28);
commit;
prompt 4600 records committed...
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1269, 'COCAL DOS CABRITOS', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1270, 'COCOS', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1271, 'CODO', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1272, 'COELHO NETO', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1273, 'COLINAS', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1274, 'CONCEICAO DO LAGO-ACU', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1275, 'COPAIBA', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1276, 'COROATA', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1277, 'CORREGO NOVO', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1278, 'CRIOLI DO JOVIANO', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1279, 'CRIOLIZAO', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1280, 'CRIOLIZINHO', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1281, 'CUMARU', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1282, 'CURURUPU', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1283, 'CURVELANDIA', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1284, 'DAVINOPOLIS', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1285, 'DOM PEDRO', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1286, 'DUQUE BACELAR', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1287, 'ENGENHO D AGUA', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1288, 'ESPERANTINOPOLIS', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1289, 'ESTREITO', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1290, 'FEIRA NOVA DO MARANHAO', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1291, 'FERNANDO FALCAO', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1292, 'FLORES', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1293, 'FORMOSA DA SERRA NEGRA', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1294, 'FORTALEZA DOS NOGUEIRAS', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1295, 'FORTUNA', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1296, 'GARROTA', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1297, 'GERAIS DE BALSAS', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1298, 'GODOFREDO VIANA', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1299, 'GONCALVES DIAS', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1300, 'GOVERNADOR ARCHER', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1301, 'GOVERNADOR EDISON LOBAO', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1302, 'GOVERNADOR EUGENIO BARROS', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1303, 'GOVERNADOR LUIZ ROCHA', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1304, 'GOVERNADOR NEWTON BELLO', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1305, 'GOVERNADOR NUNES FREIRE', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1306, 'GRACA ARANHA', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1307, 'GRAJAU', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1308, 'GROTAO', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1309, 'GUIMARAES', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1310, 'HUMBERTO DE CAMPOS', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1311, 'ICATU', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1312, 'IGARAPE DO MEIO', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1313, 'IGARAPE GRANDE', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1314, 'IMPERATRIZ', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1315, 'IPIRANGA', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1316, 'ITAIPAVA DO GRAJAU', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1317, 'ITAPECURU MIRIM', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1318, 'ITINGA DO MARANHAO', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1319, 'JACARE', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1320, 'JATOBA', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1321, 'JENIPAPO', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1322, 'JENIPAPO DOS VIEIRAS', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1323, 'JOAO LISBOA', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1324, 'JOSELANDIA', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1325, 'JUNCO DO MARANHAO', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1326, 'KM 17', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1327, 'LAGO DA PEDRA', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1328, 'LAGO DO JUNCO', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1329, 'LAGO DOS RODRIGUES', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1330, 'LAGO VERDE', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1331, 'LAGOA COMPRIDA', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1332, 'LAGOA DO COCO', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1085, 'MUTUNOPOLIS', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1086, 'NAZARIO', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1087, 'NEROPOLIS', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1088, 'NILOPOLIS', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1089, 'NIQUELANDIA', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1090, 'NOVA AMERICA', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1091, 'NOVA AURORA', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1092, 'NOVA CRIXAS', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1093, 'NOVA GLORIA', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1094, 'NOVA IGUACU DE GOIAS', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1095, 'NOVA ROMA', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1096, 'NOVA VENEZA', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1097, 'NOVO BRASIL', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1098, 'NOVO GAMA', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1099, 'NOVO PLANALTO', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1100, 'ORIZONA', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1101, 'OURO VERDE DE GOIAS', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1102, 'OUROANA', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1103, 'OUVIDOR', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1104, 'PADRE BERNARDO', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1105, 'PALESTINA DE GOIAS', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1106, 'PALMEIRAS DE GOIAS', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1107, 'PALMELO', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1108, 'PALMEUNA', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1109, 'PALMINOPOLIS', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1110, 'PANAMA', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1111, 'PARANAIGUARA', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1112, 'PARAUNA', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1113, 'PEROLANDIA', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1114, 'PETROLINA DE GOIAS', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1115, 'PILAR DE GOIAS', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1116, 'PIRACANJUBA', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1117, 'PIRANHAS', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1118, 'PIRENOPOLIS', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1119, 'PIRES BELO', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1120, 'PIRES DO RIO', 9, 28);
commit;
prompt 4700 records committed...
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1121, 'PLANALTINA', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1122, 'PONTALINA', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1123, 'PORANGATU', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1124, 'PORTEIRAO', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1125, 'PORTELANDIA', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1126, 'POSSE', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1127, 'PROFESSOR JAMIL', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1128, 'QUIRINOPOLIS', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1129, 'RIALMA', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1130, 'RIANAPOLIS', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1131, 'RIO QUENTE', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1132, 'RIO VERDE', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1133, 'RIVERLANDIA', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1134, 'ROCHEDO', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1135, 'RUBIATABA', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1136, 'SANCLERLANDIA', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1137, 'SANTA BARBARA DE GOIAS', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1138, 'SANTA CRUZ DE GOIAS', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1139, 'SANTA FE DE GOIAS', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1140, 'SANTA HELENA DE GOIAS', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1141, 'SANTA ISABEL', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1142, 'SANTA RITA DO ARAGUAIA', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1143, 'SANTA RITA DO NOVO DESTINO', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1144, 'SANTA ROSA DA MEIA PONTE', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1145, 'SANTA ROSA DE GOIAS', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1146, 'SANTA TEREZA DE GOIAS', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1147, 'SANTA TEREZINHA DE GOIAS', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1148, 'SANTO ANTONIO DA BARRA', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1149, 'SANTO ANTONIO DE GOIAS', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1150, 'SANTO ANTONIO DO DESCOBERTO', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1151, 'SANTO ANTONIO DO RIO VERDE', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1152, 'SAO DOMINGOS', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1153, 'SAO FRANCISCO DE GOIAS', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1154, 'SAO JOAO DA PARAUNA', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1155, 'SAO JOAO D´ALIANCA', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1156, 'SAO LUIS DE MONTES BELOS', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1157, 'SAO LUIZ DO NORTE', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1158, 'SAO MIGUEL DO ARAGUAIA', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1159, 'SAO MIGUEL DO PASSA QUATRO', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1160, 'SAO PATRICIO', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1161, 'SAO SIMAO', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1162, 'SENADOR CANEDO', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1163, 'SERRANOPOLIS', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1164, 'SILVANIA', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1165, 'SITIO D´ABADIA', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1166, 'TAQUARAL DE GOIAS', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1167, 'TERESINA DE GOIAS', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1168, 'TEREZOPOLIS DE GOIAS', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1169, 'TRES RANCHOS', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1170, 'TRINDADE', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1171, 'TROMBAS', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1172, 'TURVANIA', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1173, 'TURVELANDIA', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1174, 'UIRAPURU', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1175, 'URUACU', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1176, 'URUANA', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1177, 'URUTAI', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1178, 'VALPARAISO DE GOIAS', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1179, 'VARJAO', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1180, 'VIANOPOLIS', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1181, 'VICENTINOPOLIS', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1182, 'VILA PROPICIO', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1183, 'ACAILANDIA', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1184, 'ACAIZAL GRANDE', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1185, 'AFONSO CUNHA', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1186, 'AGUA DOCE DO MARANHAO', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1187, 'ALCANTARA', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1188, 'ALDEIAS ALTAS', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1189, 'ALTAMIRA DO MARANHAO', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1190, 'ALTO ALEGRE DO MARANHAO', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1191, 'ALTO ALEGRE DO PINDARE', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1192, 'ALTO ALEGRE I', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1193, 'ALTO BONITO', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1194, 'ALTO BRASIL', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1195, 'ALTO DE AREIA I', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1196, 'ALTO DO BOM SOSSEGO', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1197, 'ALTO DO COCO', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1198, 'ALTO PARNAIBA', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1199, 'AMAPA DO MARANHAO', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1200, 'AMARANTE DO MARANHAO', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1201, 'ANAJATUBA', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1202, 'ANAPURUS', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1203, 'ANDIROBAL', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1204, 'ANGICAL', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1205, 'APICUM-ACU', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1206, 'ARAGUANA', 10, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (951, 'ARUANA', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (952, 'AURILANDIA', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (953, 'AVELINOPOLIS', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (954, 'BALIZA', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (955, 'BARRO ALTO', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (956, 'BELA VISTA DE GOIAS', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (957, 'BOM JARDIM DE GOIAS', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (958, 'BOM JESUS', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (959, 'BONFINOPOLIS', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (960, 'BONOPOLIS', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (961, 'BRAZABRANTES', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (962, 'BRITANIA', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (963, 'BURITI ALEGRE', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (964, 'BURITI DE GOIAS', 9, 28);
commit;
prompt 4800 records committed...
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (965, 'BURITINOPOLIS', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (966, 'CABECEIRAS', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (967, 'CACHOEIRA ALTA', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (968, 'CACHOEIRA DE GOIAS', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (969, 'CACHOEIRA DOURADA', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (970, 'CACU', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (971, 'CAIAPONIA', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (972, 'CALDAS NOVAS', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (973, 'CALDAZINHA', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (974, 'CAMPESTRE DE GOIAS', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (975, 'CAMPINACU', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (976, 'CAMPINORTE', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (977, 'CAMPO ALEGRE DE GOIAS', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (978, 'CAMPOS BELOS', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (979, 'CAMPOS VERDES', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (980, 'CAPELINHA', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (981, 'CARMO DO RIO VERDE', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (982, 'CASTELANDIA', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (983, 'CATALAO', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (984, 'CATURAI', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (985, 'CAVALCANTE', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (986, 'CERES', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (987, 'CEZARINA', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (988, 'CHAPADAO DO CEU', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (989, 'CHOUPANA', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (990, 'CIDADE OCIDENTAL', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (991, 'CLAUDINAPOLIS', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (992, 'COCALZINHO DE GOIAS', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (993, 'COLINAS DO SUL', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (994, 'CORREGO DO OURO', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (995, 'CORUMBA DE GOIAS', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (996, 'CORUMBAIBA', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (997, 'CRISTALINA', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (998, 'CRISTIANOPOLIS', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (999, 'CRIXAS', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1000, 'CROMINIA', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1001, 'CUMARI', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1002, 'DAMIANOPOLIS', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1003, 'DAMOLANDIA', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1004, 'DAVINOPOLIS', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1005, 'DIORAMA', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1006, 'DIVINOPOLIS DE GOIAS', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1007, 'DOIS IRMAOS', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1008, 'DOMICIANO RIBEIRO', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1009, 'DOVERLANDIA', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1010, 'EDEALINA', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1011, 'EDEIA', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1012, 'ESTRELA DO NORTE', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1013, 'FAINA', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1014, 'FAZENDA NOVA', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1015, 'FIRMINOPOLIS', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1016, 'FLORES DE GOIAS', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1017, 'FORMOSA', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1018, 'FORMOSO', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1019, 'GOIANAPOLIS', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1020, 'GOIANDIRA', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1021, 'GOIANESIA', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1022, 'GOIANIA', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1023, 'GOIANIRA', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1024, 'GOIAS', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1025, 'GOIATUBA', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1026, 'GOUVELANDIA', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1027, 'GUAPO', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1028, 'GUARAITA', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1029, 'GUARANI DE GOIAS', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1030, 'GUARINOS', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1031, 'HEITORAI', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1032, 'HIDROLANDIA', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1033, 'HIDROLINA', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1034, 'IACIARA', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1035, 'INACIOLANDIA', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1036, 'INDIARA', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1037, 'INHUMAS', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1038, 'IPAMERI', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1039, 'IPORA', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1040, 'ISRAELANDIA', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1041, 'ITABERAI', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1042, 'ITAGUACU', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1043, 'ITAGUARI', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1044, 'ITAGUARU', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1045, 'ITAJA', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1046, 'ITAPACI', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1047, 'ITAPIRAPUA', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1048, 'ITAPURANGA', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1049, 'ITARUMA', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1050, 'ITAUCU', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1051, 'ITUMBIARA', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1052, 'IVOLANDIA', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1053, 'JANDAIA', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1054, 'JARAGUA', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1055, 'JATAI', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1056, 'JAUPACI', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1057, 'JESUPOLIS', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1058, 'JOVIANIA', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1059, 'JUSSARA', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1060, 'LAGOA DO BAUZINHO', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1061, 'LAGOA SANTA', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1062, 'LEOPOLDO DE BULHOES', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1063, 'LINDA VISTA', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1064, 'LUZIANIA', 9, 28);
commit;
prompt 4900 records committed...
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1065, 'MAIRIPOTABA', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1066, 'MAMBAI', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1067, 'MARA ROSA', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1068, 'MARCIANOPOLIS', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1069, 'MARZAGAO', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1070, 'MATRINCHA', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1071, 'MAURILANDIA', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1072, 'MIMOSO DE GOIAS', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1073, 'MINACU', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1074, 'MINEIROS', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1075, 'MOIPORA', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1076, 'MONTE ALEGRE DE GOIAS', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1077, 'MONTES CLAROS DE GOIAS', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1078, 'MONTIVIDIU', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1079, 'MONTIVIDIU DO NORTE', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1080, 'MORRINHOS', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1081, 'MORRO AGUDO DE GOIAS', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1082, 'MOSSAMEDES', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1083, 'MOZARLANDIA', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1084, 'MUNDO NOVO', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (821, 'SAO GONCALO DO AMARANTE', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (822, 'SAO JOAO DO JAGUARIBE', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (823, 'SAO LUIS DO CURU', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (824, 'SENADOR POMPEU', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (825, 'SENADOR SA', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (826, 'SOBRAL', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (827, 'SOLONOPOLE', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (828, 'TABULEIRO DO NORTE', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (829, 'TAMBORIL', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (830, 'TARRAFAS', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (831, 'TAUA', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (832, 'TEJUCUOCA', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (833, 'TIANGUA', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (834, 'TRAIRI', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (835, 'TURURU', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (836, 'UBAJARA', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (837, 'UMARI', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (838, 'UMIRIM', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (839, 'URUBURETAMA', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (840, 'URUOCA', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (841, 'VARJOTA', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (842, 'VARZEA ALEGRE', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (843, 'VICOSA DO CEARA', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (844, 'BRASILIA', 7, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (845, 'AFONSO CLAUDIO', 8, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (846, 'AGUA DOCE DO NORTE', 8, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (847, 'AGUIA BRANCA', 8, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (848, 'ALEGRE', 8, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (849, 'ALFREDO CHAVES', 8, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (850, 'ALTO RIO NOVO', 8, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (851, 'ANCHIETA', 8, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (852, 'APIACA', 8, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (853, 'ARACRUZ', 8, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (854, 'ATILIO VIVACQUA', 8, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (855, 'BAIXO GUANDU', 8, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (856, 'BARRA DE SAO FRANCISCO', 8, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (857, 'BOA ESPERANCA', 8, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (858, 'BOM JESUS DO NORTE', 8, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (859, 'BREJETUBA', 8, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (860, 'CACHOEIRO DE ITAPEMIRIM', 8, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (861, 'CARIACICA', 8, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (862, 'CASTELO', 8, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (863, 'COLATINA', 8, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (864, 'CONCEICAO DA BARRA', 8, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (865, 'CONCEICAO DO CASTELO', 8, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (866, 'DIVINO DE SAO LOURENCO', 8, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (867, 'DOMINGOS MARTINS', 8, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (868, 'DORES DO RIO PRETO', 8, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (869, 'ECOPORANGA', 8, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (870, 'FUNDAO', 8, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (871, 'GUACUI', 8, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (872, 'GUARAPARI', 8, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (873, 'IBATIBA', 8, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (874, 'IBIRACU', 8, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (875, 'IBITIRAMA', 8, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (876, 'ICONHA', 8, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (877, 'IRUPI', 8, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (878, 'ITAGUACU', 8, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (879, 'ITAPEMIRIM', 8, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (880, 'ITARANA', 8, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (881, 'IUNA', 8, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (882, 'JAGUARE', 8, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (883, 'JERONIMO MONTEIRO', 8, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (884, 'JOAO NEIVA', 8, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (885, 'LARANJA DA TERRA', 8, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (886, 'LINHARES', 8, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (887, 'MANTENOPOLIS', 8, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (888, 'MARATAIZES', 8, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (889, 'MARECHAL FLORIANO', 8, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (890, 'MARILANDIA', 8, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (891, 'MIMOSO DO SUL', 8, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (892, 'MONTANHA', 8, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (893, 'MUCURICI', 8, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (894, 'MUNIZ FREIRE', 8, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (895, 'MUQUI', 8, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (896, 'NOVA VENECIA', 8, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (897, 'PANCAS', 8, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (898, 'PEDRO CANARIO', 8, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (899, 'PINHEIROS', 8, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (900, 'PIUMA', 8, 28);
commit;
prompt 5000 records committed...
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (901, 'PONTO BELO', 8, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (902, 'PRESIDENTE KENNEDY', 8, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (903, 'RIO BANANAL', 8, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (904, 'RIO NOVO DO SUL', 8, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (905, 'SANTA LEOPOLDINA', 8, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (906, 'SANTA MARIA DE JETIBA', 8, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (907, 'SANTA TERESA', 8, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (908, 'SAO DOMINGOS DO NORTE', 8, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (909, 'SAO GABRIEL DA PALHA', 8, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (910, 'SAO JOSE DO CALCADO', 8, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (911, 'SAO MATEUS', 8, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (912, 'SAO ROQUE DO CANAA', 8, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (913, 'SERRA', 8, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (914, 'SOORETAMA', 8, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (915, 'VARGEM ALTA', 8, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (916, 'VENDA NOVA DO IMIGRANTE', 8, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (917, 'VIANA', 8, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (918, 'VILA PAVAO', 8, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (919, 'VILA VALERIO', 8, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (920, 'VILA VELHA', 8, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (921, 'VITORIA', 8, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (922, 'ABADIA DE GOIAS', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (923, 'ABADIANIA', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (924, 'ACREUNA', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (925, 'ADELANDIA', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (926, 'AGUA FRIA DE GOIAS', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (927, 'AGUA LIMPA', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (928, 'AGUAS LINDAS DE GOIAS', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (929, 'ALEXANIA', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (930, 'ALMERINDONOPOLIS', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (931, 'ALOANDIA', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (932, 'ALTO HORIZONTE', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (933, 'ALTO PARAISO DE GOIAS', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (934, 'ALVORADA DO NORTE', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (935, 'AMARALINA', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (936, 'AMERICANO DO BRASIL', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (937, 'AMORINOPOLIS', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (938, 'ANAPOLIS', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (939, 'ANHANGUERA', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (940, 'ANICUNS', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (941, 'APARECIDA DE GOIANIA', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (942, 'APARECIDA DO RIO DOCE', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (943, 'APARECIDA FARTURA', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (944, 'APORE', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (945, 'ARACU', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (946, 'ARAGARCAS', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (947, 'ARAGOIANIA', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (948, 'ARAGUAPAZ', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (949, 'ARANTINA', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (950, 'ARENOPOLIS', 9, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (678, 'ASSARE', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (679, 'AURORA', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (680, 'BAIXIO', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (681, 'BANABUIU', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (682, 'BARBALHA', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (683, 'BARREIRA', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (684, 'BARRO', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (685, 'BARROQUINHA', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (686, 'BATURITE', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (687, 'BEBERIBE', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (688, 'BELA CRUZ', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (689, 'BOA VIAGEM', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (690, 'BREJO SANTO', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (691, 'CAMOCIM', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (692, 'CAMPOS SALES', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (693, 'CANINDE', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (694, 'CAPISTRANO', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (695, 'CARIDADE', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (696, 'CARIRE', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (697, 'CARIRIACU', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (698, 'CARIUS', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (699, 'CARNAUBAL', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (700, 'CASCAVEL', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (701, 'CATARINA', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (702, 'CATUNDA', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (703, 'CAUCAIA', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (704, 'CEDRO', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (705, 'CHAVAL', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (706, 'CHORO', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (707, 'CHOROZINHO', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (708, 'COREAU', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (709, 'CRATEUS', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (710, 'CRATO', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (711, 'CROATA', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (712, 'CRUZ', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (713, 'DEPUTADO IRAPUAN PINHEIRO', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (714, 'ERERE', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (715, 'EUSEBIO', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (716, 'FARIAS BRITO', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (717, 'FORQUILHA', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (718, 'FORTALEZA', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (719, 'FORTIM', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (720, 'FRECHEIRINHA', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (721, 'GENERAL SAMPAIO', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (722, 'GRACA', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (723, 'GRANJA', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (724, 'GRANJEIRO', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (725, 'GROAIRAS', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (726, 'GUAIUBA', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (727, 'GUARACIABA DO NORTE', 6, 28);
commit;
prompt 5100 records committed...
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (728, 'GUARAMIRANGA', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (729, 'HIDROLANDIA', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (730, 'HORIZONTE', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (731, 'IBARETAMA', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (732, 'IBIAPINA', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (733, 'IBICUITINGA', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (734, 'ICAPUI', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (735, 'ICO', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (736, 'IGUATU', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (737, 'INDEPENDENCIA', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (738, 'IPAPORANGA', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (739, 'IPAUMIRIM', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (740, 'IPU', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (741, 'IPUEIRAS', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (742, 'IRACEMA', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (743, 'IRAUCUBA', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (744, 'ITAICABA', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (745, 'ITAITINGA', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (746, 'ITAPAGE', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (747, 'ITAPIPOCA', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (748, 'ITAPIUNA', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (749, 'ITAREMA', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (750, 'ITATIRA', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (751, 'JAGUARETAMA', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (752, 'JAGUARIBARA', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (753, 'JAGUARIBE', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (754, 'JAGUARUANA', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (755, 'JARDIM', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (756, 'JATI', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (757, 'JIJOCA DE JERICOACOARA', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (758, 'JUAZEIRO DO NORTE', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (759, 'JUCAS', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (760, 'LAVRAS DA MANGABEIRA', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (761, 'LIMOEIRO DO NORTE', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (762, 'MADALENA', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (763, 'MARACANAU', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (764, 'MARANGUAPE', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (765, 'MARCO', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (766, 'MARTINOPOLE', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (767, 'MASSAPE', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (768, 'MAURITI', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (769, 'MERUOCA', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (770, 'MILAGRES', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (771, 'MILHA', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (772, 'MIRAIMA', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (773, 'MISSAO VELHA', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (774, 'MOMBACA', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (775, 'MONSENHOR TABOSA', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (776, 'MORADA NOVA', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (777, 'MORAUJO', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (778, 'MORRINHOS', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (779, 'MUCAMBO', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (780, 'MULUNGU', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (781, 'NOVA OLINDA', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (782, 'NOVA RUSSAS', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (783, 'NOVO ORIENTE', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (784, 'OCARA', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (785, 'OROS', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (786, 'PACAJUS', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (787, 'PACATUBA', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (788, 'PACOTI', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (789, 'PACUJA', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (790, 'PALHANO', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (791, 'PALMACIA', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (792, 'PARACURU', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (793, 'PARAIPABA', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (794, 'PARAMBU', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (795, 'PARAMOTI', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (796, 'PEDRA BRANCA', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (797, 'PENAFORTE', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (798, 'PENTECOSTE', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (799, 'PEREIRO', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (800, 'PINDORETAMA', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (801, 'PIQUET CARNEIRO', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (802, 'PIRES FERREIRA', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (803, 'PORANGA', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (804, 'PORTEIRAS', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (805, 'POTENGI', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (806, 'POTIRETAMA', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (807, 'QUITERIANOPOLIS', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (808, 'QUIXADA', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (809, 'QUIXELO', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (810, 'QUIXERAMOBIM', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (811, 'QUIXERE', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (812, 'REDENCAO', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (813, 'RERIUTABA', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (814, 'RUSSAS', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (815, 'SABOEIRO', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (816, 'SALITRE', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (817, 'SANTA QUITERIA', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (818, 'SANTANA DO ACARAU', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (819, 'SANTANA DO CARIRI', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (820, 'SAO BENEDITO', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (548, 'PLANALTINO', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (549, 'PLANALTO', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (550, 'POCOES', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (551, 'POJUCA', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (552, 'PONTO NOVO', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (553, 'PORTO SEGURO', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (554, 'POTIRAGUA', 5, 28);
commit;
prompt 5200 records committed...
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (555, 'PRADO', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (556, 'PRESIDENTE DUTRA', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (557, 'PRESIDENTE JANIO QUADROS', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (558, 'PRESIDENTE TANCREDO NEVES', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (559, 'QUEIMADAS', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (560, 'QUIJINGUE', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (561, 'QUIXABEIRA', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (562, 'RAFAEL JAMBEIRO', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (563, 'REMANSO', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (564, 'RETIROLANDIA', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (565, 'RIACHAO DAS NEVES', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (566, 'RIACHAO DO JACUIPE', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (567, 'RIACHO DE SANTANA', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (568, 'RIBEIRA DO AMPARO', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (569, 'RIBEIRA DO POMBAL', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (570, 'RIBEIRAO DO LARGO', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (571, 'RIO DE CONTAS', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (572, 'RIO DO ANTONIO', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (573, 'RIO DO PIRES', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (574, 'RIO REAL', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (575, 'RODELAS', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (576, 'RUY BARBOSA', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (577, 'SALINAS DA MARGARIDA', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (578, 'SALVADOR', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (579, 'SANTA BARBARA', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (580, 'SANTA BRIGIDA', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (581, 'SANTA CRUZ CABRALIA', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (582, 'SANTA CRUZ DA VITORIA', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (583, 'SANTA INES', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (584, 'SANTA LUZIA', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (585, 'SANTA MARIA DA VITORIA', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (586, 'SANTA RITA DE CASSIA', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (587, 'SANTA TERESINHA', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (588, 'SANTALUZ', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (589, 'SANTANA', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (590, 'SANTANOPOLIS', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (591, 'SANTO AMARO', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (592, 'SANTO ANTONIO DE JESUS', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (593, 'SANTO ESTEVAO', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (594, 'SAO DESIDERIO', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (595, 'SAO DOMINGOS', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (596, 'SAO FELIPE', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (597, 'SAO FELIX', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (598, 'SAO FELIX DO CORIBE', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (599, 'SAO FRANCISCO DO CONDE', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (600, 'SAO GABRIEL', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (601, 'SAO GONCALO DOS CAMPOS', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (602, 'SAO JOSE DA VITORIA', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (603, 'SAO JOSE DO JACUIPE', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (604, 'SAO MIGUEL DAS MATAS', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (605, 'SAO SEBASTIAO DO PASSE', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (606, 'SAPEACU', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (607, 'SATIRO DIAS', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (608, 'SAUBARA', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (609, 'SAUDE', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (610, 'SEABRA', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (611, 'SEBASTIAO LARANJEIRAS', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (612, 'SENHOR DO BONFIM', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (613, 'SENTO SE', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (614, 'SERRA DO RAMALHO', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (615, 'SERRA DOURADA', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (616, 'SERRA PRETA', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (617, 'SERRINHA', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (618, 'SERROLANDIA', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (619, 'SIMOES FILHO', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (620, 'SITIO DO MATO', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (621, 'SITIO DO QUINTO', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (622, 'SOBRADINHO', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (623, 'SOUTO SOARES', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (624, 'TABOCAS DO BREJO VELHO', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (625, 'TANHACU', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (626, 'TANQUE NOVO', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (627, 'TANQUINHO', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (628, 'TAPEROA', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (629, 'TAPIRAMUTA', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (630, 'TEIXEIRA DE FREITAS', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (631, 'TEODORO SAMPAIO', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (632, 'TEOFILANDIA', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (633, 'TEOLANDIA', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (634, 'TERRA NOVA', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (635, 'TREMEDAL', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (636, 'TUCANO', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (637, 'UAUA', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (638, 'UBAIRA', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (639, 'UBAITABA', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (640, 'UBATA', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (641, 'UIBAI', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (642, 'UMBURANAS', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (643, 'UNA', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (644, 'URANDI', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (645, 'URUCUCA', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (646, 'UTINGA', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (647, 'VALENCA', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (648, 'VALENTE', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (649, 'VARZEA DA ROCA', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (650, 'VARZEA DO POCO', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (651, 'VARZEA NOVA', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (652, 'VARZEDO', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (653, 'VERA CRUZ', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (654, 'VEREDA', 5, 28);
commit;
prompt 5300 records committed...
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (655, 'VITORIA DA CONQUISTA', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (656, 'WAGNER', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (657, 'WANDERLEY', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (658, 'WENCESLAU GUIMARAES', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (659, 'XIQUE-XIQUE', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (660, 'ABAIARA', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (661, 'ACARAPE', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (662, 'ACARAU', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (663, 'ACOPIARA', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (664, 'AIUABA', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (665, 'ALCANTARAS', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (666, 'ALTANEIRA', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (667, 'ALTO SANTO', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (668, 'AMONTADA', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (669, 'ANTONINA DO NORTE', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (670, 'APUIARES', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (671, 'AQUIRAZ', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (672, 'ARACATI', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (673, 'ARACOIABA', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (674, 'ARARENDA', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (675, 'ARARIPE', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (676, 'ARATUBA', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (677, 'ARNEIROZ', 6, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (407, 'ILHEUS', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (408, 'INHAMBUPE', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (409, 'IPECAETA', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (410, 'IPIAU', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (411, 'IPIRA', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (412, 'IPUPIARA', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (413, 'IRAJUBA', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (414, 'IRAMAIA', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (415, 'IRAQUARA', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (416, 'IRARA', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (417, 'IRECE', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (418, 'ITABELA', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (419, 'ITABERABA', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (420, 'ITABUNA', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (421, 'ITACARE', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (422, 'ITAETE', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (423, 'ITAGI', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (424, 'ITAGIBA', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (425, 'ITAGIMIRIM', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (426, 'ITAGUACU DA BAHIA', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (427, 'ITAJU DO COLONIA', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (428, 'ITAJUIPE', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (429, 'ITAMARAJU', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (430, 'ITAMARI', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (431, 'ITAMBE', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (432, 'ITANAGRA', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (433, 'ITANHEM', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (434, 'ITAPARICA', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (435, 'ITAPE', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (436, 'ITAPEBI', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (437, 'ITAPETINGA', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (438, 'ITAPICURU', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (439, 'ITAPITANGA', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (440, 'ITAQUARA', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (441, 'ITARANTIM', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (442, 'ITATIM', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (443, 'ITIRUCU', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (444, 'ITIUBA', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (445, 'ITORORO', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (446, 'ITUACU', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (447, 'ITUBERA', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (448, 'IUIU', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (449, 'JABORANDI', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (450, 'JACARACI', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (451, 'JACOBINA', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (452, 'JAGUAQUARA', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (453, 'JAGUARARI', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (454, 'JAGUARIPE', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (455, 'JANDAIRA', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (456, 'JEQUIE', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (457, 'JEREMOABO', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (458, 'JIQUIRICA', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (459, 'JITAUNA', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (460, 'JOAO DOURADO', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (461, 'JUAZEIRO', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (462, 'JUCURUCU', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (463, 'JUSSARA', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (464, 'JUSSARI', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (465, 'JUSSIAPE', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (466, 'LAFAIETE COUTINHO', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (467, 'LAGOA REAL', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (468, 'LAJE', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (469, 'LAJEDAO', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (470, 'LAJEDINHO', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (471, 'LAJEDO DO TABOCAL', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (472, 'LAMARAO', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (473, 'LAPAO', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (474, 'LAURO DE FREITAS', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (475, 'LENCOIS', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (476, 'LICINIO DE ALMEIDA', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (477, 'LIVRAMENTO DO BRUMADO', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (478, 'MACAJUBA', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (479, 'MACARANI', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (480, 'MACAUBAS', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (481, 'MACURURE', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (482, 'MADRE DE DEUS', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (483, 'MAETINGA', 5, 28);
commit;
prompt 5400 records committed...
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (484, 'MAIQUINIQUE', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (485, 'MAIRI', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (486, 'MALHADA', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (487, 'MALHADA DE PEDRAS', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (488, 'MANOEL VITORINO', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (489, 'MANSIDAO', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (490, 'MARACAS', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (491, 'MARAGOGIPE', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (492, 'MARAU', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (493, 'MARCIONILIO SOUZA', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (494, 'MASCOTE', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (495, 'MATA DE SAO JOAO', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (496, 'MATINA', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (497, 'MEDEIROS NETO', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (498, 'MIGUEL CALMON', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (499, 'MILAGRES', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (500, 'MIRANGABA', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (501, 'MIRANTE', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (502, 'MONTE SANTO', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (503, 'MORPARA', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (504, 'MORRO DO CHAPEU', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (505, 'MORTUGABA', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (506, 'MUCUGE', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (507, 'MUCURI', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (508, 'MULUNGU DO MORRO', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (509, 'MUNDO NOVO', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (510, 'MUNIZ FERREIRA', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (511, 'MUQUEM DE SAO FRANCISCO', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (512, 'MURITIBA', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (513, 'MUTUIPE', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (514, 'NAZARE', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (515, 'NILO PECANHA', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (516, 'NORDESTINA', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (517, 'NOVA CANAA', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (518, 'NOVA FATIMA', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (519, 'NOVA IBIA', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (520, 'NOVA ITARANA', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (521, 'NOVA REDENCAO', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (522, 'NOVA SOURE', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (523, 'NOVA VICOSA', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (524, 'NOVO HORIZONTE', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (525, 'NOVO TRIUNFO', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (526, 'OLINDINA', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (527, 'OLIVEIRA DOS BREJINHOS', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (528, 'OURICANGAS', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (529, 'OUROLANDIA', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (530, 'PALMAS DE MONTE ALTO', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (531, 'PALMEIRAS', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (532, 'PARAMIRIM', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (533, 'PARATINGA', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (534, 'PARIPIRANGA', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (535, 'PAU BRASIL', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (536, 'PAULO AFONSO', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (537, 'PE DE SERRA', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (538, 'PEDRAO', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (539, 'PEDRO ALEXANDRE', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (540, 'PIATA', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (541, 'PILAO ARCADO', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (542, 'PINDAI', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (543, 'PINDOBACU', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (544, 'PINTADAS', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (545, 'PIRAI DO NORTE', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (546, 'PIRIPA', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (547, 'PIRITIBA', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (271, 'ARATUIPE', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (272, 'AURELINO LEAL', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (273, 'BAIANOPOLIS', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (274, 'BAIXA GRANDE', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (275, 'BANZAE', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (276, 'BARRA', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (277, 'BARRA DA ESTIVA', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (278, 'BARRA DO CHOCA', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (279, 'BARRA DO MENDES', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (280, 'BARRA DO ROCHA', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (281, 'BARREIRAS', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (282, 'BARRO ALTO', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (283, 'BARRO PRETO', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (284, 'BELMONTE', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (285, 'BELO CAMPO', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (286, 'BIRITINGA', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (287, 'BOA NOVA', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (288, 'BOA VISTA DO TUPIM', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (289, 'BOM JESUS DA LAPA', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (290, 'BOM JESUS DA SERRA', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (291, 'BONINAL', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (292, 'BONITO', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (293, 'BOQUIRA', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (294, 'BOTUPORA', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (295, 'BREJOES', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (296, 'BREJOLANDIA', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (297, 'BROTAS DE MACAUBAS', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (298, 'BRUMADO', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (299, 'BUERAREMA', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (300, 'BURITIRAMA', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (301, 'CAATIBA', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (302, 'CABACEIRAS DO PARAGUACU', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (303, 'CACHOEIRA', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (304, 'CACULE', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (305, 'CAEM', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (306, 'CAETANOS', 5, 28);
commit;
prompt 5500 records committed...
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (307, 'CAETITE', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (308, 'CAFARNAUM', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (309, 'CAIRU', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (310, 'CALDEIRAO GRANDE', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (311, 'CAMACAN', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (312, 'CAMACARI', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (313, 'CAMAMU', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (314, 'CAMPO ALEGRE DE LOURDES', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (315, 'CAMPO FORMOSO', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (316, 'CANAL', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (317, 'CANAPOLIS', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (318, 'CANARANA', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (319, 'CANAVIEIRAS', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (320, 'CANDEAL', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (321, 'CANDEIAS', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (322, 'CANDIBA', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (323, 'CANDIDO SALES', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (324, 'CANSANCAO', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (325, 'CANUDOS', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (326, 'CAPELA DO ALTO ALEGRE', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (327, 'CAPIM GROSSO', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (328, 'CARAIBAS', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (329, 'CARAVELAS', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (330, 'CARDEAL DA SILVA', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (331, 'CARINHANHA', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (332, 'CASA NOVA', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (333, 'CASTRO ALVES', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (334, 'CATOLANDIA', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (335, 'CATU', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (336, 'CATURAMA', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (337, 'CENTRAL', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (338, 'CHORROCHO', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (339, 'CICERO DANTAS', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (340, 'CIPO', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (341, 'COARACI', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (342, 'COCOS', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (343, 'CONCEICAO DA FEIRA', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (344, 'CONCEICAO DO ALMEIDA', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (345, 'CONCEICAO DO COITE', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (346, 'CONCEICAO DO JACUIPE', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (347, 'CONDE', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (348, 'CONDEUBA', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (349, 'CONTENDAS DO SINCORA', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (350, 'CORACAO DE MARIA', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (351, 'CORDEIROS', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (352, 'CORIBE', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (353, 'CORONEL JOAO SA', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (354, 'CORRENTINA', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (355, 'COTEGIPE', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (356, 'CRAVOLANDIA', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (357, 'CRISOPOLIS', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (358, 'CRISTOPOLIS', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (359, 'CRUZ DAS ALMAS', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (360, 'CURACA', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (361, 'DARIO MEIRA', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (362, 'DIAS D´AVILA', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (363, 'DOM BASILIO', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (364, 'DOM MACEDO COSTA', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (365, 'ELISIO MEDRADO', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (366, 'ENCRUZILHADA', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (367, 'ENTRE RIOS', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (368, 'ERICO CARDOSO', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (369, 'ESPLANADA', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (370, 'EUCLIDES DA CUNHA', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (371, 'EUNAPOLIS', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (372, 'FATIMA', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (373, 'FEIRA DA MATA', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (374, 'FEIRA DE SANTANA', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (375, 'FILADELFIA', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (376, 'FIRMINO ALVES', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (377, 'FLORESTA AZUL', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (378, 'FORMOSA DO RIO PRETO', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (379, 'GANDU', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (380, 'GAVIAO', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (381, 'GENTIO DO OURO', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (382, 'GLORIA', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (383, 'GONGOGI', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (384, 'GOVERNADOR MANGABEIRA', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (385, 'GUAJERU', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (386, 'GUANAMBI', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (387, 'GUARATINGA', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (388, 'HELIOPOLIS', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (389, 'IACU', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (390, 'IBIASSUCE', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (391, 'IBICARAI', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (392, 'IBICOARA', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (393, 'IBICUI', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (394, 'IBIPEBA', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (395, 'IBIPITANGA', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (396, 'IBIQUERA', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (397, 'IBIRAPITANGA', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (398, 'IBIRAPUA', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (399, 'IBIRATAIA', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (400, 'IBITIARA', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (401, 'IBITITA', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (402, 'IBOTIRAMA', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (403, 'ICHU', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (404, 'IGAPORA', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (405, 'IGRAPIUNA', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (406, 'IGUAI', 5, 28);
commit;
prompt 5600 records committed...
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (133, 'SERRA DO NAVIO', 3, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (134, 'TARTARUGALZINHO', 3, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (135, 'VITORIA DO JARI', 3, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (136, 'ALVARAES', 4, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (137, 'AMATURA', 4, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (138, 'ANAMA', 4, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (139, 'ANORI', 4, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (140, 'APUI', 4, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (141, 'ATALAIA DO NORTE', 4, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (142, 'AUTAZES', 4, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (143, 'BARCELOS', 4, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (144, 'BARREIRINHA', 4, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (145, 'BELA VISTA', 4, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (146, 'BELEM', 4, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (147, 'BENJAMIN CONSTANT', 4, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (148, 'BERURI', 4, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (149, 'BETANIA', 4, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (150, 'BITENCOURT', 4, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (151, 'BOA VISTA DO RAMOS', 4, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (152, 'BOCA DO ACRE', 4, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (153, 'BOM CAMINHO', 4, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (154, 'BOM FIM', 4, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (155, 'BORBA', 4, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (156, 'CAAPIRANGA', 4, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (157, 'CAIAMBE', 4, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (158, 'CAMPO ALEGRE', 4, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (159, 'CAMPO NOVO', 4, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (160, 'CANARIA', 4, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (161, 'CANIMARU', 4, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (162, 'CANTO ESCURO', 4, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (163, 'CANUTAMA', 4, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (164, 'CARAUARI', 4, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (165, 'CAREIRO', 4, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (166, 'CAREIRO DA VARZEA', 4, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (167, 'CEU DO MAPIA', 4, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (168, 'COARI', 4, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (169, 'CODAJAS', 4, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (170, 'COPATANA', 4, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (171, 'CUCUI', 4, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (172, 'CUIUANA', 4, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (173, 'EIRUNEPE', 4, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (174, 'ENVIRA', 4, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (175, 'ESTIRAO DO EQUADOR', 4, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (176, 'FEIJOAL', 4, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (177, 'FILADELFIA', 4, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (178, 'FONTE BOA', 4, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (179, 'GUAJARA', 4, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (180, 'HUMAITA', 4, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (181, 'IAUARETE', 4, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (182, 'IPIRANGA', 4, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (183, 'IPIXUNA', 4, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (184, 'IRANDUBA', 4, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (185, 'ITACOATIARA', 4, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (186, 'ITAMARATI', 4, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (187, 'ITAPIRANGA', 4, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (188, 'JAPURA', 4, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (189, 'JUI', 4, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (190, 'JURUA', 4, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (191, 'JUTAI', 4, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (192, 'LABREA', 4, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (193, 'LARANJAL', 4, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (194, 'MANACAPURU', 4, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (195, 'MANAQUIRI', 4, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (196, 'MANAUS', 4, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (197, 'MANICORE', 4, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (198, 'MARAA', 4, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (199, 'MATUCA', 4, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (200, 'MAUES', 4, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (201, 'MONTE VERDE', 4, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (202, 'MOURA', 4, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (203, 'NHAMUNDA', 4, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (204, 'NOVA ITALIA', 4, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (205, 'NOVA OLINDA DO NORTE', 4, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (206, 'NOVO AIRAO', 4, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (207, 'NOVO ARIPUANA', 4, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (208, 'PARI CACHOEIRA', 4, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (209, 'PARINTINS', 4, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (210, 'PAUINI', 4, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (211, 'PERNAMBUCO', 4, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (212, 'PORTO ALEGRE', 4, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (213, 'PORTO ESPIRITUAL', 4, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (214, 'PRAIA DO PIRAO', 4, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (215, 'PRESIDENTE FIGUEIREDO', 4, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (216, 'QUERARI', 4, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (217, 'RIO PRETO DA EVA', 4, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (218, 'SANTA INES', 4, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (219, 'SANTA ISABEL DO RIO NEGRO', 4, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (220, 'SANTA RITA DO WEIL', 4, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (221, 'SANTO ANTONIO', 4, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (222, 'SANTO ANTONIO DO ICA', 4, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (223, 'SANTO ISIDORO', 4, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (224, 'SAO DOMINGOS II', 4, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (225, 'SAO FRANCISCO DO TONANTINS', 4, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (226, 'SAO GABRIEL DA CACHOEIRA', 4, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (227, 'SAO JOAQUIM', 4, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (228, 'SAO JOSE DO AMPARO', 4, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (229, 'SAO LEOPOLDO', 4, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (230, 'SAO PAULO', 4, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (231, 'SAO PAULO DE OLIVENCA', 4, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (232, 'SAO SEBASTIAO DO UATUMA', 4, 28);
commit;
prompt 5700 records committed...
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (233, 'SAPOTAL', 4, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (234, 'SERINGAL PALMEIRA', 4, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (235, 'SILVES', 4, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (236, 'TABATINGA', 4, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (237, 'TAPAUA', 4, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (238, 'TEFE', 4, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (239, 'TONANTINS', 4, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (240, 'UARINI', 4, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (241, 'URUCARA', 4, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (242, 'URUCURITUBA', 4, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (243, 'VENDAVAL', 4, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (244, 'ABAIRA', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (245, 'ABARE', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (246, 'ACAJUTIBA', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (247, 'ADUSTINA', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (248, 'AGUA FRIA', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (249, 'AIQUARA', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (250, 'ALAGOINHAS', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (251, 'ALCOBACA', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (252, 'ALMADINA', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (253, 'AMARGOSA', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (254, 'AMELIA RODRIGUES', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (255, 'AMERICA DOURADA', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (256, 'ANAGE', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (257, 'ANDARAI', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (258, 'ANDORINHA', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (259, 'ANGICAL', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (260, 'ANGUERA', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (261, 'ANTAS', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (262, 'ANTONIO CARDOSO', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (263, 'ANTONIO GONCALVES', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (264, 'APORA', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (265, 'APUAREMA', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (266, 'ARACAS', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (267, 'ARACATU', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (268, 'ARACI', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (269, 'ARAMARI', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (270, 'ARATACA', 5, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (96, 'POCO DAS TRINCHEIRAS', 2, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (97, 'PORTO CALVO', 2, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (98, 'PORTO DE PEDRAS', 2, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (99, 'PORTO REAL DO COLEGIO', 2, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (100, 'QUEBRANGULO', 2, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (101, 'RIO LARGO', 2, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (102, 'ROTEIRO', 2, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (103, 'SANTA LUZIA DO NORTE', 2, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (104, 'SANTANA DO IPANEMA', 2, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (105, 'SANTANA DO MUNDAU', 2, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (106, 'SAO BRAS', 2, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (107, 'SAO JOSE DA LAJE', 2, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (108, 'SAO JOSE DA TAPERA', 2, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (109, 'SAO LUIS DO QUITUNDE', 2, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (110, 'SAO MIGUEL DOS CAMPOS', 2, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (111, 'SAO MIGUEL DOS MILAGRES', 2, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (112, 'SAO SEBASTIAO', 2, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (113, 'SATUBA', 2, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (114, 'SENADOR RUI PALMEIRA', 2, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (115, 'TANQUE D´ARCA', 2, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (116, 'TAQUARANA', 2, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (117, 'TEOTONIO VILELA', 2, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (118, 'TRAIPU', 2, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (119, 'UNIAO DOS PALMARES', 2, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (120, 'VICOSA', 2, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (121, 'AMAPA', 3, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (122, 'CALCOENE', 3, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (123, 'CUTIAS', 3, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (124, 'FERREIRA GOMES', 3, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (125, 'ITAUBAL', 3, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (126, 'LARANJAL DO JARI', 3, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (127, 'MACAPA', 3, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (128, 'MAZAGAO', 3, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (1, 'ACRELANDIA', 1, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (2, 'ASSIS BRASIL', 1, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (3, 'BRASILEIA', 1, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (4, 'BUJARI', 1, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (5, 'CAPIXABA', 1, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (6, 'CRUZEIRO DO SUL', 1, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (7, 'EPITACIOLANDIA', 1, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (8, 'FEIJO', 1, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (9, 'JORDAO', 1, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (10, 'MANCIO LIMA', 1, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (11, 'MANOEL URBANO', 1, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (12, 'MARECHAL THAUMATURGO', 1, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (13, 'PLACIDO DE CASTRO', 1, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (14, 'RIO BRANCO', 1, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (15, 'RODRIGUES ALVES', 1, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (16, 'SANTA ROSA DO PURUS', 1, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (17, 'SENA MADUREIRA', 1, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (18, 'SENADOR GUIOMARD', 1, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (19, 'TARAUACA', 1, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (20, 'XAPURI', 1, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (21, 'AGUA BRANCA', 2, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (22, 'ANADIA', 2, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (23, 'ARAPIRACA', 2, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (24, 'ATALAIA', 2, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (25, 'BARRA DE SANTO ANTONIO', 2, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (26, 'BARRA DE SAO MIGUEL', 2, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (27, 'BATALHA', 2, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (28, 'BELEM', 2, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (29, 'BELO MONTE', 2, 28);
commit;
prompt 5800 records committed...
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (30, 'BOCA DA MATA', 2, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (31, 'BRANQUINHA', 2, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (32, 'CACIMBINHAS', 2, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (33, 'CAJUEIRO', 2, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (34, 'CAMPO ALEGRE', 2, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (35, 'CAMPO GRANDE', 2, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (36, 'CANAPI', 2, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (37, 'CAPELA', 2, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (38, 'CARNEIROS', 2, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (39, 'CHA PRETA', 2, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (40, 'COITE DO NOIA', 2, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (41, 'COLONIA LEOPOLDINA', 2, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (42, 'COQUEIRO SECO', 2, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (43, 'CORURIPE', 2, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (44, 'CRAIBAS', 2, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (45, 'DELMIRO GOUVEIA', 2, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (46, 'DOIS RIACHOS', 2, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (47, 'ESTRELA DE ALAGOAS', 2, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (48, 'FEIRA GRANDE', 2, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (49, 'FELIZ DESERTO', 2, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (50, 'FLEXEIRAS', 2, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (51, 'GIRAU DO PONCIANO', 2, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (52, 'IBATEGUARA', 2, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (53, 'IGACI', 2, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (54, 'IGREJA NOVA', 2, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (55, 'INHAPI', 2, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (56, 'JACARE DOS HOMENS', 2, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (57, 'JACUIPE', 2, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (58, 'JAPARATINGA', 2, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (59, 'JARAMATAIA', 2, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (60, 'JOAQUIM GOMES', 2, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (61, 'JUNDIA', 2, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (62, 'JUNQUEIRO', 2, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (63, 'LAGOA DA CANOA', 2, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (64, 'LIMOEIRO DE ANADIA', 2, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (65, 'MACEIO', 2, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (66, 'MAJOR ISIDORO', 2, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (67, 'MAR VERMELHO', 2, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (68, 'MARAGOGI', 2, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (69, 'MARAVILHA', 2, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (70, 'MARECHAL DEODORO', 2, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (71, 'MARIBONDO', 2, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (72, 'MATA GRANDE', 2, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (73, 'MATRIZ DE CAMARAGIBE', 2, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (74, 'MESSIAS', 2, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (75, 'MINADOR DO NEGRAO', 2, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (76, 'MONTEIROPOLIS', 2, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (77, 'MURICI', 2, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (78, 'NOVO LINO', 2, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (79, 'OLHO D´AGUA DAS FLORES', 2, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (80, 'OLHO D´AGUA DO CASADO', 2, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (81, 'OLHO D´AGUA GRANDE', 2, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (82, 'OLIVENCA', 2, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (83, 'OURO BRANCO', 2, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (84, 'PALESTINA', 2, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (85, 'PALMEIRA DOS INDIOS', 2, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (86, 'PAO DE ACUCAR', 2, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (87, 'PARICONHA', 2, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (88, 'PARIPUEIRA', 2, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (89, 'PASSO DE CAMARAGIBE', 2, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (90, 'PAULO JACINTO', 2, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (91, 'PENEDO', 2, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (92, 'PIACABUCU', 2, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (93, 'PILAR', 2, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (94, 'PINDOBA', 2, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (95, 'PIRANHAS', 2, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (129, 'OIAPOQUE', 3, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (130, 'PORTO GRANDE', 3, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (131, 'PRACUUBA', 3, 28);
insert into CIDADE (ID_CIDADE, NOME, ID_ESTADO, ID_PAIS)
values (132, 'SANTANA', 3, 28);
commit;
prompt 5869 records loaded
prompt Loading CONTA...
insert into CONTA (ID_CONTA, CODIGO, NOME)
values (1, '01', 'EMPREGO');
insert into CONTA (ID_CONTA, CODIGO, NOME)
values (2, '02', 'FINANCAS');
insert into CONTA (ID_CONTA, CODIGO, NOME)
values (3, '03', 'CASA');
insert into CONTA (ID_CONTA, CODIGO, NOME)
values (4, '04', 'CARRO');
insert into CONTA (ID_CONTA, CODIGO, NOME)
values (5, '05', 'MANUTENCAO');
insert into CONTA (ID_CONTA, CODIGO, NOME)
values (6, '06', 'PESSOAL');
insert into CONTA (ID_CONTA, CODIGO, NOME)
values (7, '07', 'JUROS');
commit;
prompt 7 records loaded
prompt Loading GRUPO_CONTAS...
insert into GRUPO_CONTAS (ID_GRUPO_CONTAS, CODIGO, NOME, TIPO_OPERACAO)
values (1, '1', 'ENTRADAS', 'R');
insert into GRUPO_CONTAS (ID_GRUPO_CONTAS, CODIGO, NOME, TIPO_OPERACAO)
values (2, '2', 'SAIDAS', 'D');
commit;
prompt 2 records loaded
prompt Loading SUB_CONTA...
insert into SUB_CONTA (ID_SUB_CONTA, CODIGO, NOME)
values (1, '001', 'SALARIOS');
insert into SUB_CONTA (ID_SUB_CONTA, CODIGO, NOME)
values (2, '002', '13 SALARIO');
insert into SUB_CONTA (ID_SUB_CONTA, CODIGO, NOME)
values (3, '003', 'FERIAS');
insert into SUB_CONTA (ID_SUB_CONTA, CODIGO, NOME)
values (4, '004', 'PREMIOS');
insert into SUB_CONTA (ID_SUB_CONTA, CODIGO, NOME)
values (5, '005', 'APLICACOES');
insert into SUB_CONTA (ID_SUB_CONTA, CODIGO, NOME)
values (6, '006', 'EMPRESTIMOS');
insert into SUB_CONTA (ID_SUB_CONTA, CODIGO, NOME)
values (7, '007', 'ENERGIA');
insert into SUB_CONTA (ID_SUB_CONTA, CODIGO, NOME)
values (8, '008', 'AGUA');
insert into SUB_CONTA (ID_SUB_CONTA, CODIGO, NOME)
values (9, '009', 'GAS');
insert into SUB_CONTA (ID_SUB_CONTA, CODIGO, NOME)
values (10, '010', 'TELEFONE');
insert into SUB_CONTA (ID_SUB_CONTA, CODIGO, NOME)
values (11, '011', 'TV CABO');
insert into SUB_CONTA (ID_SUB_CONTA, CODIGO, NOME)
values (12, '012', 'INTERNET');
insert into SUB_CONTA (ID_SUB_CONTA, CODIGO, NOME)
values (13, '013', 'IPTU');
insert into SUB_CONTA (ID_SUB_CONTA, CODIGO, NOME)
values (14, '014', 'SEGURO');
insert into SUB_CONTA (ID_SUB_CONTA, CODIGO, NOME)
values (15, '015', 'GASOLINA');
insert into SUB_CONTA (ID_SUB_CONTA, CODIGO, NOME)
values (16, '016', 'FINANCIAMENTO');
insert into SUB_CONTA (ID_SUB_CONTA, CODIGO, NOME)
values (17, '017', 'IPVA');
insert into SUB_CONTA (ID_SUB_CONTA, CODIGO, NOME)
values (18, '018', 'LICENCIAMENTO');
insert into SUB_CONTA (ID_SUB_CONTA, CODIGO, NOME)
values (19, '019', 'MULTAS');
insert into SUB_CONTA (ID_SUB_CONTA, CODIGO, NOME)
values (20, '020', 'FAXINEIRA');
insert into SUB_CONTA (ID_SUB_CONTA, CODIGO, NOME)
values (21, '021', 'SUPERMERCADO');
insert into SUB_CONTA (ID_SUB_CONTA, CODIGO, NOME)
values (22, '022', 'ALIMENTACAO');
insert into SUB_CONTA (ID_SUB_CONTA, CODIGO, NOME)
values (23, '023', 'VESTUARIO');
insert into SUB_CONTA (ID_SUB_CONTA, CODIGO, NOME)
values (24, '024', 'MEDICAMENTOS');
insert into SUB_CONTA (ID_SUB_CONTA, CODIGO, NOME)
values (25, '025', 'ESCOLA');
insert into SUB_CONTA (ID_SUB_CONTA, CODIGO, NOME)
values (26, '026', 'CLUBE');
insert into SUB_CONTA (ID_SUB_CONTA, CODIGO, NOME)
values (27, '027', 'CELULAR');
insert into SUB_CONTA (ID_SUB_CONTA, CODIGO, NOME)
values (28, '028', 'FACULDADE');
insert into SUB_CONTA (ID_SUB_CONTA, CODIGO, NOME)
values (29, '029', 'CHEQUE ESPECIAL');
insert into SUB_CONTA (ID_SUB_CONTA, CODIGO, NOME)
values (30, '030', 'CARTAO CREDITO');
commit;
prompt 30 records loaded
prompt Loading CONTA_CONTABIL...
insert into CONTA_CONTABIL (ID_CONTA_CONTABIL, CODIGO, ID_GRUPO_CONTAS, ID_CENTRO_CUSTOS, ID_CONTA, ID_SUB_CONTA)
values (1, '00001', 1, null, null, null);
insert into CONTA_CONTABIL (ID_CONTA_CONTABIL, CODIGO, ID_GRUPO_CONTAS, ID_CENTRO_CUSTOS, ID_CONTA, ID_SUB_CONTA)
values (2, '00002', 1, 1, null, null);
insert into CONTA_CONTABIL (ID_CONTA_CONTABIL, CODIGO, ID_GRUPO_CONTAS, ID_CENTRO_CUSTOS, ID_CONTA, ID_SUB_CONTA)
values (3, '00003', 1, 1, 1, null);
insert into CONTA_CONTABIL (ID_CONTA_CONTABIL, CODIGO, ID_GRUPO_CONTAS, ID_CENTRO_CUSTOS, ID_CONTA, ID_SUB_CONTA)
values (4, '00004', 1, 1, 1, 1);
insert into CONTA_CONTABIL (ID_CONTA_CONTABIL, CODIGO, ID_GRUPO_CONTAS, ID_CENTRO_CUSTOS, ID_CONTA, ID_SUB_CONTA)
values (5, '00005', 1, 1, 1, 2);
insert into CONTA_CONTABIL (ID_CONTA_CONTABIL, CODIGO, ID_GRUPO_CONTAS, ID_CENTRO_CUSTOS, ID_CONTA, ID_SUB_CONTA)
values (6, '00006', 1, 1, 1, 3);
insert into CONTA_CONTABIL (ID_CONTA_CONTABIL, CODIGO, ID_GRUPO_CONTAS, ID_CENTRO_CUSTOS, ID_CONTA, ID_SUB_CONTA)
values (7, '00007', 1, 1, 1, 4);
insert into CONTA_CONTABIL (ID_CONTA_CONTABIL, CODIGO, ID_GRUPO_CONTAS, ID_CENTRO_CUSTOS, ID_CONTA, ID_SUB_CONTA)
values (8, '00008', 1, 1, 2, null);
insert into CONTA_CONTABIL (ID_CONTA_CONTABIL, CODIGO, ID_GRUPO_CONTAS, ID_CENTRO_CUSTOS, ID_CONTA, ID_SUB_CONTA)
values (9, '00009', 1, 1, 2, 5);
insert into CONTA_CONTABIL (ID_CONTA_CONTABIL, CODIGO, ID_GRUPO_CONTAS, ID_CENTRO_CUSTOS, ID_CONTA, ID_SUB_CONTA)
values (10, '00010', 1, 1, 2, 6);
insert into CONTA_CONTABIL (ID_CONTA_CONTABIL, CODIGO, ID_GRUPO_CONTAS, ID_CENTRO_CUSTOS, ID_CONTA, ID_SUB_CONTA)
values (11, '00011', 1, 2, null, null);
insert into CONTA_CONTABIL (ID_CONTA_CONTABIL, CODIGO, ID_GRUPO_CONTAS, ID_CENTRO_CUSTOS, ID_CONTA, ID_SUB_CONTA)
values (12, '00012', 1, 2, 1, null);
insert into CONTA_CONTABIL (ID_CONTA_CONTABIL, CODIGO, ID_GRUPO_CONTAS, ID_CENTRO_CUSTOS, ID_CONTA, ID_SUB_CONTA)
values (13, '00013', 1, 2, 1, 1);
insert into CONTA_CONTABIL (ID_CONTA_CONTABIL, CODIGO, ID_GRUPO_CONTAS, ID_CENTRO_CUSTOS, ID_CONTA, ID_SUB_CONTA)
values (14, '00014', 1, 2, 1, 2);
insert into CONTA_CONTABIL (ID_CONTA_CONTABIL, CODIGO, ID_GRUPO_CONTAS, ID_CENTRO_CUSTOS, ID_CONTA, ID_SUB_CONTA)
values (15, '00015', 1, 2, 1, 3);
insert into CONTA_CONTABIL (ID_CONTA_CONTABIL, CODIGO, ID_GRUPO_CONTAS, ID_CENTRO_CUSTOS, ID_CONTA, ID_SUB_CONTA)
values (16, '00016', 1, 2, 1, 4);
insert into CONTA_CONTABIL (ID_CONTA_CONTABIL, CODIGO, ID_GRUPO_CONTAS, ID_CENTRO_CUSTOS, ID_CONTA, ID_SUB_CONTA)
values (17, '00017', 1, 2, 2, null);
insert into CONTA_CONTABIL (ID_CONTA_CONTABIL, CODIGO, ID_GRUPO_CONTAS, ID_CENTRO_CUSTOS, ID_CONTA, ID_SUB_CONTA)
values (18, '00018', 1, 2, 2, 5);
insert into CONTA_CONTABIL (ID_CONTA_CONTABIL, CODIGO, ID_GRUPO_CONTAS, ID_CENTRO_CUSTOS, ID_CONTA, ID_SUB_CONTA)
values (19, '00019', 1, 2, 2, 6);
insert into CONTA_CONTABIL (ID_CONTA_CONTABIL, CODIGO, ID_GRUPO_CONTAS, ID_CENTRO_CUSTOS, ID_CONTA, ID_SUB_CONTA)
values (20, '00020', 2, null, null, null);
insert into CONTA_CONTABIL (ID_CONTA_CONTABIL, CODIGO, ID_GRUPO_CONTAS, ID_CENTRO_CUSTOS, ID_CONTA, ID_SUB_CONTA)
values (21, '00021', 2, 1, null, null);
insert into CONTA_CONTABIL (ID_CONTA_CONTABIL, CODIGO, ID_GRUPO_CONTAS, ID_CENTRO_CUSTOS, ID_CONTA, ID_SUB_CONTA)
values (22, '00022', 2, 1, 2, null);
insert into CONTA_CONTABIL (ID_CONTA_CONTABIL, CODIGO, ID_GRUPO_CONTAS, ID_CENTRO_CUSTOS, ID_CONTA, ID_SUB_CONTA)
values (23, '00023', 2, 1, 2, 5);
insert into CONTA_CONTABIL (ID_CONTA_CONTABIL, CODIGO, ID_GRUPO_CONTAS, ID_CENTRO_CUSTOS, ID_CONTA, ID_SUB_CONTA)
values (24, '00024', 2, 1, 2, 6);
insert into CONTA_CONTABIL (ID_CONTA_CONTABIL, CODIGO, ID_GRUPO_CONTAS, ID_CENTRO_CUSTOS, ID_CONTA, ID_SUB_CONTA)
values (25, '00025', 2, 1, 3, null);
insert into CONTA_CONTABIL (ID_CONTA_CONTABIL, CODIGO, ID_GRUPO_CONTAS, ID_CENTRO_CUSTOS, ID_CONTA, ID_SUB_CONTA)
values (26, '00026', 2, 1, 3, 7);
insert into CONTA_CONTABIL (ID_CONTA_CONTABIL, CODIGO, ID_GRUPO_CONTAS, ID_CENTRO_CUSTOS, ID_CONTA, ID_SUB_CONTA)
values (27, '00027', 2, 1, 3, 8);
insert into CONTA_CONTABIL (ID_CONTA_CONTABIL, CODIGO, ID_GRUPO_CONTAS, ID_CENTRO_CUSTOS, ID_CONTA, ID_SUB_CONTA)
values (28, '00028', 2, 1, 3, 9);
insert into CONTA_CONTABIL (ID_CONTA_CONTABIL, CODIGO, ID_GRUPO_CONTAS, ID_CENTRO_CUSTOS, ID_CONTA, ID_SUB_CONTA)
values (29, '00029', 2, 1, 3, 10);
insert into CONTA_CONTABIL (ID_CONTA_CONTABIL, CODIGO, ID_GRUPO_CONTAS, ID_CENTRO_CUSTOS, ID_CONTA, ID_SUB_CONTA)
values (30, '00030', 2, 1, 3, 11);
insert into CONTA_CONTABIL (ID_CONTA_CONTABIL, CODIGO, ID_GRUPO_CONTAS, ID_CENTRO_CUSTOS, ID_CONTA, ID_SUB_CONTA)
values (31, '00031', 2, 1, 3, 12);
insert into CONTA_CONTABIL (ID_CONTA_CONTABIL, CODIGO, ID_GRUPO_CONTAS, ID_CENTRO_CUSTOS, ID_CONTA, ID_SUB_CONTA)
values (32, '00032', 2, 1, 3, 13);
insert into CONTA_CONTABIL (ID_CONTA_CONTABIL, CODIGO, ID_GRUPO_CONTAS, ID_CENTRO_CUSTOS, ID_CONTA, ID_SUB_CONTA)
values (33, '00033', 2, 1, 4, null);
insert into CONTA_CONTABIL (ID_CONTA_CONTABIL, CODIGO, ID_GRUPO_CONTAS, ID_CENTRO_CUSTOS, ID_CONTA, ID_SUB_CONTA)
values (34, '00034', 2, 1, 4, 14);
insert into CONTA_CONTABIL (ID_CONTA_CONTABIL, CODIGO, ID_GRUPO_CONTAS, ID_CENTRO_CUSTOS, ID_CONTA, ID_SUB_CONTA)
values (35, '00035', 2, 1, 4, 15);
insert into CONTA_CONTABIL (ID_CONTA_CONTABIL, CODIGO, ID_GRUPO_CONTAS, ID_CENTRO_CUSTOS, ID_CONTA, ID_SUB_CONTA)
values (36, '00036', 2, 1, 4, 16);
insert into CONTA_CONTABIL (ID_CONTA_CONTABIL, CODIGO, ID_GRUPO_CONTAS, ID_CENTRO_CUSTOS, ID_CONTA, ID_SUB_CONTA)
values (37, '00037', 2, 1, 4, 17);
insert into CONTA_CONTABIL (ID_CONTA_CONTABIL, CODIGO, ID_GRUPO_CONTAS, ID_CENTRO_CUSTOS, ID_CONTA, ID_SUB_CONTA)
values (38, '00038', 2, 1, 4, 18);
insert into CONTA_CONTABIL (ID_CONTA_CONTABIL, CODIGO, ID_GRUPO_CONTAS, ID_CENTRO_CUSTOS, ID_CONTA, ID_SUB_CONTA)
values (39, '00039', 2, 1, 4, 19);
insert into CONTA_CONTABIL (ID_CONTA_CONTABIL, CODIGO, ID_GRUPO_CONTAS, ID_CENTRO_CUSTOS, ID_CONTA, ID_SUB_CONTA)
values (40, '00040', 2, 1, 5, null);
insert into CONTA_CONTABIL (ID_CONTA_CONTABIL, CODIGO, ID_GRUPO_CONTAS, ID_CENTRO_CUSTOS, ID_CONTA, ID_SUB_CONTA)
values (41, '00041', 2, 1, 5, 20);
insert into CONTA_CONTABIL (ID_CONTA_CONTABIL, CODIGO, ID_GRUPO_CONTAS, ID_CENTRO_CUSTOS, ID_CONTA, ID_SUB_CONTA)
values (42, '00042', 2, 1, 5, 21);
insert into CONTA_CONTABIL (ID_CONTA_CONTABIL, CODIGO, ID_GRUPO_CONTAS, ID_CENTRO_CUSTOS, ID_CONTA, ID_SUB_CONTA)
values (43, '00043', 2, 1, 5, 22);
insert into CONTA_CONTABIL (ID_CONTA_CONTABIL, CODIGO, ID_GRUPO_CONTAS, ID_CENTRO_CUSTOS, ID_CONTA, ID_SUB_CONTA)
values (44, '00044', 2, 1, 5, 23);
insert into CONTA_CONTABIL (ID_CONTA_CONTABIL, CODIGO, ID_GRUPO_CONTAS, ID_CENTRO_CUSTOS, ID_CONTA, ID_SUB_CONTA)
values (45, '00045', 2, 1, 5, 24);
insert into CONTA_CONTABIL (ID_CONTA_CONTABIL, CODIGO, ID_GRUPO_CONTAS, ID_CENTRO_CUSTOS, ID_CONTA, ID_SUB_CONTA)
values (46, '00046', 2, 1, 5, 25);
insert into CONTA_CONTABIL (ID_CONTA_CONTABIL, CODIGO, ID_GRUPO_CONTAS, ID_CENTRO_CUSTOS, ID_CONTA, ID_SUB_CONTA)
values (47, '00047', 2, 1, 5, 26);
insert into CONTA_CONTABIL (ID_CONTA_CONTABIL, CODIGO, ID_GRUPO_CONTAS, ID_CENTRO_CUSTOS, ID_CONTA, ID_SUB_CONTA)
values (48, '00048', 2, 1, 6, null);
insert into CONTA_CONTABIL (ID_CONTA_CONTABIL, CODIGO, ID_GRUPO_CONTAS, ID_CENTRO_CUSTOS, ID_CONTA, ID_SUB_CONTA)
values (49, '00049', 2, 1, 6, 27);
insert into CONTA_CONTABIL (ID_CONTA_CONTABIL, CODIGO, ID_GRUPO_CONTAS, ID_CENTRO_CUSTOS, ID_CONTA, ID_SUB_CONTA)
values (50, '00050', 2, 1, 6, 28);
insert into CONTA_CONTABIL (ID_CONTA_CONTABIL, CODIGO, ID_GRUPO_CONTAS, ID_CENTRO_CUSTOS, ID_CONTA, ID_SUB_CONTA)
values (51, '00051', 2, 1, 7, null);
insert into CONTA_CONTABIL (ID_CONTA_CONTABIL, CODIGO, ID_GRUPO_CONTAS, ID_CENTRO_CUSTOS, ID_CONTA, ID_SUB_CONTA)
values (52, '00052', 2, 1, 7, 29);
insert into CONTA_CONTABIL (ID_CONTA_CONTABIL, CODIGO, ID_GRUPO_CONTAS, ID_CENTRO_CUSTOS, ID_CONTA, ID_SUB_CONTA)
values (53, '00053', 2, 1, 7, 30);
insert into CONTA_CONTABIL (ID_CONTA_CONTABIL, CODIGO, ID_GRUPO_CONTAS, ID_CENTRO_CUSTOS, ID_CONTA, ID_SUB_CONTA)
values (54, '00054', 2, 2, null, null);
insert into CONTA_CONTABIL (ID_CONTA_CONTABIL, CODIGO, ID_GRUPO_CONTAS, ID_CENTRO_CUSTOS, ID_CONTA, ID_SUB_CONTA)
values (55, '00055', 2, 2, 2, null);
insert into CONTA_CONTABIL (ID_CONTA_CONTABIL, CODIGO, ID_GRUPO_CONTAS, ID_CENTRO_CUSTOS, ID_CONTA, ID_SUB_CONTA)
values (56, '00056', 2, 2, 2, 5);
insert into CONTA_CONTABIL (ID_CONTA_CONTABIL, CODIGO, ID_GRUPO_CONTAS, ID_CENTRO_CUSTOS, ID_CONTA, ID_SUB_CONTA)
values (57, '00057', 2, 2, 2, 6);
insert into CONTA_CONTABIL (ID_CONTA_CONTABIL, CODIGO, ID_GRUPO_CONTAS, ID_CENTRO_CUSTOS, ID_CONTA, ID_SUB_CONTA)
values (58, '00058', 2, 2, 3, null);
insert into CONTA_CONTABIL (ID_CONTA_CONTABIL, CODIGO, ID_GRUPO_CONTAS, ID_CENTRO_CUSTOS, ID_CONTA, ID_SUB_CONTA)
values (59, '00059', 2, 2, 3, 7);
insert into CONTA_CONTABIL (ID_CONTA_CONTABIL, CODIGO, ID_GRUPO_CONTAS, ID_CENTRO_CUSTOS, ID_CONTA, ID_SUB_CONTA)
values (60, '00060', 2, 2, 3, 8);
insert into CONTA_CONTABIL (ID_CONTA_CONTABIL, CODIGO, ID_GRUPO_CONTAS, ID_CENTRO_CUSTOS, ID_CONTA, ID_SUB_CONTA)
values (61, '00061', 2, 2, 3, 9);
insert into CONTA_CONTABIL (ID_CONTA_CONTABIL, CODIGO, ID_GRUPO_CONTAS, ID_CENTRO_CUSTOS, ID_CONTA, ID_SUB_CONTA)
values (62, '00062', 2, 2, 3, 10);
insert into CONTA_CONTABIL (ID_CONTA_CONTABIL, CODIGO, ID_GRUPO_CONTAS, ID_CENTRO_CUSTOS, ID_CONTA, ID_SUB_CONTA)
values (63, '00063', 2, 2, 3, 11);
insert into CONTA_CONTABIL (ID_CONTA_CONTABIL, CODIGO, ID_GRUPO_CONTAS, ID_CENTRO_CUSTOS, ID_CONTA, ID_SUB_CONTA)
values (64, '00064', 2, 2, 3, 12);
insert into CONTA_CONTABIL (ID_CONTA_CONTABIL, CODIGO, ID_GRUPO_CONTAS, ID_CENTRO_CUSTOS, ID_CONTA, ID_SUB_CONTA)
values (65, '00065', 2, 2, 3, 13);
insert into CONTA_CONTABIL (ID_CONTA_CONTABIL, CODIGO, ID_GRUPO_CONTAS, ID_CENTRO_CUSTOS, ID_CONTA, ID_SUB_CONTA)
values (66, '00066', 2, 2, 4, null);
insert into CONTA_CONTABIL (ID_CONTA_CONTABIL, CODIGO, ID_GRUPO_CONTAS, ID_CENTRO_CUSTOS, ID_CONTA, ID_SUB_CONTA)
values (67, '00067', 2, 2, 4, 14);
insert into CONTA_CONTABIL (ID_CONTA_CONTABIL, CODIGO, ID_GRUPO_CONTAS, ID_CENTRO_CUSTOS, ID_CONTA, ID_SUB_CONTA)
values (68, '00068', 2, 2, 4, 15);
insert into CONTA_CONTABIL (ID_CONTA_CONTABIL, CODIGO, ID_GRUPO_CONTAS, ID_CENTRO_CUSTOS, ID_CONTA, ID_SUB_CONTA)
values (69, '00069', 2, 2, 4, 16);
insert into CONTA_CONTABIL (ID_CONTA_CONTABIL, CODIGO, ID_GRUPO_CONTAS, ID_CENTRO_CUSTOS, ID_CONTA, ID_SUB_CONTA)
values (70, '00070', 2, 2, 4, 17);
insert into CONTA_CONTABIL (ID_CONTA_CONTABIL, CODIGO, ID_GRUPO_CONTAS, ID_CENTRO_CUSTOS, ID_CONTA, ID_SUB_CONTA)
values (71, '00071', 2, 2, 4, 18);
insert into CONTA_CONTABIL (ID_CONTA_CONTABIL, CODIGO, ID_GRUPO_CONTAS, ID_CENTRO_CUSTOS, ID_CONTA, ID_SUB_CONTA)
values (72, '00072', 2, 2, 4, 19);
insert into CONTA_CONTABIL (ID_CONTA_CONTABIL, CODIGO, ID_GRUPO_CONTAS, ID_CENTRO_CUSTOS, ID_CONTA, ID_SUB_CONTA)
values (73, '00073', 2, 2, 5, null);
insert into CONTA_CONTABIL (ID_CONTA_CONTABIL, CODIGO, ID_GRUPO_CONTAS, ID_CENTRO_CUSTOS, ID_CONTA, ID_SUB_CONTA)
values (74, '00074', 2, 2, 5, 20);
insert into CONTA_CONTABIL (ID_CONTA_CONTABIL, CODIGO, ID_GRUPO_CONTAS, ID_CENTRO_CUSTOS, ID_CONTA, ID_SUB_CONTA)
values (75, '00075', 2, 2, 5, 21);
insert into CONTA_CONTABIL (ID_CONTA_CONTABIL, CODIGO, ID_GRUPO_CONTAS, ID_CENTRO_CUSTOS, ID_CONTA, ID_SUB_CONTA)
values (76, '00076', 2, 2, 5, 22);
insert into CONTA_CONTABIL (ID_CONTA_CONTABIL, CODIGO, ID_GRUPO_CONTAS, ID_CENTRO_CUSTOS, ID_CONTA, ID_SUB_CONTA)
values (77, '00077', 2, 2, 5, 23);
insert into CONTA_CONTABIL (ID_CONTA_CONTABIL, CODIGO, ID_GRUPO_CONTAS, ID_CENTRO_CUSTOS, ID_CONTA, ID_SUB_CONTA)
values (78, '00078', 2, 2, 5, 24);
insert into CONTA_CONTABIL (ID_CONTA_CONTABIL, CODIGO, ID_GRUPO_CONTAS, ID_CENTRO_CUSTOS, ID_CONTA, ID_SUB_CONTA)
values (79, '00079', 2, 2, 5, 25);
insert into CONTA_CONTABIL (ID_CONTA_CONTABIL, CODIGO, ID_GRUPO_CONTAS, ID_CENTRO_CUSTOS, ID_CONTA, ID_SUB_CONTA)
values (80, '00080', 2, 2, 5, 26);
insert into CONTA_CONTABIL (ID_CONTA_CONTABIL, CODIGO, ID_GRUPO_CONTAS, ID_CENTRO_CUSTOS, ID_CONTA, ID_SUB_CONTA)
values (81, '00081', 2, 2, 6, null);
insert into CONTA_CONTABIL (ID_CONTA_CONTABIL, CODIGO, ID_GRUPO_CONTAS, ID_CENTRO_CUSTOS, ID_CONTA, ID_SUB_CONTA)
values (82, '00082', 2, 2, 6, 27);
insert into CONTA_CONTABIL (ID_CONTA_CONTABIL, CODIGO, ID_GRUPO_CONTAS, ID_CENTRO_CUSTOS, ID_CONTA, ID_SUB_CONTA)
values (83, '00083', 2, 2, 6, 28);
insert into CONTA_CONTABIL (ID_CONTA_CONTABIL, CODIGO, ID_GRUPO_CONTAS, ID_CENTRO_CUSTOS, ID_CONTA, ID_SUB_CONTA)
values (84, '00084', 2, 2, 7, null);
insert into CONTA_CONTABIL (ID_CONTA_CONTABIL, CODIGO, ID_GRUPO_CONTAS, ID_CENTRO_CUSTOS, ID_CONTA, ID_SUB_CONTA)
values (85, '00085', 2, 2, 7, 29);
insert into CONTA_CONTABIL (ID_CONTA_CONTABIL, CODIGO, ID_GRUPO_CONTAS, ID_CENTRO_CUSTOS, ID_CONTA, ID_SUB_CONTA)
values (86, '00086', 2, 2, 7, 30);
commit;
prompt 86 records loaded
prompt Loading ENTIDADE...
insert into ENTIDADE (ID_ENTIDADE, CODIGO, NOME, ENDERECO, BAIRRO, ID_CIDADE, CREDOR, DEVEDOR)
values (1, '00001', 'RODRIGO QUEIJA CORERATO', 'RUA JOAQUIM PINTO DE MORAES, 57', 'CHACARA DA BARRA', 5127, 'S', 'S');
insert into ENTIDADE (ID_ENTIDADE, CODIGO, NOME, ENDERECO, BAIRRO, ID_CIDADE, CREDOR, DEVEDOR)
values (2, '00002', 'SILVANA APARECIDA DOS REIS', 'RUA JOAQUIM PINTO DE MORAES, 57', 'JARDIM DAS PAINEIRAS', 5127, 'S', 'S');
commit;
prompt 2 records loaded
prompt Loading LANCAMENTO_FIXO...
insert into LANCAMENTO_FIXO (ID_LANCAMENTO_FIXO, ID_CONTA_CONTABIL, DIA_VENCIMENTO, MES_VENCIMENTO, ID_ENTIDADE, VALOR, ATIVO)
values (3, 4, 5, null, null, 3200, 'S');
insert into LANCAMENTO_FIXO (ID_LANCAMENTO_FIXO, ID_CONTA_CONTABIL, DIA_VENCIMENTO, MES_VENCIMENTO, ID_ENTIDADE, VALOR, ATIVO)
values (4, 13, 5, null, null, 1000, 'S');
insert into LANCAMENTO_FIXO (ID_LANCAMENTO_FIXO, ID_CONTA_CONTABIL, DIA_VENCIMENTO, MES_VENCIMENTO, ID_ENTIDADE, VALOR, ATIVO)
values (5, 13, 20, null, null, 1000, 'S');
insert into LANCAMENTO_FIXO (ID_LANCAMENTO_FIXO, ID_CONTA_CONTABIL, DIA_VENCIMENTO, MES_VENCIMENTO, ID_ENTIDADE, VALOR, ATIVO)
values (6, 5, 30, 11, null, 1600, 'S');
insert into LANCAMENTO_FIXO (ID_LANCAMENTO_FIXO, ID_CONTA_CONTABIL, DIA_VENCIMENTO, MES_VENCIMENTO, ID_ENTIDADE, VALOR, ATIVO)
values (9, 5, 20, 12, null, 1600, 'S');
insert into LANCAMENTO_FIXO (ID_LANCAMENTO_FIXO, ID_CONTA_CONTABIL, DIA_VENCIMENTO, MES_VENCIMENTO, ID_ENTIDADE, VALOR, ATIVO)
values (10, 14, 30, 5, null, 1000, 'S');
insert into LANCAMENTO_FIXO (ID_LANCAMENTO_FIXO, ID_CONTA_CONTABIL, DIA_VENCIMENTO, MES_VENCIMENTO, ID_ENTIDADE, VALOR, ATIVO)
values (13, 14, 30, 11, null, 1000, 'S');
commit;
prompt 7 records loaded
prompt Loading PREVISAO_CAIXA...
insert into PREVISAO_CAIXA (ID_PREVISAO_CAIXA, DOCUMENTO, ID_CONTA_CONTABIL, DATA_VENCIMENTO, ID_ENTIDADE, VALOR, ID_LANCAMENTO_FIXO, DATA_LIQUIDACAO)
values (4, null, 4, to_date('05-07-2006', 'dd-mm-yyyy'), null, 3200, 3, null);
insert into PREVISAO_CAIXA (ID_PREVISAO_CAIXA, DOCUMENTO, ID_CONTA_CONTABIL, DATA_VENCIMENTO, ID_ENTIDADE, VALOR, ID_LANCAMENTO_FIXO, DATA_LIQUIDACAO)
values (5, null, 13, to_date('05-07-2006', 'dd-mm-yyyy'), null, 1000, 4, null);
insert into PREVISAO_CAIXA (ID_PREVISAO_CAIXA, DOCUMENTO, ID_CONTA_CONTABIL, DATA_VENCIMENTO, ID_ENTIDADE, VALOR, ID_LANCAMENTO_FIXO, DATA_LIQUIDACAO)
values (6, null, 13, to_date('20-07-2006', 'dd-mm-yyyy'), null, 1000, 5, null);
insert into PREVISAO_CAIXA (ID_PREVISAO_CAIXA, DOCUMENTO, ID_CONTA_CONTABIL, DATA_VENCIMENTO, ID_ENTIDADE, VALOR, ID_LANCAMENTO_FIXO, DATA_LIQUIDACAO)
values (10, null, 27, to_date('20-08-2006', 'dd-mm-yyyy'), null, 50, null, to_date('10-08-2006 21:52:11', 'dd-mm-yyyy hh24:mi:ss'));
commit;
prompt 4 records loaded
prompt Loading FLUXO_CAIXA...
insert into FLUXO_CAIXA (ID_FLUXO_CAIXA, ID_PREVISAO_CAIXA, DATA_PAGAMENTO, VALOR, ID_CONTA_CONTABIL)
values (10, 4, to_date('30-07-2006', 'dd-mm-yyyy'), 1000, 4);
insert into FLUXO_CAIXA (ID_FLUXO_CAIXA, ID_PREVISAO_CAIXA, DATA_PAGAMENTO, VALOR, ID_CONTA_CONTABIL)
values (11, 4, to_date('30-07-2006', 'dd-mm-yyyy'), 300, 9);
insert into FLUXO_CAIXA (ID_FLUXO_CAIXA, ID_PREVISAO_CAIXA, DATA_PAGAMENTO, VALOR, ID_CONTA_CONTABIL)
values (9, 4, to_date('30-07-2006', 'dd-mm-yyyy'), 1000, 4);
insert into FLUXO_CAIXA (ID_FLUXO_CAIXA, ID_PREVISAO_CAIXA, DATA_PAGAMENTO, VALOR, ID_CONTA_CONTABIL)
values (12, 4, to_date('30-07-2006', 'dd-mm-yyyy'), 1200, 4);
insert into FLUXO_CAIXA (ID_FLUXO_CAIXA, ID_PREVISAO_CAIXA, DATA_PAGAMENTO, VALOR, ID_CONTA_CONTABIL)
values (13, 10, to_date('31-07-2006 22:17:07', 'dd-mm-yyyy hh24:mi:ss'), 10, 27);
insert into FLUXO_CAIXA (ID_FLUXO_CAIXA, ID_PREVISAO_CAIXA, DATA_PAGAMENTO, VALOR, ID_CONTA_CONTABIL)
values (14, 10, to_date('31-07-2006 22:18:50', 'dd-mm-yyyy hh24:mi:ss'), 20, 52);
insert into FLUXO_CAIXA (ID_FLUXO_CAIXA, ID_PREVISAO_CAIXA, DATA_PAGAMENTO, VALOR, ID_CONTA_CONTABIL)
values (15, 10, to_date('31-07-2006 22:18:50', 'dd-mm-yyyy hh24:mi:ss'), 40, 27);
commit;
prompt 7 records loaded
prompt Enabling foreign key constraints for ESTADO...
alter table ESTADO enable constraint E_PAIS;
prompt Enabling foreign key constraints for CIDADE...
alter table CIDADE enable constraint C_ESTADO_FK;
alter table CIDADE enable constraint C_PAIS_FK;
prompt Enabling foreign key constraints for CONTA_CONTABIL...
alter table CONTA_CONTABIL enable constraint CONTA_CONTABIL_FK1;
alter table CONTA_CONTABIL enable constraint CONTA_CONTABIL_FK2;
alter table CONTA_CONTABIL enable constraint CONTA_CONTABIL_FK3;
alter table CONTA_CONTABIL enable constraint CONTA_CONTABIL_FK4;
prompt Enabling foreign key constraints for ENTIDADE...
alter table ENTIDADE enable constraint ENTIDADE_FK1;
prompt Enabling foreign key constraints for LANCAMENTO_FIXO...
alter table LANCAMENTO_FIXO enable constraint LANCAMENTO_FIXO_FK1;
alter table LANCAMENTO_FIXO enable constraint LANCAMENTO_FIXO_FK2;
prompt Enabling foreign key constraints for PREVISAO_CAIXA...
alter table PREVISAO_CAIXA enable constraint PREVISAO_CAIXA_FK1;
alter table PREVISAO_CAIXA enable constraint PREVISAO_CAIXA_FK2;
alter table PREVISAO_CAIXA enable constraint PREVISAO_CAIXA_FK3;
prompt Enabling foreign key constraints for FLUXO_CAIXA...
alter table FLUXO_CAIXA enable constraint FLUXO_CAIXA_FK1;
alter table FLUXO_CAIXA enable constraint FLUXO_CAIXA_FK2;
prompt Enabling triggers for CENTRO_CUSTOS...
alter table CENTRO_CUSTOS enable all triggers;
prompt Enabling triggers for PAIS...
alter table PAIS enable all triggers;
prompt Enabling triggers for ESTADO...
alter table ESTADO enable all triggers;
prompt Enabling triggers for CIDADE...
alter table CIDADE enable all triggers;
prompt Enabling triggers for CONTA...
alter table CONTA enable all triggers;
prompt Enabling triggers for GRUPO_CONTAS...
alter table GRUPO_CONTAS enable all triggers;
prompt Enabling triggers for SUB_CONTA...
alter table SUB_CONTA enable all triggers;
prompt Enabling triggers for CONTA_CONTABIL...
alter table CONTA_CONTABIL enable all triggers;
prompt Enabling triggers for ENTIDADE...
alter table ENTIDADE enable all triggers;
prompt Enabling triggers for LANCAMENTO_FIXO...
alter table LANCAMENTO_FIXO enable all triggers;
prompt Enabling triggers for PREVISAO_CAIXA...
alter table PREVISAO_CAIXA enable all triggers;
prompt Enabling triggers for FLUXO_CAIXA...
alter table FLUXO_CAIXA enable all triggers;
set feedback on
set define on
prompt Done.
