ActiveAdmin.register User do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
permit_params :email, :password
index do
  column :id
  column :email
  column :created_at
  actions
end

form do |f|
  inputs 'Create new user' do
   input :email
   input :password
  end
  actions
  end

  controller do
def update
 if (params[:user][:password].blank? && params[:user][:password_confirmation].blank?)
   params[:user].delete("password")
   params[:user].delete("password_confirmation")
 end
 super
 end
end

filter :email, as: :select
filter :created_at
end
