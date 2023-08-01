datagroup: every_hour {
  sql_trigger: SELECT EXTRACT(HOUR FROM CURRENT_TIMESTAMP());;
}

datagroup: every_day {
  sql_trigger: SELECT FORMAT_TIMESTAMP('%F', CURRENT_TIMESTAMP(), 'America/Los_Angeles');;
}

datagroup: ecommerce_etl {
  sql_trigger: SELECT count(*) FROM `ecomm_levis.order_items` ;;
}
