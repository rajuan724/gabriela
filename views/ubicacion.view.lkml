view: ubicacion {
  sql_table_name: `Marketing_embebido.Ubicacion` ;;

  dimension: direccion {
    type: string
    sql: ${TABLE}.Direccion ;;
  }
  dimension: latitud {
    type: number
    sql: ${TABLE}.Latitud ;;
  }
  dimension: longitud {
    type: number
    sql: ${TABLE}.Longitud ;;
  }
  dimension: numero_zona {
    type: number
    sql: ${TABLE}.Numero_zona ;;
  }
  dimension: zona {
    type: string
    sql: ${TABLE}.Zona ;;
  }
  dimension: zona_google {
    sql: ${zona} ;;
    link: {
      label: "Google"
      url: "https://www.google.com/search?q={{ value }}"
      icon_url: "https://google.com/favicon.ico"
    }
  }
  measure: count {
    type: count
  }
}
