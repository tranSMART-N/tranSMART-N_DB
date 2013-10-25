
CREATE SCHEMA i2b2hive authorization TO i2b2hive;

drop table crc_analysis_job;

CREATE TABLE crc_analysis_job (
    job_id character varying(10) NOT NULL,
    queue_name character varying(50),
    status_type_id integer,
    domain_id character varying(255),
    project_id character varying(500),
    user_id character varying(255),
    request_xml character varying(2000),
    create_date date,
    update_date date
);

ALTER TABLE i2b2hive.crc_analysis_job OWNER TO i2b2hive;


drop table crc_db_lookup;

CREATE TABLE crc_db_lookup (
    c_domain_id character varying(255) NOT NULL,
    c_project_path character varying(255) NOT NULL,
    c_owner_id character varying(255) NOT NULL,
    c_db_fullschema character varying(255) NOT NULL,
    c_db_datasource character varying(255) NOT NULL,
    c_db_servertype character varying(255) NOT NULL,
    c_db_nicename character varying(255),
    c_db_tooltip character varying(255),
    c_comment character varying(500),
    c_entry_date date,
    c_change_date date,
    c_status_cd character(1)
);

ALTER TABLE i2b2hive.crc_db_lookup OWNER TO i2b2hive;


drop table hilosequences;

CREATE TABLE hilosequences (
    sequencename character varying(50) NOT NULL,
    highvalues integer NOT NULL
);

ALTER TABLE i2b2hive.hilosequences OWNER TO i2b2hive;


drop table jms_messages;

CREATE TABLE jms_messages (
    messageid integer NOT NULL,
    destination character varying(150) NOT NULL,
    txid integer,
    txop character(1),
    messageblob character varying(500)
);

ALTER TABLE i2b2hive.jms_messages OWNER TO i2b2hive;


drop table jms_roles;

CREATE TABLE jms_roles (
    roleid character varying(32) NOT NULL,
    userid character varying(32) NOT NULL
);

ALTER TABLE i2b2hive.jms_roles OWNER TO i2b2hive;


CREATE TABLE jms_subscriptions (
    clientid character varying(128) NOT NULL,
    subname character varying(128) NOT NULL,
    topic character varying(255) NOT NULL,
    selector character varying(255)
);

ALTER TABLE i2b2hive.jms_subscriptions OWNER TO i2b2hive;


drop table jms_transactions;

CREATE TABLE jms_transactions (
    txid integer NOT NULL
);

ALTER TABLE i2b2hive.jms_transactions OWNER TO i2b2hive;


drop table jms_users;

CREATE TABLE jms_users (
    userid character varying(32) NOT NULL,
    passwd character varying(32) NOT NULL,
    clientid character varying(128)
);

ALTER TABLE i2b2hive.jms_users OWNER TO i2b2hive;


drop table ont_db_lookup;

CREATE TABLE ont_db_lookup (
    c_domain_id character varying(255) NOT NULL,
    c_project_path character varying(255) NOT NULL,
    c_owner_id character varying(255) NOT NULL,
    c_db_fullschema character varying(255) NOT NULL,
    c_db_datasource character varying(255) NOT NULL,
    c_db_servertype character varying(255) NOT NULL,
    c_db_nicename character varying(255),
    c_db_tooltip character varying(255),
    c_comment character varying(500),
    c_entry_date date,
    c_change_date date,
    c_status_cd character(1)
);

ALTER TABLE i2b2hive.ont_db_lookup OWNER TO i2b2hive;


drop table timers;

CREATE TABLE timers (
    timerid character varying(80) NOT NULL,
    targetid character varying(250) NOT NULL,
    initialdate date,
    timerinterval bigint,
    instancepk character varying(2000),
    info character varying(2000)
);

ALTER TABLE i2b2hive.timers OWNER TO i2b2hive;


drop table  work_db_lookup;

CREATE TABLE work_db_lookup (
    c_domain_id character varying(255) NOT NULL,
    c_project_path character varying(255) NOT NULL,
    c_owner_id character varying(255) NOT NULL,
    c_db_fullschema character varying(255) NOT NULL,
    c_db_datasource character varying(255) NOT NULL,
    c_db_servertype character varying(255) NOT NULL,
    c_db_nicename character varying(255),
    c_db_tooltip character varying(255),
    c_comment character varying(4000),
    c_entry_date date,
    c_change_date date,
    c_status_cd character(1)
);

ALTER TABLE i2b2hive.work_db_lookup OWNER TO i2b2hive;


ALTER TABLE crc_analysis_job
    ADD CONSTRAINT analsis_job_pk PRIMARY KEY (job_id);


ALTER TABLE crc_db_lookup
    ADD CONSTRAINT crc_db_lookup_pk PRIMARY KEY (c_domain_id, c_project_path, c_owner_id);


ALTER TABLE hilosequences
    ADD CONSTRAINT hilo_pk PRIMARY KEY (sequencename);


ALTER TABLE jms_messages
    ADD CONSTRAINT jms_messages_pkey PRIMARY KEY (messageid, destination);


ALTER TABLE jms_roles
    ADD CONSTRAINT jms_roles_pkey PRIMARY KEY (userid, roleid);


ALTER TABLE jms_subscriptions
    ADD CONSTRAINT jms_subscriptions_pkey PRIMARY KEY (clientid, subname);


ALTER TABLE jms_transactions
    ADD CONSTRAINT jms_transactions_pkey PRIMARY KEY (txid);


ALTER TABLE jms_users
    ADD CONSTRAINT jms_users_pkey PRIMARY KEY (userid);


ALTER TABLE ont_db_lookup
    ADD CONSTRAINT ont_db_lookup_pk PRIMARY KEY (c_domain_id, c_project_path, c_owner_id);


ALTER TABLE timers
    ADD CONSTRAINT timers_pk PRIMARY KEY (timerid, targetid);


ALTER TABLE work_db_lookup
    ADD CONSTRAINT work_db_lookup_pk PRIMARY KEY (c_domain_id, c_project_path, c_owner_id);
