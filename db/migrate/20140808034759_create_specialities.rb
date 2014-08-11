class CreateSpecialities < ActiveRecord::Migration
  def change
    create_table :specialities do |t|
      t.string :speciality
      t.string :speciality_japanese
      t.integer :speciality_id

      t.timestamps
    end
  end
end
