class AddColumnsToProjects < ActiveRecord::Migration[5.0]
  def change
    add_column :projects, :city, :string
    add_column :projects, :category, :string
    add_column :projects, :echeance, :date
  end
end
