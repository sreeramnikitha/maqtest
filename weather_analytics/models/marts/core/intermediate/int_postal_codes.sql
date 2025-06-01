 {{
    config(
        materialized='view',
        tags = ["hourly"]
    )
 }}   

 select * from {{ ref('stg_postal_codes')}}
 where "Country" = 'US'