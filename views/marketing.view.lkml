view: marketing {
  sql_table_name: `Marketing_embebido.Marketing` ;;

  dimension: campa___as {
    type: string
    sql: ${TABLE}.Campa___as ;;
  }
  dimension: costo {
    type: number
    sql: ${TABLE}.Costo ;;
  }
  dimension: red_social {
    type: string
    sql: ${TABLE}.Red_social ;;
  }
  measure: count {
    type: count
  }
}
