{% test positive_values(model, column_name) %}

    select *
    from {{ model }}
    where {{ model }}.{{ column_name }} <= 0

{% endtest %}