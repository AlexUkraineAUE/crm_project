ActiveAdmin.register Customer do

  permit_params :full_name, :phone_number, :email_address, :notes, :avatar
  filter :name
  filter :email
  filter :created_at

  form do |f|
    f.inputs do
      f.input :full_name
      f.input :phone_number
      f.input :email_address
      f.input :notes, as: :text
      f.input :avatar, as: :file
    end
    f.actions
  end
end
