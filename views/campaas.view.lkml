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
    label: "Campaña Aceptada 1"
  }
  dimension: accepted_cmp2 {
    type: number
    sql: ${TABLE}.AcceptedCmp2 ;;
    label: "Campaña Aceptada 2"
  }
  dimension: accepted_cmp3 {
    type: number
    sql: ${TABLE}.AcceptedCmp3 ;;
    label: "Campaña Aceptada 3"
  }
  dimension: accepted_cmp4 {
    type: number
    sql: ${TABLE}.AcceptedCmp4 ;;
    label: "Campaña Aceptada 4"
  }
  dimension: accepted_cmp5 {
    type: number
    sql: ${TABLE}.AcceptedCmp5 ;;
    label: "Campaña Aceptada 5"
  }


  dimension: adolescentes_en_casa {
    type: number
    sql: ${TABLE}.Adolescentes_en_casa ;;
    label: "Número de Adolescentes en Casa"
  }
  dimension: campa___as {
    type: string
    sql: ${TABLE}.Campa___as ;;
    label: "Campañas"
  }
  dimension: cant {
    type: number
    sql: ${TABLE}.Cant ;;
    label: "Cantidad"
  }

  dimension: compras_catalogo {
    type: number
    sql: ${TABLE}.Compras_catalogo ;;
    label: "Compras por Catálogo"
  }
  dimension: compras_descuentos {
    type: number
    sql: ${TABLE}.Compras_descuentos ;;
    label: "Compras con Descuentos"
  }
  dimension: compras_tiendas {
    type: number
    sql: ${TABLE}.Compras_tiendas ;;
    label: "Compras en Tiendas"
  }
  dimension: compras_total {
    type: number
    sql: ${TABLE}.Compras_total ;;
    label: "Total de Compras"
  }
  dimension: compras_web {
    type: number
    sql: ${TABLE}.Compras_web ;;
    label: "Compras en la Web"
  }

    dimension: dias_ultima_compra {
    type: number
    sql: ${TABLE}.Dias_ultima_compra ;;
    label: "Días desde la Última Compra"
  }

  dimension: educacion {
    type: string
    sql: ${TABLE}.Educacion ;;
    label: "Nivel de Educación"
  }
  dimension: estado_civil {
    type: string
    sql: ${TABLE}.Estado_civil ;;
    label: "Estado Civil"
  }

  # Segmentación por fecha de inscripción
  dimension_group: fecha_inscripcion {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Fecha_inscripcion ;;
    label: "Fecha de Inscripción"
  }

  parameter: date_granularity {
    type: unquoted
    allowed_value: {
      label: "Año"
      value: "year"
    }
    allowed_value: {
      label: "Mes"
      value: "month"
    }
    allowed_value: {
      label: "Semana"
      value: "week"
    }
  }

  dimension: date {
    sql: {% if date_granularity._parameter_value == 'year' %}
          ${fecha_inscripcion_year}
        {% elsif date_granularity._parameter_value == 'month' %}
          ${fecha_inscripcion_month}
        {% elsif date_granularity._parameter_value == 'week' %}
          ${fecha_inscripcion_week}
        {% endif %} ;;
    label: "Fecha según Granularidad"
  }

  dimension: genero {
    type: string
    sql: ${TABLE}.Genero ;;
    drill_fields: [hijos, ingreso_medio_mensual]
    label: "Género"
  }

  dimension: hijos {
    type: number
    sql: ${TABLE}.Hijos ;;
    label: "Número de Hijos"
  }
  dimension: ingreso_medio_mensual {
    type: number
    sql: ${TABLE}.Ingreso_medio_mensual ;;
    label: "Ingreso Medio Mensual"
  }
  dimension: ni___os_en_casa {
    type: number
    sql: ${TABLE}.Ni___os_en_casa ;;
    label: "Número de Niños en Casa"
  }


  dimension: numero_carnes {
    type: number
    sql: ${TABLE}.Numero_carnes ;;
    label: "Número de Carnes Compradas"
  }
  dimension: numero_dulces {
    type: number
    sql: ${TABLE}.Numero_dulces ;;
    label: "Número de Dulces Comprados"
  }
  dimension: numero_frutas {
    type: number
    sql: ${TABLE}.Numero_frutas ;;
    label: "Número de Frutas Compradas"
  }
  dimension: numero_granos {
    type: number
    sql: ${TABLE}.Numero_granos ;;
    label: "Número de Granos Comprados"
  }
  dimension: numero_lacteos {
    type: number
    sql: ${TABLE}.Numero_lacteos ;;
    label: "Número de Lácteos Comprados"
  }
  dimension: numero_mar {
    type: number
    sql: ${TABLE}.Numero_mar ;;
    label: "Número de Mariscos Comprados"
  }
  dimension: numero_total_productos {
    type: number
    sql: ${TABLE}.Numero_total_productos ;;
    label: "Número Total de Productos Comprados"
  }
  dimension: numero_vinos {
    type: number
    sql: ${TABLE}.Numero_vinos ;;
    label: "Número de Vinos Comprados"
  }
  dimension: numero_zona {
    type: number
    sql: ${TABLE}.Numero_zona ;;
    label: "Número de Zona"
  }

  dimension: quejas {
    type: number
    sql: ${TABLE}.Quejas ;;
    label: "Número de Quejas"
  }

  dimension: ultima_campa___a {
    type: number
    sql: ${TABLE}.Ultima_campa___a ;;
    label: "Última Campaña"
  }
  dimension: visitas_web {
    type: number
    sql: ${TABLE}.Visitas_web ;;
    label: "Número de Visitas Web"
  }


  dimension: year_birth {
    type: number
    sql: ${TABLE}.Year_Birth ;;
    label: "Año de Nacimiento"
  }

  dimension: concatenado_prueba  {
    type: string
    sql: concat(${year_birth}, ' ', ${educacion}) ;;
    label: "Concatenado Año y Educación"
  }

  dimension: d_sin_carne {
    type: number
    sql: ${compras_total} - ${numero_carnes} ;;
    label: "Compras Sin Carne"
  }

  dimension: edad {
    type: number
    sql: EXTRACT(YEAR FROM CURRENT_DATE()) - ${year_birth} ;;
    label: "Edad"
  }



  measure: count {
    type: count
    drill_fields: [id]
    label: "Conteo de Registros"
  }

  measure: total_sin_carne {
    type: sum
    sql: ${compras_total} - ${numero_carnes} ;;
    label: "Total de Compras Sin Carne"
  }

  measure: promedio_productos_carne {
    type: average
    sql: ${numero_carnes} ;;
    label: "Promedio de Productos de Carne"
  }

  measure: total_costo {
    type: sum
    sql: ${marketing.costo} ;;
    label: "Costo Total"
  }
}
