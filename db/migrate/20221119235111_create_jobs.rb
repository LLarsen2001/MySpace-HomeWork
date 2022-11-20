class CreateJobs < ActiveRecord::Migration[7.0]
  def change
    create_table :jobs do |t|
      t.string :job_name
      t.integer :company_id
      t.integer :salary
      t.text :description
      t.boolean :remote
      t.text :location
      t.string :company
      t.integer :created_by
      t.boolean :isfilled
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
