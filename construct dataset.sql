with cte as
(select label_id, l.project_id, asset_id, type, is_seed,
       date(to_timestamp(l.create_date/1000)) as create_date,
       date(to_timestamp(l.update_date/1000)) as update_date, is_included_in_training_data, 
	   label_time, approved_by, model_version, is_changed 
from label l join projects p on l.project_id = p.project_id
where p.organization_id = 'c9521bb1-2923-45db-8c8d-36b102033272' and is_seed = false and type='image')

select * from cte order by create_date