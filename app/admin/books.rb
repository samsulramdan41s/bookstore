ActiveAdmin.register Book do
permit_params :title, :description, :image_url, :price

  controller do
    skip_before_action :authorize
  end
end
