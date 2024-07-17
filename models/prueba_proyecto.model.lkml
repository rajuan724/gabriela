connection: "prueba"

# include all the views
include: "/views/**/*.view.lkml"

datagroup: prueba_proyecto_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: prueba_proyecto_default_datagroup

explore: campaas {
  #access_filter: {
  #  field: campaas.campa___as
  #  user_attribute: camp
  #}
  #always_filter: {
  #  filters: [campaas.year_birth: "2004"]
  #}
  join: marketing {
    type: left_outer
    sql_on: ${campaas.campa___as} = ${marketing.campa___as} ;;
    relationship: many_to_one
  }
  join: ubicacion {
    type: left_outer
    sql_on: ${campaas.numero_zona} = ${ubicacion.numero_zona} ;;
    relationship: many_to_one
  }
  }

explore: ubicacion {}

explore: marketing {}
