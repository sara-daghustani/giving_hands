class CreateOrganizationProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :organization_profiles do |t|
      t.string :type
      t.string :img
      t.string :address
      t.string :city
      t.string :website_link
      t.string :twitter_link
      t.string :instagram_link
      t.string :facebook_link
      t.string :snapchat_link
      t.string :whatsup_link
      t.string :linkedin_link
      t.string :phone

      t.timestamps
    end
  end
end
