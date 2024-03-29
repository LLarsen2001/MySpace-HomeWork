class CreateUserjobs < ActiveRecord::Migration[7.0]
  def change
    create_table :userjobs do |t|
      t.string :status
      t.integer :index
      t.integer :job
      t.belongs_to :job, null: false, foreign_key: true
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
