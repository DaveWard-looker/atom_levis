include: "//atom_fashion_hub_project/Explores/web_sessions.explore.lkml"

explore: +web_sessions {
  hidden: yes
}

explore: levis_web_sessions {
  extends: [web_sessions]
  view_name: web_sessions
  label: "Levi Web Session Data"
  description: "Granular Web Session Data on Levi Brand"

}
