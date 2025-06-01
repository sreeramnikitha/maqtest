with weather_snowfall as (
    select 
        CityName,
        Country,
        SUM(TotSnowfallIn) AS TotSnowfallIn,
        SUM(TotPrecipitationIn) AS TotPrecipitationIn
    from {{ ref('stg_forecast_day')}}
    group by CityName,
        Country
),

transformed as (
    select
        CityName,
        Country,
        TotSnowfallIn,
        TotPrecipitationIn,
        case when TotSnowfallIn > 0.00 then 'SnowCity'
        else 'NormalCity' end as SnowCityType,
        case when TotPrecipitationIn > 0.00 then 'RainyCity'
        else 'DryCity' end as RainCityType
    from weather_snowfall
)

select * from transformed

