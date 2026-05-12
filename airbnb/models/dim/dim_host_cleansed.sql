WITH dim_hosts_cleansed AS (
    SELECT * FROM {{ ref('src_hosts') }}
)
SELECT host_id
    , NULLIF(host_name, 'Anonymous') as host_name
    , is_superhost
    , created_at
    , updated_at
FROM dim_hosts_cleansed