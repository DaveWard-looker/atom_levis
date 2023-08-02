project_name: "atom_levis"

# # Use local_dependency: To enable referencing of another project
# # on this instance with include: statements
#
# local_dependency: {
#   project: "name_of_other_project"
# }

remote_dependency: atom_fashion_hub_project {
  url: "git@github.com:DaveWard-looker/atomfashion_bq.git"
  ref: "master"
  override_constant: connection {
    value: "bi_levis_connection"
  }
  override_constant: schema {
    value: "ecomm_levis"
  }
}
