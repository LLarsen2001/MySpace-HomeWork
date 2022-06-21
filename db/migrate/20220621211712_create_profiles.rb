class CreateProfiles < ActiveRecord::Migration[7.0]
  def change
    create_table :profiles do |t|
      t.string :name
      t.string :gender
      t.string :dob
      t.string :bio
      t.string :avatar

      t.timestamps
    end
  end
end
