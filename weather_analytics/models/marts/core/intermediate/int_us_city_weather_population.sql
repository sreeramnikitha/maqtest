with city_population as (
    select
        CityName,
        CityPopulation
    from {{ ref('int_unioned_us_population')}}
),

us_weather_details as (
    select
        *
    from {{ ref('int_weather_history_US') }}
),

joined as (
    select
        us_weather_details."CityName",
        city_population.CityPopulation as "CityPopulation",
        us_weather_details."TotalSnowfall",
        us_weather_details."TotalPrecipitation",
        us_weather_details."SnowCityType",
        us_weather_details."RainCityType"
    from us_weather_details
    left join city_population on lower(us_weather_details."CityName") = lower(city_population.CityName)
)

select * from joined