ActiveAdmin.register Book do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :author_id, :title, :published_date

  form do |f|
    f.inputs do
      f.input :author
      f.input :title
      f.input :published_date, as: :datepicker
    end
    f.actions
  end

  #
  # or
  #
  # permit_params do
  #   permitted = [:author_id, :title, :published_date]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
