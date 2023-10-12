class ChangeRoleToUsersNotNullAndDefault < ActiveRecord::Migration[7.0]
  def change
    User.update_all role: 'user'
    change_column :users, :role, :string, null: false, default: 'user'
  end
end
