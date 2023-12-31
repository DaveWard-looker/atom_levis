include: "//atom_fashion_hub_project/Explores/order_items.explore.lkml"
include: "/views/discounts.view.lkml"
include: "/views/order_items.view.lkml"
include: "/views/city_tax_refinement.view.lkml"
explore: +order_items {
  hidden: yes
}


explore: levis_order_items {
  fields: [
    ALL_FIELDS*,
    -city_sales_tax.hierarchy_fields*
  ]
  hidden: no
  from: levis_order_items
  extends: [order_items]
  view_name: order_items
  label: "Levi Order Information"
  description: "Information related to Levi Orders placed"
  view_label: "Levi Order Item Sales"
  join: discounts {
    sql_on: ${discounts.inventory_item_id} = ${order_items.inventory_item_id} ;;
    type: left_outer
    relationship: many_to_one
    fields: [discounts.discount_measures*]
  }
  join: user_order_facts {
    view_label: "Levi Customers"
    relationship: many_to_one
    sql_on: ${user_order_facts.user_id} = ${order_items.user_id} ;;
  }
  join: users {
    view_label: "Levi Customers"
    type: left_outer
    relationship: many_to_one
    sql_on: ${order_items.user_id} = ${users.id} ;;
  }
  join: city_sales_tax {
  type: inner
  sql_on: ${users.city} = ${city_sales_tax.city}
            AND ${users.state} = ${city_sales_tax.state}
            AND ${users.country} = ${city_sales_tax.country}
        ;;
  relationship: many_to_one
}

}
