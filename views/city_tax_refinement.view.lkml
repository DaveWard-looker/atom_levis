include: "//atom_fashion_hub_project/27_city_sales_tax.view"

view: +city_sales_tax {

  dimension: city  {
    hidden: no
    drill_fields: [hierarchy_fields*]
  }

  dimension: country  {
    hidden: no
    drill_fields: [hierarchy_fields*]
  }

  dimension: state {
    hidden: no
    drill_fields: [hierarchy_fields*]
  }

set: hierarchy_fields {
  fields: [city,country,state,city_tax]
}

set: tax_measures {
  fields: [city_tax]
}

}
