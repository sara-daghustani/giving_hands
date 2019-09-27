class CreateVolunteerProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :volunteer_profiles do |t|
      t.string :interests
      t.string :skills
      t.string :img
      t.string :address
      t.string :phone
      t.string :speciality
      t.date :age

      t.timestamps
    end
  end
end
