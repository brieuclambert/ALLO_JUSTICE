class CreateContributions < ActiveRecord::Migration[5.0]
  def change
    create_table :contributions do |t|
      t.integer :amount
      t.references :users, foreign_key: true
      t.references :projects, foreign_key: true

      t.timestamps
    end
  end
end
