class AddRoleToProfiles < ActiveRecord::Migration[5.0]
  def change
    add_column :profiles, :role, :string, null: false, default: 'user'
  end
end
