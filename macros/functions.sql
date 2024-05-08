{% macro margin_percent(revenue, purchase_cost) %}
    ROUND(
        SAFE_DIVIDE(
            ({{ revenue }} - cast({{ purchase_cost }} as float64)), 
            {{ revenue }}
        ) * 100,
        2 
    )
{% endmacro %}
