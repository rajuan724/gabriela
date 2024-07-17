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
  dimension: zonahtml {
    html: <p>{{value}}
          <a href="#drillmenu">Drill menu</a>,
          <a href="http://www.google.com/search?q={{value}}">
            Google search
          </a></p>;;
    sql: ${TABLE}.zona ;;
    type: string
  }
  measure: dash_nav {
    label: "Mancii"
    type: string
    sql: "";;
    html:
    <div style="background-color: #FFFFFF; height:525px;width:100%"></div>
      <div style="background-color: #FFFFFF; border: solid 1px #4285F4; border-radius: 5px; padding: 5px 10px; height: 60px; width:100%">
        <nav style="font-size: 18px; color: #4285F4">

      <a style="padding: 5px; float: center; line-height: 40px; margin-left: 8px; color: #4285F4" href="http://www.google.com/search?q=Mancii">MANCII</a>
      </nav>
      </div>
      <div style="background-color: #FFFFFF; height:500px;width:100%"></div>;;
  }
  measure: count {
    type: count
  }
}
