ActiveAdmin.register User do
  permit_params :role,
                :email,
                :display_name,
                :password,
                :password_confirmation,
                :locked_at

  index do
    selectable_column
    column :role
    column :email
    column :display_name
    column :locked?
    column :created_at
    actions
  end

  filter :role, as: :select, collection: User.roles
  filter :email
  filter :display_name
  filter :locked?

  form do |f|
    f.inputs do
      f.input :role, as: :select, collection: User.roles
      f.input :email
      f.input :display_name
      f.input :password
      f.input :password_confirmation
      f.input :locked_at,
          input_html: { readonly: true },
          as: :datepicker,
          datepicker_options: {
            min_date: Date.today
          }
    end
    f.actions
  end
end
