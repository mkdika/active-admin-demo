ActiveAdmin.register Customer do
  permit_params :name,
                :membership,
                :email,
                :start_join,
                :balance,
                :point,
                :story,
                :active

  index do
    selectable_column
    column :membership
    column :name
    column :balance
    column :point
    column :active
    actions
  end

  form do |f|
    f.inputs do
      f.input :membership, as: :select, collection: Customer.memberships
      f.input :name
      f.input :email
      f.input :start_join, as: :date_picker
      f.input :balance
      f.input :point
      f.input :active, as: :boolean, label: 'Activation'
      f.input :story, input_html: { :class => 'autogrow', :rows => 5 }
      f.actions
    end
  end
end
