ActiveAdmin.register User do
  permit_params :name, :email, :user_country, :phone, :payment_status
end
