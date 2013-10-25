
CREATE SCHEMA i2b2workdata authorization TO i2b2workdata;


drop table workplace;

CREATE TABLE workplace (
    c_name character varying(255) NOT NULL,
    c_user_id character varying(255) NOT NULL,
    c_group_id character varying(255) NOT NULL,
    c_share_id character varying(255),
    c_index character varying(255) NOT NULL,
    c_parent_index character varying(255),
    c_visualattributes character(3) NOT NULL,
    c_protected_access character(1),
    c_tooltip character varying(255),
    c_work_xml character varying(2000),
    c_work_xml_schema character varying(2000),
    c_work_xml_i2b2_type character varying(255),
    c_entry_date date,
    c_change_date date,
    c_status_cd character(1)
);

ALTER TABLE i2b2workdata.workplace OWNER TO i2b2workdata;


drop table workplace_access;

CREATE TABLE workplace_access (
    c_table_cd character varying(255) NOT NULL,
    c_table_name character varying(255) NOT NULL,
    c_protected_access character(1),
    c_hlevel integer NOT NULL,
    c_name character varying(255) NOT NULL,
    c_user_id character varying(255) NOT NULL,
    c_group_id character varying(255) NOT NULL,
    c_share_id character varying(255),
    c_index character varying(255) NOT NULL,
    c_parent_index character varying(255),
    c_visualattributes character(3) NOT NULL,
    c_tooltip character varying(255),
    c_entry_date date,
    c_change_date date,
    c_status_cd character(1)
);

ALTER TABLE i2b2workdata.workplace_access OWNER TO i2b2workdata;

ALTER TABLE workplace_access
    ADD CONSTRAINT workplace_access_pk PRIMARY KEY (c_index);

ALTER TABLE workplace
    ADD CONSTRAINT workplace_pk PRIMARY KEY (c_index);
