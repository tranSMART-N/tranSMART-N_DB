
CREATE SCHEMA i2b2pm authorization to i2b2pm;


drop table  pm_cell_data;

CREATE TABLE pm_cell_data (
    cell_id character varying(50) NOT NULL,
    project_path character varying(255) NOT NULL,
    name character varying(255),
    method_cd character varying(255),
    url character varying(255),
    can_override byteint,
    change_date date,
    entry_date date,
    changeby_char character varying(50),
    status_cd character varying(50)
);

ALTER TABLE i2b2pm.pm_cell_data OWNER TO i2b2pm;


drop sequence pm_params;

CREATE SEQUENCE pm_params;

ALTER TABLE i2b2pm.pm_params OWNER TO i2b2pm;


drop table pm_cell_params;

CREATE TABLE pm_cell_params (
    id byteint NOT NULL,
    datatype_cd character varying(50),
    cell_id character varying(50) NOT NULL,
    project_path character varying(255) NOT NULL,
    param_name_cd character varying(50) NOT NULL,
    value character varying(255),
    can_override byteint,
    change_date date,
    entry_date date,
    changeby_char character varying(50),
    status_cd character varying(50)
);

ALTER TABLE i2b2pm.pm_cell_params OWNER TO i2b2pm;


drop table pm_global_params;

CREATE TABLE pm_global_params (
    id byteint NOT NULL,
    datatype_cd character varying(50),
    param_name_cd character varying(50) NOT NULL,
    project_path character varying(255) NOT NULL,
    value character varying(255),
    can_override byteint,
    change_date date,
    entry_date date,
    changeby_char character varying(50),
    status_cd character varying(50)
);

ALTER TABLE i2b2pm.pm_global_params OWNER TO i2b2pm;


drop table pm_hive_data;

CREATE TABLE pm_hive_data (
    domain_id character varying(50) NOT NULL,
    helpurl character varying(255),
    domain_name character varying(255),
    environment_cd character varying(255),
    active byteint,
    change_date date,
    entry_date date,
    changeby_char character varying(50),
    status_cd character varying(50)
);

ALTER TABLE i2b2pm.pm_hive_data OWNER TO i2b2pm;


drop table pm_hive_params;

CREATE TABLE pm_hive_params (
    id byteint NOT NULL,
    datatype_cd character varying(50),
    domain_id character varying(50) NOT NULL,
    param_name_cd character varying(50) NOT NULL,
    value character varying(255),
    change_date date,
    entry_date date,
    changeby_char character varying(50),
    status_cd character varying(50)
);

ALTER TABLE i2b2pm.pm_hive_params OWNER TO i2b2pm;


drop table  pm_project_data;

CREATE TABLE pm_project_data (
    project_id character varying(50) NOT NULL,
    project_name character varying(255),
    project_wiki character varying(255),
    project_key character varying(255),
    project_path character varying(255),
    project_description character varying(2000),
    change_date date,
    entry_date date,
    changeby_char character varying(50),
    status_cd character varying(50)
);

ALTER TABLE i2b2pm.pm_project_data OWNER TO i2b2pm;


drop table pm_project_params;

CREATE TABLE pm_project_params (
    id byteint NOT NULL,
    datatype_cd character varying(50),
    project_id character varying(50) NOT NULL,
    param_name_cd character varying(50) NOT NULL,
    value character varying(255),
    change_date date,
    entry_date date,
    changeby_char character varying(50),
    status_cd character varying(50)
);

ALTER TABLE i2b2pm.pm_project_params OWNER TO i2b2pm;


drop table pm_project_user_params;

CREATE TABLE pm_project_user_params (
    id byteint NOT NULL,
    datatype_cd character varying(50),
    project_id character varying(50) NOT NULL,
    user_id character varying(50) NOT NULL,
    param_name_cd character varying(50) NOT NULL,
    value character varying(255),
    change_date date,
    entry_date date,
    changeby_char character varying(50),
    status_cd character varying(50)
);

ALTER TABLE i2b2pm.pm_project_user_params OWNER TO i2b2pm;


drop table pm_project_user_roles;

CREATE TABLE pm_project_user_roles (
    project_id character varying(50) NOT NULL,
    user_id character varying(50) NOT NULL,
    user_role_cd character varying(255) NOT NULL,
    change_date date,
    entry_date date,
    changeby_char character varying(50),
    status_cd character varying(50)
);

ALTER TABLE i2b2pm.pm_project_user_roles OWNER TO i2b2pm;


drop table pm_role_requirement;

CREATE TABLE pm_role_requirement (
    table_cd character varying(50) NOT NULL,
    column_cd character varying(50) NOT NULL,
    read_hivemgmt_cd character varying(50) NOT NULL,
    write_hivemgmt_cd character varying(50) NOT NULL,
    name_char character varying(2000),
    change_date date,
    entry_date date,
    changeby_char character varying(50),
    status_cd character varying(50)
);

ALTER TABLE i2b2pm.pm_role_requirement OWNER TO i2b2pm;


drop table pm_user_data;

CREATE TABLE pm_user_data (
    user_id character varying(50) NOT NULL,
    full_name character varying(255),
    password character varying(255),
    email character varying(255),
    project_path character varying(255),
    change_date date,
    entry_date date,
    changeby_char character varying(50),
    status_cd character varying(50)
);

ALTER TABLE i2b2pm.pm_user_data OWNER TO i2b2pm;


drop table  pm_user_params;

CREATE TABLE pm_user_params (
    id byteint NOT NULL,
    datatype_cd character varying(50),
    user_id character varying(50) NOT NULL,
    param_name_cd character varying(50) NOT NULL,
    value character varying(255),
    change_date date,
    entry_date date,
    changeby_char character varying(50),
    status_cd character varying(50)
);

ALTER TABLE i2b2pm.pm_user_params OWNER TO i2b2pm;


drop table pm_user_session;

CREATE TABLE pm_user_session (
    user_id character varying(50) NOT NULL,
    session_id character varying(50) NOT NULL,
    expired_date date,
    change_date date,
    entry_date date,
    changeby_char character varying(50),
    status_cd character varying(50)
);

ALTER TABLE i2b2pm.pm_user_session OWNER TO i2b2pm;


ALTER TABLE pm_cell_data
    ADD CONSTRAINT pm_cell_data_pkey PRIMARY KEY (cell_id, project_path);


ALTER TABLE pm_cell_params
    ADD CONSTRAINT pm_cell_params_pkey PRIMARY KEY (id);


ALTER TABLE pm_global_params
    ADD CONSTRAINT pm_global_params_pkey PRIMARY KEY (id);


ALTER TABLE  pm_hive_data
    ADD CONSTRAINT pm_hive_data_pkey PRIMARY KEY (domain_id);


ALTER TABLE  pm_hive_params
    ADD CONSTRAINT pm_hive_params_pkey PRIMARY KEY (id);


ALTER TABLE  pm_project_data
    ADD CONSTRAINT pm_project_data_pkey PRIMARY KEY (project_id);


ALTER TABLE  pm_project_params
ADD CONSTRAINT pm_project_params_pkey PRIMARY KEY (id);


ALTER TABLE  pm_project_user_params
    ADD CONSTRAINT pm_project_user_params_pkey PRIMARY KEY (id);


ALTER TABLE  pm_project_user_roles
    ADD CONSTRAINT pm_project_user_roles_pkey PRIMARY KEY (project_id, user_id, user_role_cd);


ALTER TABLE  pm_role_requirement
    ADD CONSTRAINT pm_role_requirement_pkey PRIMARY KEY (table_cd, column_cd, read_hivemgmt_cd, write_hivemgmt_cd);


ALTER TABLE  pm_user_data
    ADD CONSTRAINT pm_user_data_pkey PRIMARY KEY (user_id);


ALTER TABLE  pm_user_params
    ADD CONSTRAINT pm_user_params_pkey PRIMARY KEY (id);


ALTER TABLE  pm_user_session
    ADD CONSTRAINT pm_user_session_pkey PRIMARY KEY (session_id, user_id);
