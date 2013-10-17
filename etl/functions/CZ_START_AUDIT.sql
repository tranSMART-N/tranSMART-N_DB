CREATE OR REPLACE FUNCTION tm_cz.CZ_START_AUDIT
(
  jobName character varying
  ,databaseName character varying
  )
returns numeric
AS $$
/*************************************************************************
* Copyright 2008-2012 Janssen Research & Development, LLC.
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
* http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
******************************************************************/
declare
	rtnCd	integer;
	jobId	numeric;
BEGIN
	begin
		insert into tm_cz.cz_job_master
			(start_date, 
			active, 
			database_name,
			job_name,
			job_status) 
		VALUES(
			CURRENT_TIMESTAMP,
			'Y', 
			databaseName,
			jobName,
			'Running')
	  RETURNING job_id INTO jobID;
	end;
  
  return jobID;
  
  exception 
	when OTHERS then
		select tm_cz.cz_write_error(jobId,0,SQLSTATE,SQLERRM,null) into rtnCd;
		return -16;

END;

$$ LANGUAGE plpgsql
security definer 
-- set a secure search_path: trusted schema(s), then pg_temp
set search_path=tm_cz, pg_temp;