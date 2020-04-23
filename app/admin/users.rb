ActiveAdmin.register User do
  permit_params :name, :email, :country_select, :phone, :payment_status
end
