with weather_details as (
    select
        *
    from {{ ref('int_weather_forecast_day')}}
),

postal_codes_us as (
    select
        *
    from {{ ref('int_postal_codes')}}
),

joined as (
    select
        P."CityName",
        SUM(W.TotSnowfallIn) AS "TotalSnowfall",
        SUM(W.TotPrecipitationIn) AS "TotalPrecipitation",
        W.SnowCityType AS "SnowCityType",
        W.RainCityType AS "RainCityType"
    from weather_details W 
    left join postal_codes_us P on W.CityName = P."CityName"
    group by all
)

select * from joined