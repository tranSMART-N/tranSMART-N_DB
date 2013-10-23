
-- ***********************
--   PM_CELL_DATA
-- ***********************

INSERT INTO PM_CELL_DATA (CELL_ID, PROJECT_PATH, NAME, METHOD_CD, URL, CAN_OVERRIDE, STATUS_CD)
VALUES('CRC', '/', 'Data Repository', 'REST', 'http://localhost:9090/i2b2/services/QueryToolService/', 1, 'A');

INSERT INTO PM_CELL_DATA(CELL_ID, PROJECT_PATH, NAME, METHOD_CD, URL, CAN_OVERRIDE, STATUS_CD)
VALUES('FRC', '/', 'File Repository ', 'SOAP', 'http://localhost:9090/i2b2/services/FRService/', 1, 'A');

INSERT INTO PM_CELL_DATA(CELL_ID, PROJECT_PATH, NAME, METHOD_CD, URL, CAN_OVERRIDE, STATUS_CD)
VALUES('ONT', '/', 'Ontology Cell', 'REST', 'http://localhost:9090/i2b2/services/OntologyService/', 1, 'A');

INSERT INTO PM_CELL_DATA(CELL_ID, PROJECT_PATH, NAME, METHOD_CD, URL, CAN_OVERRIDE, STATUS_CD)
VALUES('WORK', '/', 'Workplace Cell', 'REST', 'http://localhost:9090/i2b2/services/WorkplaceService/', 1, 'A');


-- ***************************
--   PM_HIVE_DATA
-- ***************************

INSERT INTO PM_HIVE_DATA (DOMAIN_ID, HELPURL, DOMAIN_NAME, ENVIRONMENT_CD, ACTIVE, STATUS_CD)
VALUES('i2b2', 'http://www.i2b2.org', 'i2b2demo', 'DEVELOPMENT', 1, 'A');


-- ***************************
--   PM_PROJECT_USER_ROLES
-- ***************************

INSERT INTO PM_PROJECT_USER_ROLES (PROJECT_ID, USER_ID, USER_ROLE_CD, STATUS_CD)
VALUES('Demo', 'OBFSC_SERVICE_ACCOUNT', 'USER', 'A');
INSERT INTO PM_PROJECT_USER_ROLES (PROJECT_ID, USER_ID, USER_ROLE_CD, STATUS_CD)
VALUES('Demo', 'OBFSC_SERVICE_ACCOUNT', 'DATA_OBFSC', 'A');

INSERT INTO PM_PROJECT_USER_ROLES (PROJECT_ID, USER_ID, USER_ROLE_CD, STATUS_CD)
VALUES('Demo', 'AGG_SERVICE_ACCOUNT', 'USER', 'A');
INSERT INTO PM_PROJECT_USER_ROLES (PROJECT_ID, USER_ID, USER_ROLE_CD, STATUS_CD)
VALUES('Demo', 'AGG_SERVICE_ACCOUNT', 'MANAGER', 'A');
INSERT INTO PM_PROJECT_USER_ROLES (PROJECT_ID, USER_ID, USER_ROLE_CD, STATUS_CD)
VALUES('Demo', 'AGG_SERVICE_ACCOUNT', 'DATA_OBFSC', 'A');
INSERT INTO PM_PROJECT_USER_ROLES (PROJECT_ID, USER_ID, USER_ROLE_CD, STATUS_CD)
VALUES('Demo', 'AGG_SERVICE_ACCOUNT', 'DATA_AGG', 'A');

INSERT INTO PM_PROJECT_USER_ROLES (PROJECT_ID, USER_ID, USER_ROLE_CD, STATUS_CD)
VALUES('Demo', 'i2b2', 'MANAGER', 'A');
INSERT INTO PM_PROJECT_USER_ROLES (PROJECT_ID, USER_ID, USER_ROLE_CD, STATUS_CD)
VALUES('Demo', 'i2b2', 'USER', 'A');
INSERT INTO PM_PROJECT_USER_ROLES (PROJECT_ID, USER_ID, USER_ROLE_CD, STATUS_CD)
VALUES('Demo', 'i2b2', 'DATA_OBFSC', 'A');
INSERT INTO PM_PROJECT_USER_ROLES (PROJECT_ID, USER_ID, USER_ROLE_CD, STATUS_CD)
VALUES('Demo', 'i2b2', 'ADMIN', 'A');
INSERT INTO PM_PROJECT_USER_ROLES (PROJECT_ID, USER_ID, USER_ROLE_CD, STATUS_CD)
VALUES('Demo', 'i2b2', 'DATA_AGG', 'A');
INSERT INTO PM_PROJECT_USER_ROLES (PROJECT_ID, USER_ID, USER_ROLE_CD, STATUS_CD)
VALUES('Demo', 'i2b2', 'DATA_LDS', 'A');
INSERT INTO PM_PROJECT_USER_ROLES (PROJECT_ID, USER_ID, USER_ROLE_CD, STATUS_CD)
VALUES('Demo', 'i2b2', 'EDITOR', 'A');
INSERT INTO PM_PROJECT_USER_ROLES (PROJECT_ID, USER_ID, USER_ROLE_CD, STATUS_CD)
VALUES('Demo', 'i2b2', 'DATA_DEID', 'A');
INSERT INTO PM_PROJECT_USER_ROLES (PROJECT_ID, USER_ID, USER_ROLE_CD, STATUS_CD)
VALUES('Demo', 'i2b2', 'DATA_PROT', 'A');

INSERT INTO PM_PROJECT_USER_ROLES (PROJECT_ID, USER_ID, USER_ROLE_CD, STATUS_CD)
VALUES('Demo', 'demo', 'USER', 'A');
INSERT INTO PM_PROJECT_USER_ROLES (PROJECT_ID, USER_ID, USER_ROLE_CD, STATUS_CD)
VALUES('Demo', 'demo', 'DATA_DEID', 'A');
INSERT INTO PM_PROJECT_USER_ROLES (PROJECT_ID, USER_ID, USER_ROLE_CD, STATUS_CD)
VALUES('Demo', 'demo', 'DATA_OBFSC', 'A');
INSERT INTO PM_PROJECT_USER_ROLES (PROJECT_ID, USER_ID, USER_ROLE_CD, STATUS_CD)
VALUES('Demo', 'demo', 'DATA_AGG', 'A');
INSERT INTO PM_PROJECT_USER_ROLES (PROJECT_ID, USER_ID, USER_ROLE_CD, STATUS_CD)
VALUES('Demo', 'demo', 'DATA_LDS', 'A');
INSERT INTO PM_PROJECT_USER_ROLES (PROJECT_ID, USER_ID, USER_ROLE_CD, STATUS_CD)
VALUES('Demo', 'demo', 'EDITOR', 'A');


INSERT INTO PM_PROJECT_USER_ROLES (PROJECT_ID, USER_ID, USER_ROLE_CD, STATUS_CD)
VALUES('Demo2', 'OBFSC_SERVICE_ACCOUNT', 'USER', 'A');
INSERT INTO PM_PROJECT_USER_ROLES (PROJECT_ID, USER_ID, USER_ROLE_CD, STATUS_CD)
VALUES('Demo2', 'OBFSC_SERVICE_ACCOUNT', 'DATA_OBFSC', 'A');

INSERT INTO PM_PROJECT_USER_ROLES (PROJECT_ID, USER_ID, USER_ROLE_CD, STATUS_CD)
VALUES('Demo2', 'AGG_SERVICE_ACCOUNT', 'USER', 'A');
INSERT INTO PM_PROJECT_USER_ROLES (PROJECT_ID, USER_ID, USER_ROLE_CD, STATUS_CD)
VALUES('Demo2', 'AGG_SERVICE_ACCOUNT', 'MANAGER', 'A');
INSERT INTO PM_PROJECT_USER_ROLES (PROJECT_ID, USER_ID, USER_ROLE_CD, STATUS_CD)
VALUES('Demo2', 'AGG_SERVICE_ACCOUNT', 'DATA_OBFSC', 'A');
INSERT INTO PM_PROJECT_USER_ROLES (PROJECT_ID, USER_ID, USER_ROLE_CD, STATUS_CD)
VALUES('Demo2', 'AGG_SERVICE_ACCOUNT', 'DATA_AGG', 'A');

INSERT INTO PM_PROJECT_USER_ROLES (PROJECT_ID, USER_ID, USER_ROLE_CD, STATUS_CD)
VALUES('Demo2', 'i2b2', 'MANAGER', 'A');
INSERT INTO PM_PROJECT_USER_ROLES (PROJECT_ID, USER_ID, USER_ROLE_CD, STATUS_CD)
VALUES('Demo2', 'i2b2', 'USER', 'A');
INSERT INTO PM_PROJECT_USER_ROLES (PROJECT_ID, USER_ID, USER_ROLE_CD, STATUS_CD)
VALUES('Demo2', 'i2b2', 'DATA_OBFSC', 'A');
INSERT INTO PM_PROJECT_USER_ROLES (PROJECT_ID, USER_ID, USER_ROLE_CD, STATUS_CD)
VALUES('Demo2', 'i2b2', 'ADMIN', 'A');
INSERT INTO PM_PROJECT_USER_ROLES (PROJECT_ID, USER_ID, USER_ROLE_CD, STATUS_CD)
VALUES('Demo2', 'i2b2', 'DATA_AGG', 'A');
INSERT INTO PM_PROJECT_USER_ROLES (PROJECT_ID, USER_ID, USER_ROLE_CD, STATUS_CD)
VALUES('Demo2', 'i2b2', 'DATA_LDS', 'A');
INSERT INTO PM_PROJECT_USER_ROLES (PROJECT_ID, USER_ID, USER_ROLE_CD, STATUS_CD)
VALUES('Demo2', 'i2b2', 'EDITOR', 'A');
INSERT INTO PM_PROJECT_USER_ROLES (PROJECT_ID, USER_ID, USER_ROLE_CD, STATUS_CD)
VALUES('Demo2', 'i2b2', 'DATA_DEID', 'A');
INSERT INTO PM_PROJECT_USER_ROLES (PROJECT_ID, USER_ID, USER_ROLE_CD, STATUS_CD)
VALUES('Demo2', 'i2b2', 'DATA_PROT', 'A');

INSERT INTO PM_PROJECT_USER_ROLES (PROJECT_ID, USER_ID, USER_ROLE_CD, STATUS_CD)
VALUES('Demo2', 'demo', 'USER', 'A');
INSERT INTO PM_PROJECT_USER_ROLES (PROJECT_ID, USER_ID, USER_ROLE_CD, STATUS_CD)
VALUES('Demo2', 'demo', 'DATA_DEID', 'A');
INSERT INTO PM_PROJECT_USER_ROLES (PROJECT_ID, USER_ID, USER_ROLE_CD, STATUS_CD)
VALUES('Demo2', 'demo', 'DATA_OBFSC', 'A');
INSERT INTO PM_PROJECT_USER_ROLES (PROJECT_ID, USER_ID, USER_ROLE_CD, STATUS_CD)
VALUES('Demo2', 'demo', 'DATA_AGG', 'A');
INSERT INTO PM_PROJECT_USER_ROLES (PROJECT_ID, USER_ID, USER_ROLE_CD, STATUS_CD)
VALUES('Demo2', 'demo', 'DATA_LDS', 'A');
INSERT INTO PM_PROJECT_USER_ROLES (PROJECT_ID, USER_ID, USER_ROLE_CD, STATUS_CD)
VALUES('Demo2', 'demo', 'EDITOR', 'A');

INSERT INTO PM_PROJECT_USER_ROLES (PROJECT_ID, USER_ID, USER_ROLE_CD, STATUS_CD)
VALUES('@', 'i2b2', 'ADMIN', 'A');


-- ***********************
--   PM_ROLE_REQUIREMENT
-- ***********************

INSERT INTO PM_ROLE_REQUIREMENT(TABLE_CD, COLUMN_CD, READ_HIVEMGMT_CD, WRITE_HIVEMGMT_CD, NAME_CHAR, CHANGE_DATE, ENTRY_DATE, CHANGEBY_CHAR, STATUS_CD)
  VALUES('PM_HIVE_DATA', '@', '@', 'ADMIN', NULL, NULL, NULL, NULL, 'A');

INSERT INTO PM_ROLE_REQUIREMENT(TABLE_CD, COLUMN_CD, READ_HIVEMGMT_CD, WRITE_HIVEMGMT_CD, NAME_CHAR, CHANGE_DATE, ENTRY_DATE, CHANGEBY_CHAR, STATUS_CD)
  VALUES('PM_HIVE_PARAMS', '@', '@', 'ADMIN', NULL, NULL, NULL, NULL, 'A');

INSERT INTO PM_ROLE_REQUIREMENT(TABLE_CD, COLUMN_CD, READ_HIVEMGMT_CD, WRITE_HIVEMGMT_CD, NAME_CHAR, CHANGE_DATE, ENTRY_DATE, CHANGEBY_CHAR, STATUS_CD)
  VALUES('PM_PROJECT_DATA', '@', '@', 'MANAGER', NULL, NULL, NULL, NULL, 'A');

INSERT INTO PM_ROLE_REQUIREMENT(TABLE_CD, COLUMN_CD, READ_HIVEMGMT_CD, WRITE_HIVEMGMT_CD, NAME_CHAR, CHANGE_DATE, ENTRY_DATE, CHANGEBY_CHAR, STATUS_CD)
  VALUES('PM_PROJECT_USER_ROLES', '@', '@', 'MANAGER', NULL, NULL, NULL, NULL, 'A');

INSERT INTO PM_ROLE_REQUIREMENT(TABLE_CD, COLUMN_CD, READ_HIVEMGMT_CD, WRITE_HIVEMGMT_CD, NAME_CHAR, CHANGE_DATE, ENTRY_DATE, CHANGEBY_CHAR, STATUS_CD)
  VALUES('PM_USER_DATA', '@', '@', 'ADMIN', NULL, NULL, NULL, NULL, 'A');

INSERT INTO PM_ROLE_REQUIREMENT(TABLE_CD, COLUMN_CD, READ_HIVEMGMT_CD, WRITE_HIVEMGMT_CD, NAME_CHAR, CHANGE_DATE, ENTRY_DATE, CHANGEBY_CHAR, STATUS_CD)
  VALUES('PM_PROJECT_PARAMS', '@', '@', 'MANAGER', NULL, NULL, NULL, NULL, 'A');

INSERT INTO PM_ROLE_REQUIREMENT(TABLE_CD, COLUMN_CD, READ_HIVEMGMT_CD, WRITE_HIVEMGMT_CD, NAME_CHAR, CHANGE_DATE, ENTRY_DATE, CHANGEBY_CHAR, STATUS_CD)
  VALUES('PM_PROJECT_USER_PARAMS', '@', '@', 'MANAGER', NULL, NULL, NULL, NULL, 'A');

INSERT INTO PM_ROLE_REQUIREMENT(TABLE_CD, COLUMN_CD, READ_HIVEMGMT_CD, WRITE_HIVEMGMT_CD, NAME_CHAR, CHANGE_DATE, ENTRY_DATE, CHANGEBY_CHAR, STATUS_CD)
  VALUES('PM_USER_PARAMS', '@', '@', 'ADMIN', NULL, NULL, NULL, NULL, 'A');

INSERT INTO PM_ROLE_REQUIREMENT(TABLE_CD, COLUMN_CD, READ_HIVEMGMT_CD, WRITE_HIVEMGMT_CD, NAME_CHAR, CHANGE_DATE, ENTRY_DATE, CHANGEBY_CHAR, STATUS_CD)
  VALUES('PM_CELL_DATA', '@', '@', 'MANAGER', NULL, NULL, NULL, NULL, 'A');

INSERT INTO PM_ROLE_REQUIREMENT(TABLE_CD, COLUMN_CD, READ_HIVEMGMT_CD, WRITE_HIVEMGMT_CD, NAME_CHAR, CHANGE_DATE, ENTRY_DATE, CHANGEBY_CHAR, STATUS_CD)
  VALUES('PM_CELL_PARAMS', '@', '@', 'MANAGER', NULL, NULL, NULL, NULL, 'A');

INSERT INTO PM_ROLE_REQUIREMENT(TABLE_CD, COLUMN_CD, READ_HIVEMGMT_CD, WRITE_HIVEMGMT_CD, NAME_CHAR, CHANGE_DATE, ENTRY_DATE, CHANGEBY_CHAR, STATUS_CD)
  VALUES('PM_GLOBAL_PARAMS', '@', '@', 'ADMIN', NULL, NULL, NULL, NULL, 'A');


-- ***********************
--   PM_USER_DATA
-- ***********************

INSERT INTO PM_USER_DATA (USER_ID, FULL_NAME, PASSWORD, STATUS_CD)
VALUES('i2b2', 'i2b2 Admin', '9117d59a69dc49807671a51f10ab7f', 'A');

INSERT INTO PM_USER_DATA (USER_ID, FULL_NAME, PASSWORD, STATUS_CD)
VALUES('demo', 'i2b2 User', '9117d59a69dc49807671a51f10ab7f', 'A');

INSERT INTO PM_USER_DATA (USER_ID, FULL_NAME, PASSWORD, STATUS_CD)
VALUES('OBFSC_SERVICE_ACCOUNT', 'OBFSC_SERVICE_ACCOUNT', '9117d59a69dc49807671a51f10ab7f', 'A');

INSERT INTO PM_USER_DATA (USER_ID, FULL_NAME, PASSWORD, STATUS_CD)
VALUES('AGG_SERVICE_ACCOUNT', 'AGG_SERVICE_ACCOUNT', '9117d59a69dc49807671a51f10ab7f', 'A');


-- ***********************
--   PM_PROJECT_DATA
-- ***********************

INSERT INTO PM_PROJECT_DATA (PROJECT_ID, PROJECT_NAME, PROJECT_WIKI, PROJECT_PATH, STATUS_CD)
VALUES('Demo', 'i2b2 Demo', 'http://www.i2b2.org', '/Demo', 'A');
