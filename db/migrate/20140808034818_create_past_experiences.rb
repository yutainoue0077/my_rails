class CreatePastExperiences < ActiveRecord::Migration
  def change
    create_table :past_experiences do |t|
      t.string :past_experience
      t.string :pastExperience_japanese
      t.integer :pastExperience_id

      t.timestamps
    end
  end
end
