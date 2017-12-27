class AddRolesToAdminUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :admin_users, :superadmin_role, :boolean, default: false
    add_column :admin_users, :staff_role, :boolean, default: false
    add_column :admin_users, :support_role, :boolean, default: false
    add_column :admin_users, :user_role, :boolean, default: false
  end
end
