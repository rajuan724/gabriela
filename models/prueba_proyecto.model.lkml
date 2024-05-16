connection: "prueba"

# include all the views
include: "/views/**/*.view.lkml"

datagroup: prueba_proyecto_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: prueba_proyecto_default_datagroup

explore: campaas {}

explore: ubicacion {}

explore: marketing {}

