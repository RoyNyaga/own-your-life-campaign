ActiveAdmin.register Questionaire do


  permit_params :question_one, :question_two, :question_three, 
  :question_four, :question_seven, :question_eight, :question_nine, :question_ten, :country_select, 
  :name, :phone, :whats_app, :referral_code, :facebook, :question_five, :question_six

  
end
