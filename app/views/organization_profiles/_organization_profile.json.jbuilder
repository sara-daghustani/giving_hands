json.extract! organization_profile, :id, :type, :img, :address, :city, :website_link, :twitter_link, :instagram_link, :facebook_link, :snapchat_link, :whatsup_link, :linkedin_link, :phone, :created_at, :updated_at
json.url organization_profile_url(organization_profile, format: :json)
