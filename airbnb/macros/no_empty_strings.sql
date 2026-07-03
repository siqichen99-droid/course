{% macro no_empty_strings(model, column_name) %}
    {%- for col in adapter.get_columns_in_relation(model) -%}
        {%- if col.is_string() %}
            {{ col.name}} IS NOT NULL AND {{ col.name }} != '' AND
        {%- endif %}
    {%- endfor %}
    TRUE
{% endmacro %}

