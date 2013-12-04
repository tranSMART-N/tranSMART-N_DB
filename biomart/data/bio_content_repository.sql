--------------------------------------------------------
--  File created - Thursday-October-31-2013   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table BIO_CONTENT_REPOSITORY
--------------------------------------------------------

C--REATE TABLE "BIOMART"."BIO_CONTENT_REPOSITORY" ("BIO_CONTENT_REPO_ID" numeric(18,0), "LOCATION" varchar(510), "ACTIVE_Y_N" CHAR(1), "REPOSITORY_TYPE" VARCHAR(200), "LOCATION_TYPE" VARCHAR(200)) ;

Insert into BIOMART.BIO_CONTENT_REPOSITORY (BIO_CONTENT_REPO_ID,LOCATION,ACTIVE_Y_N,REPOSITORY_TYPE,LOCATION_TYPE) select next value for biomart.seq_bio_data_id,'http://www.ncbi.nlm.nih.gov/','Y','NCBI','URL';
Insert into BIOMART.BIO_CONTENT_REPOSITORY (BIO_CONTENT_REPO_ID,LOCATION,ACTIVE_Y_N,REPOSITORY_TYPE,LOCATION_TYPE) select next value for biomart.seq_bio_data_id,'http://www.ctndatashare.org/protocol/','Y','ClinicalTrialsNetwork','URL';
Insert into BIOMART.BIO_CONTENT_REPOSITORY (BIO_CONTENT_REPO_ID,LOCATION,ACTIVE_Y_N,REPOSITORY_TYPE,LOCATION_TYPE) select next value for biomart.seq_bio_data_id,'http://www.clinicaltrials.gov/show/','Y','clinicaltrials.gov','URL';
Insert into BIOMART.BIO_CONTENT_REPOSITORY (BIO_CONTENT_REPO_ID,LOCATION,ACTIVE_Y_N,REPOSITORY_TYPE,LOCATION_TYPE) select next value for biomart.seq_bio_data_id,'http://www.ncbi.nlm.nih.gov/pubmed/','Y','PubMed','URL';
Insert into BIOMART.BIO_CONTENT_REPOSITORY (BIO_CONTENT_REPO_ID,LOCATION,ACTIVE_Y_N,REPOSITORY_TYPE,LOCATION_TYPE) select next value for biomart.seq_bio_data_id,'http://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=','Y','GEO','URL';
