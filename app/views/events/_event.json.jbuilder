json.extract! event, :id, :title, :img, :event_type, :start_date, :end_date, :city, :address, :description, :start_time, :end_time, :volunteer_type, :volunteer_gender, :number_needed, :volunteer_skills, :requirements, :created_at, :updated_at
json.url event_url(event, format: :json)
