select province_name
from province_names
order by
  (case when province_name = 'Ontario' then 0 else 1 end),
  province_name;