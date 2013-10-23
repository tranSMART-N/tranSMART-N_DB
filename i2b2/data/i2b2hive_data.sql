
-- **********************************
--  CRC_DB_LOOKUP
-- **********************************

INSERT INTO CRC_DB_LOOKUP(c_domain_id, c_project_path, c_owner_id, c_db_fullschema, c_db_datasource, c_db_servertype, c_db_nicename, c_db_tooltip, c_comment, c_entry_date, c_change_date, c_status_cd)
  VALUES('i2b2demo', '/Demo/', '@', 'i2b2demodata', 'java:/QueryToolDemoDS', 'NETEZZA', 'Demo', NULL, NULL, NULL, NULL, NULL);

INSERT INTO CRC_DB_LOOKUP(c_domain_id, c_project_path, c_owner_id, c_db_fullschema, c_db_datasource, c_db_servertype, c_db_nicename, c_db_tooltip, c_comment, c_entry_date, c_change_date, c_status_cd)
  VALUES('i2b2demo', '/Demo2/', '@', 'i2b2demodata2', 'java:/QueryToolDemo2DS', 'NETEZZA', 'Demo2', NULL, NULL, NULL, NULL, NULL);


-- **********************************
--  JMS_ROLES
-- **********************************

INSERT INTO  JMS_ROLES (roleid, userid) VALUES('noacc', 'nobody');
INSERT INTO  JMS_ROLES (roleid, userid) VALUES('durpublisher', 'dynsub');
INSERT INTO  JMS_ROLES (roleid, userid) VALUES('durpublisher', 'john');
INSERT INTO  JMS_ROLES (roleid, userid) VALUES('publisher',	'dynsub');
INSERT INTO  JMS_ROLES (roleid, userid) VALUES('publisher',	'john');
INSERT INTO  JMS_ROLES (roleid, userid) VALUES('subscriber', 'john');
INSERT INTO  JMS_ROLES (roleid, userid) VALUES('john',	'guest');
INSERT INTO  JMS_ROLES (roleid, userid) VALUES('j2ee',	'guest');
INSERT INTO  JMS_ROLES (roleid, userid) VALUES('guest',	'guest');


-- **********************************
--  JMS_USERS
-- **********************************

INSERT INTO JMS_USERS (userid, passwd) VALUES('dynsub', 'dynsub');
INSERT INTO JMS_USERS (userid, passwd) VALUES('nobody', 'nobody');
INSERT INTO JMS_USERS (userid, passwd) VALUES('john', 'needle	DurableSubscriberExample');
INSERT INTO JMS_USERS (userid, passwd) VALUES('j2ee', 'j2ee');
INSERT INTO JMS_USERS (userid, passwd) VALUES('guest', 'guest');


-- **********************************
--  ONT_DB_LOOKUP
-- **********************************

INSERT INTO ONT_DB_LOOKUP(c_domain_id, c_project_path, c_owner_id, c_db_fullschema, c_db_datasource, c_db_servertype, c_db_nicename, c_db_tooltip, c_comment, c_entry_date, c_change_date, c_status_cd)
  VALUES('i2b2demo', 'Demo/', '@', 'i2b2metadata', 'java:/OntologyDemoDS', 'NETEZZA', 'Metadata', NULL, NULL, NULL, NULL, NULL);

INSERT INTO ONT_DB_LOOKUP(c_domain_id, c_project_path, c_owner_id, c_db_fullschema, c_db_datasource, c_db_servertype, c_db_nicename, c_db_tooltip, c_comment, c_entry_date, c_change_date, c_status_cd)
  VALUES('i2b2demo', 'Demo2/', '@', 'i2b2metadata2', 'java:/OntologyDemo2DS', 'NETEZZA', 'Metadata2', NULL, NULL, NULL, NULL, NULL);



-- **********************************
--  WORK_DB_LOOKUP
-- **********************************

INSERT INTO WORK_DB_LOOKUP(c_domain_id, c_project_path, c_owner_id, c_db_fullschema, c_db_datasource, c_db_servertype, c_db_nicename, c_db_tooltip, c_comment, c_entry_date, c_change_date, c_status_cd)
  VALUES('i2b2demo', 'Demo/', '@', 'i2b2workdata', 'java:/WorkplaceDemoDS', 'NETEZZA', 'Workplace', NULL, NULL, NULL, NULL, NULL);

INSERT INTO WORK_DB_LOOKUP(c_domain_id, c_project_path, c_owner_id, c_db_fullschema, c_db_datasource, c_db_servertype, c_db_nicename, c_db_tooltip, c_comment, c_entry_date, c_change_date, c_status_cd)
  VALUES('i2b2demo', 'Demo2/', '@', 'i2b2workdata2', 'java:/WorkplaceDemo2DS', 'NETEZZA', 'Workplace2', NULL, NULL, NULL, NULL, NULL);

