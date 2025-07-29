json.extract! crowd_report, :id, :level, :comment, :location_id, :created_at, :updated_at
json.url crowd_report_url(crowd_report, format: :json)
