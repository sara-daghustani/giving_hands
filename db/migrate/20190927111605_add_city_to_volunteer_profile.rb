class AddCityToVolunteerProfile < ActiveRecord::Migration[5.2]
  def change
    add_column :volunteer_profiles, :city, :string
  end
end
