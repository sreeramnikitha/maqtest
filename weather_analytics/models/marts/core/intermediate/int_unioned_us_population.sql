with unioned as (
    {{ dbt_utils.union_relations(
        relations = [ref('city_details_1'), ref('city_details_2')]
    )}}
),

renamed as (
    select
        CityName,
        CityPopulation
    from unioned
)

select * from renamed