ActiveAdmin.register Presentation do

  permit_params :first_name, :last_name, :phone, :email, :facebook_username, :address, :expectations

end
