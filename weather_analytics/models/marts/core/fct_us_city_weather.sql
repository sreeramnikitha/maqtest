{{
    config(
        tags = 'core'
    )
}}

with us_city_weather as (
    select
        "CityName",
        "SnowCityType",
        "RainCityType",
        SUM("CityPopulation") AS "CityPopulation"
    from {{ ref('int_us_city_weather_population')}}
    group by all
),

us_city_weather_pk as (
    select
        {{ dbt_utils.generate_surrogate_key([
                '"CityName"'
        ])}} as "CityKey",
        *
    from us_city_weather
)

select * from us_city_weather_pk

