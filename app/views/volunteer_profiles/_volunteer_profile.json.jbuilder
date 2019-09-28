json.extract! volunteer_profile, :id, :interests, :skills, :img, :address, :phone, :speciality, :age, :created_at, :updated_at
json.url volunteer_profile_url(volunteer_profile, format: :json)
