{% import "macros/macro_name.sql" as macros %}

{{ macros.run_model_if_date_changed("my_model_name", "/path/to/yaml_file.yml") }}