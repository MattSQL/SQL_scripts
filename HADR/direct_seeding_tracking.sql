select * from sys.dm_hadr_automatic_seeding
order by start_time desc
--
--select * from sys.dm_hadr_physical_seeding_stats

select 
	local_database_name
	,database_size_bytes - transferred_size_bytes as bytes_to_go
	,((database_size_bytes - transferred_size_bytes)/transfer_rate_bytes_per_second)/60 as [minutes]
from sys.dm_hadr_physical_seeding_stats

