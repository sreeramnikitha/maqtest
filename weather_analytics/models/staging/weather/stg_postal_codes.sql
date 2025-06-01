with source as (
    select * from {{ source('weather_data_atlas', 'postal_codes')}}
),

renamed as (
    select
        city_name as "CityName",
        country as "Country",
        postal_code as "PostalCode"
    from
        source
)

select * from renamed

