{{ dbt_utils.union_relations(
    relations=[
                ref('stg_raw__raw_adwords'),
                ref('stg_raw__raw_bing'),
                ref('stg_raw__raw_criteo'),
                ref('stg_raw__raw_facebook')
                ]
    ) }}