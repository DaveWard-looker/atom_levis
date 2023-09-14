- dashboard: google_pso__content_delivery
  title: Google PSO - Content Delivery
  layout: newspaper
  preferred_viewer: dashboards-next
  load_configuration: wait
  description: ''
  preferred_slug: u7Uj7Wn5PYc8Mit0l0B12i
  elements:
  - title: Google PSO - Content Delivery
    name: Google PSO - Content Delivery
    model: system__activity
    explore: scheduled_plan
    type: looker_pie
    fields: [scheduled_job.created_day_of_week, scheduled_job.count]
    fill_fields: [scheduled_job.created_day_of_week]
    filters: {}
    sorts: [scheduled_job.created_day_of_week]
    limit: 500
    column_limit: 50
    value_labels: legend
    label_type: lab
    inner_radius: 50
    colors: ["#75E2E2", "#3EB0D5", "#4276BE", "#462C9D", "#9174F0", "#B1399E", "#B32F37",
      "#E57947", "#FBB555", "#FFD95F", "#C2DD67", "#72D16D"]
    series_colors: {}
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    comparison_label: Last 30 Days
    hidden_fields:
    note_state: collapsed
    note_display: hover
    note_text: Number of scheduled jobs each day for last 7 days. One scheduled plan
      may have multiple scheduled jobs.
    listen:
      Run Once (Yes / No): scheduled_plan.run_once
      Created Date: scheduled_job.created_date
    row: 0
    col: 16
    width: 8
    height: 6
  - title: Schedules by Hour of Day
    name: Schedules by Hour of Day
    model: system__activity
    explore: scheduled_plan
    type: looker_column
    fields: [scheduled_job.count, scheduled_job.created_hour_of_day]
    fill_fields: [scheduled_job.created_hour_of_day]
    filters:
      scheduled_job.created_date: 7 days ago for 7 days
    sorts: [scheduled_job.created_hour_of_day]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    value_labels: legend
    label_type: lab
    inner_radius: 50
    colors: ["#75E2E2", "#3EB0D5", "#4276BE", "#462C9D", "#9174F0", "#B1399E", "#B32F37",
      "#E57947", "#FBB555", "#FFD95F", "#C2DD67", "#72D16D"]
    series_colors: {}
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    comparison_label: Last 30 Days
    hidden_fields:
    note_state: collapsed
    note_display: hover
    note_text: Number of scheduled jobs each day for last 7 days. One scheduled plan
      may have multiple scheduled jobs.
    defaults_version: 1
    listen:
      Run Once (Yes / No): scheduled_plan.run_once
    row: 6
    col: 16
    width: 8
    height: 7
  - title: Schedule History (Expanded Admin)
    name: Schedule History (Expanded Admin)
    model: system__activity
    explore: scheduled_plan
    type: looker_grid
    fields: [scheduled_plan.id, user.name, scheduled_job.cron_schedule, scheduled_plan_destination.type,
      scheduled_job.id, scheduled_job.status, scheduled_job.status_detail, scheduled_job.created_time,
      scheduled_job.finalized_time, scheduled_job_stage.runtime, look.link, dashboard.link]
    filters:
      scheduled_job.created_date: 7 days
    sorts: [scheduled_job.created_time desc]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen:
      Run Once (Yes / No): scheduled_plan.run_once
    row: 0
    col: 0
    width: 16
    height: 19
  - title: Error Trends
    name: Error Trends
    model: system__activity
    explore: scheduled_plan
    type: looker_grid
    fields: [scheduled_job.created_time, scheduled_job.finalized_time, scheduled_job.id,
      scheduled_job.status, user.name, scheduled_job.status_detail, scheduled_job_stage.stage,
      scheduled_plan_destination.type, scheduled_plan_destination.format]
    filters:
      scheduled_job.status: failure
    sorts: [scheduled_job.status]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen:
      Run Once (Yes / No): scheduled_plan.run_once
    row: 19
    col: 8
    width: 16
    height: 6
  - title: Success/Failure Ratio - Daily
    name: Success/Failure Ratio - Daily
    model: system__activity
    explore: scheduled_plan
    type: looker_column
    fields: [scheduled_job.finalized_day_of_week, scheduled_job.status, scheduled_job.count]
    pivots: [scheduled_job.status]
    fill_fields: [scheduled_job.finalized_day_of_week]
    filters:
      scheduled_job.finalized_date: 7 days
    sorts: [scheduled_job.status, scheduled_job.count desc 0]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: measure
      expression: ''
      label: Count of Failure
      based_on: scheduled_job.status
      _kind_hint: measure
      measure: count_of_failure
      type: count_distinct
      _type_hint: number
      filters:
        scheduled_job.status: failure
    - category: measure
      expression: ''
      label: 'Count of Successful '
      based_on: scheduled_job.status
      _kind_hint: measure
      measure: count_of_successful
      type: count_distinct
      _type_hint: number
      filters:
        scheduled_job.status: success
    - category: measure
      expression: ''
      label: Count of in_progress
      based_on: scheduled_job.status
      _kind_hint: measure
      measure: count_of_in_progress
      type: count_distinct
      _type_hint: number
      filters:
        scheduled_job.status: '"in_progress"'
    - category: table_calculation
      expression: sum(pivot_row(${scheduled_job.count}))
      label: Sum
      value_format:
      value_format_name:
      _kind_hint: supermeasure
      table_calculation: sum
      _type_hint: number
    - category: table_calculation
      expression: "${scheduled_job.count}/${sum}"
      label: Percent of Total
      value_format:
      value_format_name: percent_0
      _kind_hint: measure
      table_calculation: percent_of_total
      _type_hint: number
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    x_axis_zoom: true
    y_axis_zoom: true
    hidden_series: [success - scheduled_job.count, failure - scheduled_job.count]
    defaults_version: 1
    hidden_pivots: {}
    hidden_fields: [sum, scheduled_job.count]
    value_labels: legend
    label_type: labPer
    listen:
      Run Once (Yes / No): scheduled_plan.run_once
    row: 19
    col: 0
    width: 8
    height: 6
  - title: Failure Status
    name: Failure Status
    model: system__activity
    explore: scheduled_plan
    type: looker_grid
    fields: [user.name, user.email, scheduled_job.count, scheduled_job.status_detail]
    filters:
      scheduled_job.finalized_day_of_week_index: '0'
      scheduled_job.status: failure
      scheduled_job.finalized_date: 7 days
    sorts: [scheduled_job.count desc 0]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: measure
      expression: ''
      label: Count of Failure
      based_on: scheduled_job.status
      _kind_hint: measure
      measure: count_of_failure
      type: count_distinct
      _type_hint: number
      filters:
        scheduled_job.status: failure
    - category: measure
      expression: ''
      label: 'Count of Successful '
      based_on: scheduled_job.status
      _kind_hint: measure
      measure: count_of_successful
      type: count_distinct
      _type_hint: number
      filters:
        scheduled_job.status: success
    - category: measure
      expression: ''
      label: Count of in_progress
      based_on: scheduled_job.status
      _kind_hint: measure
      measure: count_of_in_progress
      type: count_distinct
      _type_hint: number
      filters:
        scheduled_job.status: '"in_progress"'
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen:
      Run Once (Yes / No): scheduled_plan.run_once
    row: 25
    col: 8
    width: 16
    height: 7
  - title: Weekly Schedule Heatmap
    name: Weekly Schedule Heatmap
    model: system__activity
    explore: scheduled_plan
    type: looker_grid
    fields: [scheduled_job_stage.started_hour_of_day, scheduled_job_stage.started_day_of_week,
      scheduled_job_stage.avg_runtime, scheduled_job.count]
    pivots: [scheduled_job_stage.started_day_of_week]
    fill_fields: [scheduled_job_stage.started_hour_of_day, scheduled_job_stage.started_day_of_week]
    filters:
      scheduled_job_stage.stage: '"enqueue_for_execute"'
      scheduled_job.created_date: 7 days ago for 7 days
    sorts: [scheduled_job_stage.started_day_of_week 0, scheduled_job_stage.started_hour_of_day]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: gray
    limit_displayed_rows: false
    enable_conditional_formatting: true
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: true
    show_sql_query_menu_options: false
    pinned_columns:
      scheduled_job_stage.started_hour_of_day: left
    column_order: [scheduled_job_stage.started_hour_of_day, Monday|FIELD|0_scheduled_job_stage.avg_runtime,
      Monday|FIELD|0_scheduled_job.count, Tuesday|FIELD|1_scheduled_job_stage.avg_runtime,
      Tuesday|FIELD|1_scheduled_job.count, Wednesday|FIELD|2_scheduled_job_stage.avg_runtime,
      Wednesday|FIELD|2_scheduled_job.count, Thursday|FIELD|3_scheduled_job_stage.avg_runtime,
      Thursday|FIELD|3_scheduled_job.count, Friday|FIELD|4_scheduled_job_stage.avg_runtime,
      Friday|FIELD|4_scheduled_job.count, Saturday|FIELD|5_scheduled_job_stage.avg_runtime,
      Saturday|FIELD|5_scheduled_job.count, Sunday|FIELD|6_scheduled_job_stage.avg_runtime,
      Sunday|FIELD|6_scheduled_job.count]
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_labels:
      scheduled_job_stage.avg_runtime: Average Time in Queue
    series_column_widths:
      scheduled_job_stage.started_hour_of_day: 153
    series_cell_visualizations:
      scheduled_job_stage.avg_runtime:
        is_active: true
      scheduled_job.count:
        is_active: true
    series_text_format:
      scheduled_job_stage.started_day_of_week:
        bg_color: "#00ABFA"
      scheduled_job_stage.started_hour_of_day:
        align: right
        bold: true
    conditional_formatting: []
    truncate_column_names: false
    defaults_version: 1
    listen:
      Run Once (Yes / No): scheduled_plan.run_once
    row: 32
    col: 8
    width: 16
    height: 12
  - title: Inactive Users with Schedules
    name: Inactive Users with Schedules
    model: system__activity
    explore: user
    type: looker_grid
    fields: [user.name, user_facts.last_ui_login_credential_type, user_facts.last_ui_login_date,
      history.most_recent_query_date, scheduled_job.count]
    filters:
      scheduled_job.created_date: 7 days
      user_facts.last_ui_login_date: before 90 days ago
      user.is_disabled: 'No'
      scheduled_job.count: ">0"
    sorts: [history.most_recent_query_date desc]
    limit: 5000
    column_limit: 50
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen: {}
    row: 25
    col: 0
    width: 8
    height: 6
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: '[{"type":"p","children":[{"text":""}],"id":1688639280940},{"type":"h1","children":[{"text":"Action"}]},{"type":"p","children":[{"text":"Create
      API to delete schedule based on error execution "}],"id":1688639290338},{"type":"p","id":1688639308641,"children":[{"text":"Group
      by error"}]}]'
    rich_content_json: '{"format":"slate"}'
    row: 31
    col: 0
    width: 5
    height: 4
  - title: Schedules to Delete
    name: Schedules to Delete
    model: system__activity
    explore: scheduled_plan
    type: looker_grid
    fields: [scheduled_plan.id, scheduled_job.status, user.name, scheduled_job.status_detail,
      scheduled_plan_destination.type, scheduled_plan_destination.format]
    filters:
      scheduled_job.status: failure
      scheduled_job.status_detail: "%An API error occurred%,%User missing permission\
        \ to send to specified destination%,%Not authorized to run scheduled plan%,%The\
        \ view for this Look cannot be found%,%User cannot run Look%,%User cannot\
        \ run Dashboard%"
      scheduled_job.created_date: 7 days
    sorts: [scheduled_job.status_detail desc]
    limit: 1000
    column_limit: 50
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen:
      Run Once (Yes / No): scheduled_plan.run_once
    row: 35
    col: 0
    width: 8
    height: 6
  - title: Schedules with Connection Timeout
    name: Schedules with Connection Timeout
    model: system__activity
    explore: scheduled_plan
    type: looker_grid
    fields: [scheduled_job.created_time, scheduled_job.finalized_time, scheduled_job.id,
      scheduled_job.status, user.name, scheduled_job.status_detail, scheduled_job_stage.stage,
      scheduled_plan_destination.type, scheduled_plan_destination.format]
    filters:
      scheduled_job.status: failure
      scheduled_job.status_detail: "%timeout%"
    sorts: [scheduled_job.created_time desc]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen:
      Run Once (Yes / No): scheduled_plan.run_once
    row: 41
    col: 0
    width: 8
    height: 6
  - title: Mean Rate of Success and Failure
    name: Mean Rate of Success and Failure
    model: system__activity
    explore: scheduled_plan
    type: looker_pie
    fields: [scheduled_job.status, scheduled_job.count]
    filters:
      scheduled_job.finalized_date: 7 days
    sorts: [scheduled_job.status, scheduled_job.count desc]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: measure
      expression: ''
      label: Count of Failure
      based_on: scheduled_job.status
      _kind_hint: measure
      measure: count_of_failure
      type: count_distinct
      _type_hint: number
      filters:
        scheduled_job.status: failure
    - category: measure
      expression: ''
      label: 'Count of Successful '
      based_on: scheduled_job.status
      _kind_hint: measure
      measure: count_of_successful
      type: count_distinct
      _type_hint: number
      filters:
        scheduled_job.status: success
    - category: measure
      expression: ''
      label: Count of in_progress
      based_on: scheduled_job.status
      _kind_hint: measure
      measure: count_of_in_progress
      type: count_distinct
      _type_hint: number
      filters:
        scheduled_job.status: '"in_progress"'
    - category: table_calculation
      expression: sum(${scheduled_job.count})
      label: Sum
      value_format:
      value_format_name:
      _kind_hint: measure
      table_calculation: sum
      _type_hint: number
    - category: table_calculation
      expression: "${scheduled_job.count}/${sum}"
      label: Percent of Total
      value_format:
      value_format_name: percent_0
      _kind_hint: measure
      table_calculation: percent_of_total
      _type_hint: number
    - category: table_calculation
      expression: mean(${percent_of_total})
      label: mean
      value_format:
      value_format_name: percent_0
      _kind_hint: measure
      table_calculation: mean
      _type_hint: number
      is_disabled: true
    value_labels: legend
    label_type: labPer
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    x_axis_zoom: true
    y_axis_zoom: true
    hidden_series: [success - scheduled_job.count, failure - scheduled_job.count]
    defaults_version: 1
    hidden_pivots: {}
    hidden_fields: [sum, scheduled_job.count]
    hidden_points_if_no: []
    font_size: 12
    listen:
      Run Once (Yes / No): scheduled_plan.run_once
    row: 13
    col: 16
    width: 8
    height: 6
  filters:
  - name: Created Date
    title: Created Date
    type: field_filter
    default_value: 7 days ago for 7 days
    allow_multiple_values: true
    required: false
    ui_config:
      type: relative_timeframes
      display: inline
    model: system__activity
    explore: scheduled_plan
    listens_to_filters: []
    field: scheduled_job.created_date
  - name: Run Once (Yes / No)
    title: Run Once (Yes / No)
    type: field_filter
    default_value: 'No'
    allow_multiple_values: true
    required: false
    ui_config:
      type: button_toggles
      display: inline
    model: system__activity
    explore: scheduled_plan
    listens_to_filters: []
    field: scheduled_plan.run_once
