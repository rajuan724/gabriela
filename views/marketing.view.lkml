view: marketing {
  sql_table_name: `Marketing_embebido.Marketing` ;;

  dimension: campa___as {
    type: string
    sql: ${TABLE}.Campa___as ;;
    label: "Campanas"
  }

  dimension: costo {
    type: number
    sql: ${TABLE}.Costo ;;
    label: "Costo"
  }

  dimension: red_social {
    type: string
    sql: ${TABLE}.Red_social ;;
    label: "Red Social"
  }

  measure: count {
    type: count
    label: "Conteo de Registros"
  }
}
