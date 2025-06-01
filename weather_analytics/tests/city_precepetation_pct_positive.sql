select
    CityName,
    SUM(ProbabilityOfPrecipitationPct) as "ProbabilityOfPrecipitationPct"
from {{ ref('stg_forecast_day')}}
group by 1
having "ProbabilityOfPrecipitationPct" < 0