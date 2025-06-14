WITH source AS (
    SELECT * FROM {{ source('weather_data_atlas', 'forecast_day') }}
),

renamed AS (
    SELECT 
        "MIN_HUMIDITY_SPECIFIC_2M_GPKG" AS MinHumiditySpecific2mGpkg,
        "AVG_WIND_SPEED_100M_MPH" AS AvgWindSpeed100mMph,
        "AVG_TEMPERATURE_AIR_2M_F" AS AvgTemperatureAir2mF,
        "AVG_WIND_DIRECTION_100M_DEG" AS AvgWindDirection100mDeg,
        "MAX_TEMPERATURE_WETBULB_2M_F" AS MaxTemperatureWetbulb2mF,
        "MAX_CLOUD_COVER_TOT_PCT" AS MaxCloudCoverTotPct,
        "MAX_HUMIDITY_RELATIVE_2M_PCT" AS MaxHumidityRelative2mPct,
        "MAX_TEMPERATURE_HEATINDEX_2M_F" AS MaxTemperatureHeatindex2mF,
        "MIN_PRESSURE_2M_MB" AS MinPressure2mMb,
        "AVG_PRESSURE_2M_MB" AS AvgPressure2mMb,
        "DOY_STD" AS DoyStd,
        "MAX_TEMPERATURE_WINDCHILL_2M_F" AS MaxTemperatureWindchill2mF,
        "AVG_WIND_DIRECTION_10M_DEG" AS AvgWindDirection10mDeg,
        "MAX_RADIATION_SOLAR_TOTAL_WPM2" AS MaxRadiationSolarTotalWpm2,
        "AVG_WIND_SPEED_80M_MPH" AS AvgWindSpeed80mMph,
        "PROBABILITY_OF_PRECIPITATION_PCT" AS ProbabilityOfPrecipitationPct,
        "MAX_TEMPERATURE_AIR_2M_F" AS MaxTemperatureAir2mF,
        "MIN_TEMPERATURE_FEELSLIKE_2M_F" AS MinTemperatureFeelslike2mF,
        "MIN_TEMPERATURE_DEWPOINT_2M_F" AS MinTemperatureDewpoint2mF,
        "AVG_HUMIDITY_RELATIVE_2M_PCT" AS AvgHumidityRelative2mPct,
        "MIN_TEMPERATURE_WETBULB_2M_F" AS MinTemperatureWetbulb2mF,
        "MAX_TEMPERATURE_FEELSLIKE_2M_F" AS MaxTemperatureFeelslike2mF,
        "MIN_TEMPERATURE_WINDCHILL_2M_F" AS MinTemperatureWindchill2mF,
        "TOT_SNOWFALL_IN" AS TotSnowfallIn,
        "AVG_TEMPERATURE_WINDCHILL_2M_F" AS AvgTemperatureWindchill2mF,
        "AVG_TEMPERATURE_HEATINDEX_2M_F" AS AvgTemperatureHeatindex2mF,
        "CITY_NAME" AS CityName,
        "AVG_TEMPERATURE_FEELSLIKE_2M_F" AS AvgTemperatureFeelslike2mF,
        "MIN_WIND_SPEED_100M_MPH" AS MinWindSpeed100mMph,
        "MAX_WIND_SPEED_10M_MPH" AS MaxWindSpeed10mMph,
        "AVG_WIND_DIRECTION_80M_DEG" AS AvgWindDirection80mDeg,
        "MAX_PRESSURE_MEAN_SEA_LEVEL_MB" AS MaxPressureMeanSeaLevelMb,
        "COUNTRY" AS Country,
        "MAX_HUMIDITY_SPECIFIC_2M_GPKG" AS MaxHumiditySpecific2mGpkg,
        "MAX_PRESSURE_2M_MB" AS MaxPressure2mMb,
        "MAX_WIND_SPEED_80M_MPH" AS MaxWindSpeed80mMph,
        "POSTAL_CODE" AS PostalCode,
        "MIN_PRESSURE_MEAN_SEA_LEVEL_MB" AS MinPressureMeanSeaLevelMb,
        "AVG_TEMPERATURE_DEWPOINT_2M_F" AS AvgTemperatureDewpoint2mF,
        "MIN_TEMPERATURE_HEATINDEX_2M_F" AS MinTemperatureHeatindex2mF,
        "MIN_WIND_SPEED_80M_MPH" AS MinWindSpeed80mMph,
        "MAX_WIND_SPEED_100M_MPH" AS MaxWindSpeed100mMph,
        "DATE_VALID_STD" AS DateValidStd,
        "MIN_CLOUD_COVER_TOT_PCT" AS MinCloudCoverTotPct,
        "AVG_CLOUD_COVER_TOT_PCT" AS AvgCloudCoverTotPct,
        "TIME_INIT_UTC" AS TimeInitUtc,
        "AVG_TEMPERATURE_WETBULB_2M_F" AS AvgTemperatureWetbulb2mF,
        "TOT_RADIATION_SOLAR_TOTAL_WPM2" AS TotRadiationSolarTotalWpm2,
        "MIN_HUMIDITY_RELATIVE_2M_PCT" AS MinHumidityRelative2mPct,
        "MIN_TEMPERATURE_AIR_2M_F" AS MinTemperatureAir2mF,
        "AVG_HUMIDITY_SPECIFIC_2M_GPKG" AS AvgHumiditySpecific2mGpkg,
        "TOT_PRECIPITATION_IN" AS TotPrecipitationIn,
        "PROBABILITY_OF_SNOW_PCT" AS ProbabilityOfSnowPct,
        "AVG_PRESSURE_MEAN_SEA_LEVEL_MB" AS AvgPressureMeanSeaLevelMb,
        "MIN_RADIATION_SOLAR_TOTAL_WPM2" AS MinRadiationSolarTotalWpm2,
        "MAX_TEMPERATURE_DEWPOINT_2M_F" AS MaxTemperatureDewpoint2mF,
        "MIN_WIND_SPEED_10M_MPH" AS MinWindSpeed10mMph,
        "AVG_WIND_SPEED_10M_MPH" AS AvgWindSpeed10mMph,
        "AVG_RADIATION_SOLAR_TOTAL_WPM2" AS AvgRadiationSolarTotalWpm2
    FROM source
)

SELECT * FROM renamed