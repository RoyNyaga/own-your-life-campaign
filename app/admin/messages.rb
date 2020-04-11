ActiveAdmin.register Message do

  permit_params :name, :email, :whatsapp_number, :message
  
end
