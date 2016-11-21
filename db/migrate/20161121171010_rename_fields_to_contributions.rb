class RenameFieldsToContributions < ActiveRecord::Migration[5.0]
  def change
    rename_column(:contributions, :users_id, :user_id)
    rename_column(:contributions, :projects_id, :project_id)
  end
end
