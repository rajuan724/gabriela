view: campaas {
  sql_table_name: `Marketing_embebido.Campañas` ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }
  dimension: accepted_cmp1 {
    type: number
    sql: ${TABLE}.AcceptedCmp1 ;;
  }
  dimension: accepted_cmp2 {
    type: number
    sql: ${TABLE}.AcceptedCmp2 ;;
  }
  dimension: accepted_cmp3 {
    type: number
    sql: ${TABLE}.AcceptedCmp3 ;;
  }
  dimension: accepted_cmp4 {
    type: number
    sql: ${TABLE}.AcceptedCmp4 ;;
  }
  dimension: accepted_cmp5 {
    type: number
    sql: ${TABLE}.AcceptedCmp5 ;;
  }
  dimension: adolescentes_en_casa {
    type: number
    sql: ${TABLE}.Adolescentes_en_casa ;;
  }
  dimension: campa___as {
    type: string
    sql: ${TABLE}.Campa___as ;;
  }
  dimension: cant {
    type: number
    sql: ${TABLE}.Cant ;;
  }
  dimension: compras_catalogo {
    type: number
    sql: ${TABLE}.Compras_catalogo ;;
  }
  dimension: compras_descuentos {
    type: number
    sql: ${TABLE}.Compras_descuentos ;;
  }
  dimension: compras_tiendas {
    type: number
    sql: ${TABLE}.Compras_tiendas ;;
  }
  dimension: compras_total {
    type: number
    sql: ${TABLE}.Compras_total ;;
  }
  dimension: compras_web {
    type: number
    sql: ${TABLE}.Compras_web ;;
  }
  dimension: dias_ultima_compra {
    type: number
    sql: ${TABLE}.Dias_ultima_compra ;;
  }
  dimension: educacion {
    type: string
    sql: ${TABLE}.Educacion ;;
  }
  dimension: estado_civil {
    type: string
    sql: ${TABLE}.Estado_civil ;;
  }
  dimension_group: fecha_inscripcion {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Fecha_inscripcion ;;
  }
  dimension: genero {
    type: string
    sql: ${TABLE}.Genero ;;
  }
  dimension: hijos {
    type: number
    sql: ${TABLE}.Hijos ;;
  }
  dimension: ingreso_medio_mensual {
    type: number
    sql: ${TABLE}.Ingreso_medio_mensual ;;
  }
  dimension: ni___os_en_casa {
    type: number
    sql: ${TABLE}.Ni___os_en_casa ;;
  }
  dimension: numero_carnes {
    type: number
    sql: ${TABLE}.Numero_carnes ;;
  }
  dimension: numero_dulces {
    type: number
    sql: ${TABLE}.Numero_dulces ;;
  }
  dimension: numero_frutas {
    type: number
    sql: ${TABLE}.Numero_frutas ;;
  }
  dimension: numero_granos {
    type: number
    sql: ${TABLE}.Numero_granos ;;
  }
  dimension: numero_lacteos {
    type: number
    sql: ${TABLE}.Numero_lacteos ;;
  }
  dimension: numero_mar {
    type: number
    sql: ${TABLE}.Numero_mar ;;
  }
  dimension: numero_total_productos {
    type: number
    sql: ${TABLE}.Numero_total_productos ;;
  }
  dimension: numero_vinos {
    type: number
    sql: ${TABLE}.Numero_vinos ;;
  }
  dimension: numero_zona {
    type: number
    sql: ${TABLE}.Numero_zona ;;
  }
  dimension: quejas {
    type: number
    sql: ${TABLE}.Quejas ;;
  }
  dimension: ultima_campa___a {
    type: number
    sql: ${TABLE}.Ultima_campa___a ;;
  }
  dimension: visitas_web {
    type: number
    sql: ${TABLE}.Visitas_web ;;
  }
  dimension: year_birth {
    type: number
    sql: ${TABLE}.Year_Birth ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
