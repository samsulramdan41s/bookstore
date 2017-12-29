ActiveAdmin.register AdminUser do
  permit_params :email, :superadmin_role, :staff_role, :support_role, :user_role, :password, :password_confirmation

  controller do
    skip_before_action :authorize
  end

  index do
    selectable_column
    id_column
    column :email
    column :superadmin_role
    column :staff_role
    column :support_role
    column :user_role
    column :current_sign_in_at
    column :sign_in_count
    column :created_at
    actions
  end

  filter :email
  filter :superadmin_role
  filter :staff_role
  filter :support_role
  filter :user_role
  filter :current_sign_in_at
  filter :sign_in_count
  filter :created_at

  form do |f|
    f.inputs do
      f.input :email
      f.input :superadmin_role
      f.input :staff_role
      f.input :support_role
      f.input :user_role
      f.input :password
      f.input :password_confirmation
    end
    f.actions
  end

end
