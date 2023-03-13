{% macro run_model_if_date_changed(model_name, yaml_path) %}

{% set current_date = execute('select current_date') %}

{% set data_date = yml_read(yaml_path)['vars']['data_date'] %}

{% if current_date != data_date %}
  {% do run_model(model_name) %}
{% endif %}

{% endmacro %}