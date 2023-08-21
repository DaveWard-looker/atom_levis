view: discounts {
  sql_table_name: `dwtestproject-384412.ecomm_levis.discounts` ;;

  dimension_group: date {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.date ;;
  }
  dimension: discount_amount {
    type: number
    sql: ${TABLE}.discount_amount ;;
  }
  dimension: discount_price {
    type: number
    sql: ${TABLE}.discount_price ;;
  }
  dimension: inventory_item_id {
    type: number
    sql: ${TABLE}.inventory_item_id ;;
  }
  dimension: product_id {
    type: number
    sql: ${TABLE}.product_id ;;
  }
  dimension: retail_price {
    type: number
    sql: ${TABLE}.retail_price ;;
  }
  measure: count {
    type: count
  }
  measure: count_of_products {
    type: count_distinct
    sql: ${product_id} ;;
    value_format_name: decimal_0
  }
}
