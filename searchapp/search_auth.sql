
truncate table  searchapp.SEARCH_ROLE_AUTH_USER;
truncate table  searchapp.SEARCH_ROLE;

truncate table  searchapp.SEARCH_REQUEST_MAP;

truncate table  searchapp.SEARCH_AUTH_USER;
truncate table  searchapp.SEARCH_AUTH_GROUP;
truncate table  searchapp.SEARCH_AUTH_PRINCIPAL;

truncate table search_sec_access_level;

-- insert into searchapp.SEARCH_AUTH_PRINCIPAL: 6
insert into searchapp.SEARCH_AUTH_PRINCIPAL (ID,PRINCIPAL_TYPE,DATE_CREATED,DESCRIPTION,LAST_UPDATED,NAME,UNIQUE_ID,ENABLED)
values (1,'USER',now(),'system admin',now(),'Sys Admin','admin',true);

Insert into searchapp.SEARCH_AUTH_PRINCIPAL (ID,PRINCIPAL_TYPE,DATE_CREATED,DESCRIPTION,LAST_UPDATED,NAME,UNIQUE_ID,ENABLED)
values (2,'USER',now(),'Study Owner',now(),'Study Owner','sowner',true);

Insert into searchapp.SEARCH_AUTH_PRINCIPAL (ID,PRINCIPAL_TYPE,DATE_CREATED,DESCRIPTION,LAST_UPDATED,NAME,UNIQUE_ID,ENABLED)
values (3,'USER',now(),'Study spectator',now(),'spectator','spect',true);

Insert into searchapp.SEARCH_AUTH_PRINCIPAL (ID,PRINCIPAL_TYPE,DATE_CREATED,DESCRIPTION,LAST_UPDATED,NAME,UNIQUE_ID,ENABLED)
values (701145587,'USER',now(),'Demo',now(),'tranSMART Demo','jnjuser',true);

Insert into searchapp.SEARCH_AUTH_PRINCIPAL (ID,PRINCIPAL_TYPE,DATE_CREATED,DESCRIPTION,LAST_UPDATED,NAME,UNIQUE_ID,ENABLED)
values (-1,'GROUP',now(),'EVERYONE GROUP',now(),'EVERYONE GROUP','EVERYONEGROUP',true);

Insert into searchapp.SEARCH_AUTH_PRINCIPAL (ID,PRINCIPAL_TYPE,DATE_CREATED,DESCRIPTION,LAST_UPDATED,NAME,UNIQUE_ID,ENABLED)
values (12345,'USER',now(),'guest account',now(),'Guest',null,true);


-- insert into searchapp.SEARCH_AUTH_GROUP: 1
Insert into searchapp.SEARCH_AUTH_GROUP (ID,GROUP_CATEGORY) values (-1,'EVERYONE GROUP');


-- insert into  into searchapp.SEARCH_AUTH_USER: 5
Insert into searchapp.SEARCH_AUTH_USER (ID,EMAIL,EMAIL_SHOW,PASSWD,USER_REAL_NAME,USERNAME)
values (1,null,false,'bff5811e373694ac401008f1e6ddb65ee3e69fb2','Sys Admin','admin');
Insert into searchapp.SEARCH_AUTH_USER (ID,EMAIL,EMAIL_SHOW,PASSWD,USER_REAL_NAME,USERNAME)
values (2,null,false,'3c09192c55dfaedd146263a3c15958c633c84d90','Study Owner','sowner');
Insert into searchapp.SEARCH_AUTH_USER (ID,EMAIL,EMAIL_SHOW,PASSWD,USER_REAL_NAME,USERNAME)
values (3,null,false,'3c09192c55dfaedd146263a3c15958c633c84d90','spectator','spect');
Insert into searchapp.SEARCH_AUTH_USER (ID,EMAIL,EMAIL_SHOW,PASSWD,USER_REAL_NAME,USERNAME)
values (701145587,null,false,'3c09192c55dfaedd146263a3c15958c633c84d90','tranSMART Demo','tmuser');
Insert into searchapp.SEARCH_AUTH_USER (ID,EMAIL,EMAIL_SHOW,PASSWD,USER_REAL_NAME,USERNAME)
values (12345,null,false,'e97709e39773ebf126d2176080f38a2d45f03dfd','Guest','guest');


-- insert into into searchapp.SEARCH_REQUEST_MAP: 17
Insert into searchapp.SEARCH_REQUEST_MAP (ID,VERSION,CONFIG_ATTRIBUTE,URL) values (1,0,'ROLE_ADMIN','/requestmap/**');
Insert into searchapp.SEARCH_REQUEST_MAP (ID,VERSION,CONFIG_ATTRIBUTE,URL) values (2,0,'ROLE_ADMIN','/role/**');
Insert into searchapp.SEARCH_REQUEST_MAP (ID,VERSION,CONFIG_ATTRIBUTE,URL) values (3,2,'ROLE_ADMIN','/authUser/**');
Insert into searchapp.SEARCH_REQUEST_MAP (ID,VERSION,CONFIG_ATTRIBUTE,URL) values (5,6,'IS_AUTHENTICATED_REMEMBERED','/**');
Insert into searchapp.SEARCH_REQUEST_MAP (ID,VERSION,CONFIG_ATTRIBUTE,URL) values (6,0,'IS_AUTHENTICATED_ANONYMOUSLY','/login/**');
Insert into searchapp.SEARCH_REQUEST_MAP (ID,VERSION,CONFIG_ATTRIBUTE,URL) values (7,0,'IS_AUTHENTICATED_ANONYMOUSLY','/css/**');
Insert into searchapp.SEARCH_REQUEST_MAP (ID,VERSION,CONFIG_ATTRIBUTE,URL) values (8,0,'IS_AUTHENTICATED_ANONYMOUSLY','/js/**');
Insert into searchapp.SEARCH_REQUEST_MAP (ID,VERSION,CONFIG_ATTRIBUTE,URL) values (9,0,'IS_AUTHENTICATED_ANONYMOUSLY','/images/**');
Insert into searchapp.SEARCH_REQUEST_MAP (ID,VERSION,CONFIG_ATTRIBUTE,URL) values (10,0,'IS_AUTHENTICATED_ANONYMOUSLY','/search/loadAJAX**');
Insert into searchapp.SEARCH_REQUEST_MAP (ID,VERSION,CONFIG_ATTRIBUTE,URL) values (1753960,0,'ROLE_ADMIN','/secureObject/**');
Insert into searchapp.SEARCH_REQUEST_MAP (ID,VERSION,CONFIG_ATTRIBUTE,URL) values (1753958,0,'ROLE_ADMIN','/accessLog/**');
Insert into searchapp.SEARCH_REQUEST_MAP (ID,VERSION,CONFIG_ATTRIBUTE,URL) values (1753959,0,'ROLE_ADMIN','/authUserSecureAccess/**');
Insert into searchapp.SEARCH_REQUEST_MAP (ID,VERSION,CONFIG_ATTRIBUTE,URL) values (1753961,0,'ROLE_ADMIN','/secureObjectPath/**');
Insert into searchapp.SEARCH_REQUEST_MAP (ID,VERSION,CONFIG_ATTRIBUTE,URL) values (11,0,'IS_AUTHENTICATED_ANONYMOUSLY','/analysis/getGenePatternFile');
Insert into searchapp.SEARCH_REQUEST_MAP (ID,VERSION,CONFIG_ATTRIBUTE,URL) values (12,0,'IS_AUTHENTICATED_ANONYMOUSLY','/analysis/getTestFile');
Insert into searchapp.SEARCH_REQUEST_MAP (ID,VERSION,CONFIG_ATTRIBUTE,URL) values (1837256,0,'ROLE_ADMIN','/userGroup/**');
Insert into searchapp.SEARCH_REQUEST_MAP (ID,VERSION,CONFIG_ATTRIBUTE,URL) values (1837257,0,'ROLE_ADMIN','/secureObjectAccess/**');

-- insert into searchapp.SEARCH_ROLE
Insert into searchapp.SEARCH_ROLE (ID,VERSION,AUTHORITY,DESCRIPTION) values (4,52,'ROLE_ADMIN','admin user');
Insert into searchapp.SEARCH_ROLE (ID,VERSION,AUTHORITY,DESCRIPTION) values (5,98,'ROLE_STUDY_OWNER','study owner');
Insert into searchapp.SEARCH_ROLE (ID,VERSION,AUTHORITY,DESCRIPTION) values (6,301,'ROLE_SPECTATOR','spectator user');
Insert into searchapp.SEARCH_ROLE (ID,VERSION,AUTHORITY,DESCRIPTION) values (5027,56,'ROLE_DATASET_EXPLORER_ADMIN','dataset Explorer admin users - can view all trials');
Insert into searchapp.SEARCH_ROLE (ID,VERSION,AUTHORITY,DESCRIPTION) values (5071,92,'ROLE_PUBLIC_USER','public user');

-- insert into searchapp.SEARCH_ROLE_AUTH_USER
Insert into searchapp.SEARCH_ROLE_AUTH_USER (PEOPLE_ID,AUTHORITIES_ID) values (4,1);
Insert into searchapp.SEARCH_ROLE_AUTH_USER (PEOPLE_ID,AUTHORITIES_ID) values (5,2);
Insert into searchapp.SEARCH_ROLE_AUTH_USER (PEOPLE_ID,AUTHORITIES_ID) values (6,3);
Insert into searchapp.SEARCH_ROLE_AUTH_USER (PEOPLE_ID,AUTHORITIES_ID) values (4,701145587);
Insert into searchapp.SEARCH_ROLE_AUTH_USER (PEOPLE_ID,AUTHORITIES_ID) values (5071,701145587);
Insert into searchapp.SEARCH_ROLE_AUTH_USER (PEOPLE_ID,AUTHORITIES_ID) values (5027,701145587);
Insert into searchapp.SEARCH_ROLE_AUTH_USER (PEOPLE_ID,AUTHORITIES_ID) values (5071,3);
Insert into searchapp.SEARCH_ROLE_AUTH_USER (PEOPLE_ID,AUTHORITIES_ID) values (5027,701145587);
Insert into searchapp.SEARCH_ROLE_AUTH_USER (PEOPLE_ID,AUTHORITIES_ID) values (5027,12345);
Insert into searchapp.SEARCH_ROLE_AUTH_USER (PEOPLE_ID,AUTHORITIES_ID) values (6,12345);
Insert into searchapp.SEARCH_ROLE_AUTH_USER (PEOPLE_ID,AUTHORITIES_ID) values (5,12345);


-- insert into  search_sec_access_level: 3
insert into search_sec_access_level (search_sec_access_level_id, access_level_name, access_level_value)
values(263801,	'OWN',	255);

insert into search_sec_access_level (search_sec_access_level_id, access_level_name, access_level_value)
values(263802,	'EXPORT',	8);

insert into search_sec_access_level (search_sec_access_level_id, access_level_name, access_level_value)
values(263803,	'VIEW',	1);
