class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.string :family_name
      t.string :given_name
      t.integer :join_nexway
      t.string :speciality
      t.string :past_experience
      t.string :hobby
      t.string :favorite_food
      t.integer :join_recruit
      t.string :email_address
      t.integer :phone_number
      t.timestamp :modified_at
      t.datetime :created_at
      t.string :image
      t.string :nickname

      t.timestamps
    end
  end
end
