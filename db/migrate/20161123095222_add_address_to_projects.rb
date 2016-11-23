class AddAddressToProjects < ActiveRecord::Migration[5.0]
  def change
    add_column :projects, :address, :string
  end
end
