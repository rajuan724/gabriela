connection: "prueba"

# include all the views
include: "/views/**/*.view.lkml"

datagroup: prueba_proyecto_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: prueba_proyecto_default_datagroup

explore: campaas {

  join: marketing {
    sql_on: ${campaas.campa___as} = ${marketing.campa___as};;
    relationship: many_to_one
    type: left_outer
  }
}

explore: ubicacion {}

explore: marketing {}
