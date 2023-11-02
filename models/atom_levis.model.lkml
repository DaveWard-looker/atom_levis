connection: "bi_levis_connection"

include: "/views/*.view.lkml"
include: "/value_formats.lkml"
include: "/datagroups.lkml"
include: "/explores/order_items.explore.lkml"
include: "/test.dashboard.lookml"
include: "/google_pso_content_delivery.dashboard.lookml"
# test comment
# include all views in the views/ folder in this project
# include: "/**/*.view.lkml"                 # include all views in this project
# include: "my_dashboard.dashboard.lookml"   # include a LookML dashboard called my_dashboard

# # Select the views that should be a part of this model,
# # and define the joins that connect them together.
#
# explore: order_items {
#   join: orders {
#     relationship: many_to_one
#     sql_on: ${orders.id} = ${order_items.order_id} ;;
#   }
#
#   join: users {
#     relationship: many_to_one
#     sql_on: ${users.id} = ${orders.user_id} ;;
#   }
# }
# yrdy

explore: discounts {}
