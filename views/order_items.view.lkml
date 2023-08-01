include: "//atom_fashion_hub_project/01_order_items.view.lkml"
view: levi_order_items {
  extends: [order_items]

  set: detail {
    fields: [status, created_date, sale_price, products.brand, products.item_name, users.portrait, users.name, users.email]
  }
  set: return_detail {
    fields: [status, created_date, returned_date, sale_price, products.brand, products.item_name, users.portrait, users.name, users.email]
  }

  set: simple {
    fields: [
      status,
      created_date,
      sale_price,
      gross_margin,
      count,
      order_count,
      total_gross_margin,
      average_gross_margin
    ]
  }


 }
