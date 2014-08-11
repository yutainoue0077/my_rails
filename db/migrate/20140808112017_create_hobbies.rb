class CreateHobbies < ActiveRecord::Migration
  def change
    create_table :hobbies do |t|
      t.string :hobby
      t.string :hobby_japanese
      t.integer :hobby_id
      t.references :project, index: true

      t.timestamps
    end
  end
end
