select 
JSONExtractString(_airbyte_data, 'profile_id') as profile_id,
JSONExtractString(_airbyte_data, 'appmetrica_device_id') as appmetrica_device_id,
JSONExtractString(_airbyte_data, 'mp_card_number') as mp_card_number,
JSONExtractString(_airbyte_data, 'city_code') as city_code,
JSONExtractString(_airbyte_data, 'load_date') as load_date,
toLowCardinality(__table_name) as __table_name,
toDate32(_airbyte_emitted_at) as __emitted_at,
NOW() as __normalized_at
from 
(select *, 'travelata._airbyte_raw_sheets_default_travelataappmetrica_profiles' as __table_name
from travelata._airbyte_raw_sheets_default_travelataappmetrica_profiles)