json.extract! volunteer_profile, :id, :intrests, :skills, :img, :address, :phone, :specialty, :age, :created_at, :updated_at
json.url volunteer_profile_url(volunteer_profile, format: :json)
