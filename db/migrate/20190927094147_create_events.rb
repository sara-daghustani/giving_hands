class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :title
      t.string :img
      t.string :event_type
      t.string :city
      t.string :address
      t.text :description
      t.date :start_date
      t.date :end_date
      t.time :start_time
      t.time :end_time
      t.text :requirements
      t.string :volunteer_type
      t.string :volunteer_gender
      t.string :volunteer_skills
      t.integer :number_needed
      

      t.timestamps
    end
  end
end
