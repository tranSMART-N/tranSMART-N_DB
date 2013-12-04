truncate table biomart.bio_asy_analysis_data_idx;
insert into biomart.bio_asy_analysis_data_idx
(bio_asy_analysis_data_idx_id,ext_type,field_name,field_idx,display_name,display_idx)
select next value for biomart.seq_bio_data_id,
'Metabolic GWAS','HETPVAL',17,'HETPVAL',17;
insert into biomart.bio_asy_analysis_data_idx
(bio_asy_analysis_data_idx_id,ext_type,field_name,field_idx,display_name,display_idx)
select next value for biomart.seq_bio_data_id,
'Metabolic GWAS','BETA',1,'Beta',1;
insert into biomart.bio_asy_analysis_data_idx
(bio_asy_analysis_data_idx_id,ext_type,field_name,field_idx,display_name,display_idx)
select next value for biomart.seq_bio_data_id,
'Metabolic GWAS','DIRECTION_OF_EFFECT',2,'Direction of effect',2;
insert into biomart.bio_asy_analysis_data_idx
(bio_asy_analysis_data_idx_id,ext_type,field_name,field_idx,display_name,display_idx)
select next value for biomart.seq_bio_data_id,
'Metabolic GWAS','HWE_CONTROLS',3,'HWE in the controls',3;
insert into biomart.bio_asy_analysis_data_idx
(bio_asy_analysis_data_idx_id,ext_type,field_name,field_idx,display_name,display_idx)
select next value for biomart.seq_bio_data_id,
'Metabolic GWAS','ODDS_RATIO',4,'Odds Ratio',4;
insert into biomart.bio_asy_analysis_data_idx
(bio_asy_analysis_data_idx_id,ext_type,field_name,field_idx,display_name,display_idx)
select next value for biomart.seq_bio_data_id,
'Metabolic GWAS','MAF',7,'MAF',7;
insert into biomart.bio_asy_analysis_data_idx
(bio_asy_analysis_data_idx_id,ext_type,field_name,field_idx,display_name,display_idx)
select next value for biomart.seq_bio_data_id,
'Metabolic GWAS','HWE_CASES',5,'HWE cases',5;
insert into biomart.bio_asy_analysis_data_idx
(bio_asy_analysis_data_idx_id,ext_type,field_name,field_idx,display_name,display_idx)
select next value for biomart.seq_bio_data_id,
'Metabolic GWAS','HWE_TOTAL_STUDIES',6,'HWE total studies',6;
insert into biomart.bio_asy_analysis_data_idx
(bio_asy_analysis_data_idx_id,ext_type,field_name,field_idx,display_name,display_idx)
select next value for biomart.seq_bio_data_id,
'Metabolic GWAS','GENOTYPE_COUNTS_CASES',8,'GENOTYPE_COUNTS_CASES',8;
insert into biomart.bio_asy_analysis_data_idx
(bio_asy_analysis_data_idx_id,ext_type,field_name,field_idx,display_name,display_idx)
select next value for biomart.seq_bio_data_id,
'Metabolic GWAS','GENOTYPE_COUNTS_CONTROLS',9,'GENOTYPE_COUNTS_CONTROLS',9;
insert into biomart.bio_asy_analysis_data_idx
(bio_asy_analysis_data_idx_id,ext_type,field_name,field_idx,display_name,display_idx)
select next value for biomart.seq_bio_data_id,
'Metabolic GWAS','TOTAL_NUMBER_GENOTYPED',10,'TOTAL_GENOTYPED',10;
insert into biomart.bio_asy_analysis_data_idx
(bio_asy_analysis_data_idx_id,ext_type,field_name,field_idx,display_name,display_idx)
select next value for biomart.seq_bio_data_id,
'Metabolic GWAS','ALLELE1',11,'ALLELE1',11;
insert into biomart.bio_asy_analysis_data_idx
(bio_asy_analysis_data_idx_id,ext_type,field_name,field_idx,display_name,display_idx)
select next value for biomart.seq_bio_data_id,
'Metabolic GWAS','ALLELE2',12,'ALLELE2',12;
insert into biomart.bio_asy_analysis_data_idx
(bio_asy_analysis_data_idx_id,ext_type,field_name,field_idx,display_name,display_idx)
select next value for biomart.seq_bio_data_id,
'Metabolic GWAS','GOOD_CLUSTERING',13,'GOOD_CLUSTERING',13;
insert into biomart.bio_asy_analysis_data_idx
(bio_asy_analysis_data_idx_id,ext_type,field_name,field_idx,display_name,display_idx)
select next value for biomart.seq_bio_data_id,
'Metabolic GWAS','EFFECT',14,'EFFECT',14;
insert into biomart.bio_asy_analysis_data_idx
(bio_asy_analysis_data_idx_id,ext_type,field_name,field_idx,display_name,display_idx)
select next value for biomart.seq_bio_data_id,
'Metabolic GWAS','STANDARD_ERROR',15,'STANDARD_ERROR',15;
insert into biomart.bio_asy_analysis_data_idx
(bio_asy_analysis_data_idx_id,ext_type,field_name,field_idx,display_name,display_idx)
select next value for biomart.seq_bio_data_id,
'Metabolic GWAS','HETISQ',16,'Hetisq',16;
insert into biomart.bio_asy_analysis_data_idx
(bio_asy_analysis_data_idx_id,ext_type,field_name,field_idx,display_name,display_idx)
select next value for biomart.seq_bio_data_id,
'GWAS','BETA',1,'Beta',1;
insert into biomart.bio_asy_analysis_data_idx
(bio_asy_analysis_data_idx_id,ext_type,field_name,field_idx,display_name,display_idx)
select next value for biomart.seq_bio_data_id,
'GWAS','DIRECTION_OF_EFFECT',2,'Direction of effect',2;
insert into biomart.bio_asy_analysis_data_idx
(bio_asy_analysis_data_idx_id,ext_type,field_name,field_idx,display_name,display_idx)
select next value for biomart.seq_bio_data_id,
'GWAS','HWE_CONTROLS',3,'HWE in the controls',3;
insert into biomart.bio_asy_analysis_data_idx
(bio_asy_analysis_data_idx_id,ext_type,field_name,field_idx,display_name,display_idx)
select next value for biomart.seq_bio_data_id,
'GWAS','ODDS_RATIO',4,'Odds Ratio',4;
insert into biomart.bio_asy_analysis_data_idx
(bio_asy_analysis_data_idx_id,ext_type,field_name,field_idx,display_name,display_idx)
select next value for biomart.seq_bio_data_id,
'GWAS','MAF',7,'MAF',7;
insert into biomart.bio_asy_analysis_data_idx
(bio_asy_analysis_data_idx_id,ext_type,field_name,field_idx,display_name,display_idx)
select next value for biomart.seq_bio_data_id,
'GWAS','HWE_CASES',5,'HWE cases',5;
insert into biomart.bio_asy_analysis_data_idx
(bio_asy_analysis_data_idx_id,ext_type,field_name,field_idx,display_name,display_idx)
select next value for biomart.seq_bio_data_id,
'GWAS','HWE_TOTAL_STUDIES',6,'HWE total studies',6;
insert into biomart.bio_asy_analysis_data_idx
(bio_asy_analysis_data_idx_id,ext_type,field_name,field_idx,display_name,display_idx)
select next value for biomart.seq_bio_data_id,
'GWAS','GENOTYPE_COUNTS_CASES',8,'GENOTYPE_COUNTS_CASES',8;
insert into biomart.bio_asy_analysis_data_idx
(bio_asy_analysis_data_idx_id,ext_type,field_name,field_idx,display_name,display_idx)
select next value for biomart.seq_bio_data_id,
'GWAS','GENOTYPE_COUNTS_CONTROLS',9,'GENOTYPE_COUNTS_CONTROLS',9;
insert into biomart.bio_asy_analysis_data_idx
(bio_asy_analysis_data_idx_id,ext_type,field_name,field_idx,display_name,display_idx)
select next value for biomart.seq_bio_data_id,
'GWAS','TOTAL_NUMBER_GENOTYPED',10,'TOTAL_GENOTYPED',10;
insert into biomart.bio_asy_analysis_data_idx
(bio_asy_analysis_data_idx_id,ext_type,field_name,field_idx,display_name,display_idx)
select next value for biomart.seq_bio_data_id,
'GWAS','ALLELE1',11,'ALLELE1',11;
insert into biomart.bio_asy_analysis_data_idx
(bio_asy_analysis_data_idx_id,ext_type,field_name,field_idx,display_name,display_idx)
select next value for biomart.seq_bio_data_id,
'GWAS','ALLELE2',12,'ALLELE2',12;
insert into biomart.bio_asy_analysis_data_idx
(bio_asy_analysis_data_idx_id,ext_type,field_name,field_idx,display_name,display_idx)
select next value for biomart.seq_bio_data_id,
'GWAS','GOOD_CLUSTERING',13,'GOOD_CLUSTERING',13;
insert into biomart.bio_asy_analysis_data_idx
(bio_asy_analysis_data_idx_id,ext_type,field_name,field_idx,display_name,display_idx)
select next value for biomart.seq_bio_data_id,
'GWAS','EFFECT',14,'EFFECT',14;
insert into biomart.bio_asy_analysis_data_idx
(bio_asy_analysis_data_idx_id,ext_type,field_name,field_idx,display_name,display_idx)
select next value for biomart.seq_bio_data_id,
'GWAS','STANDARD_ERROR',15,'STANDARD_ERROR',15;
insert into biomart.bio_asy_analysis_data_idx
(bio_asy_analysis_data_idx_id,ext_type,field_name,field_idx,display_name,display_idx)
select next value for biomart.seq_bio_data_id,
'EQTL','REFERENCE_REGION',2,'REFERENCE_REGION',2;
insert into biomart.bio_asy_analysis_data_idx
(bio_asy_analysis_data_idx_id,ext_type,field_name,field_idx,display_name,display_idx)
select next value for biomart.seq_bio_data_id,
'EQTL','PROBE_AMBIGUITY',1,'PROBE_AMBIGUITY',1;
insert into biomart.bio_asy_analysis_data_idx
(bio_asy_analysis_data_idx_id,ext_type,field_name,field_idx,display_name,display_idx)
select next value for biomart.seq_bio_data_id,
'EQTL','PROBE_IN_REPEATED_SEQ',3,'PROBE_IN_REPEATED_SEQ',3;
insert into biomart.bio_asy_analysis_data_idx
(bio_asy_analysis_data_idx_id,ext_type,field_name,field_idx,display_name,display_idx)
select next value for biomart.seq_bio_data_id,
'EQTL','SNP_PROBE_IN_GENE_PROBE',4,'SNP_PROBE_IN_GENE_PROBE',4;
insert into biomart.bio_asy_analysis_data_idx
(bio_asy_analysis_data_idx_id,ext_type,field_name,field_idx,display_name,display_idx)
select next value for biomart.seq_bio_data_id,
'GWAS','dose.b.0',18,'dose.b.0',18;
insert into biomart.bio_asy_analysis_data_idx
(bio_asy_analysis_data_idx_id,ext_type,field_name,field_idx,display_name,display_idx)
select next value for biomart.seq_bio_data_id,
'GWAS','dose.b.1',19,'dose.b.1',19;
insert into biomart.bio_asy_analysis_data_idx
(bio_asy_analysis_data_idx_id,ext_type,field_name,field_idx,display_name,display_idx)
select next value for biomart.seq_bio_data_id,
'GWAS','GENOTYPED_IMPUTED',16,'Genotyped_Imputed',16;
insert into biomart.bio_asy_analysis_data_idx
(bio_asy_analysis_data_idx_id,ext_type,field_name,field_idx,display_name,display_idx)
select next value for biomart.seq_bio_data_id,
'GWAS','RSQ',17,'RSQ',17;
