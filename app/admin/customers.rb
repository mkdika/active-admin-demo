ActiveAdmin.register Customer do
  extend AuditTrail
  permit_params :name,
                :membership,
                :email,
                :start_join,
                :balance,
                {fav_genres: []},
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

  show do
    attributes_table do
      row :membership
      row :name
      row :email
      row :start_join
      row :balance
      row :point
      row 'Fav Genres', &:show_fav_genres
      row :active
      row :story
    end
  end

  form do |f|
    f.inputs do
      f.input :membership, as: :select, collection: Customer.memberships
      f.input :name
      f.input :email
      f.input :start_join, as: :date_picker
      f.input :balance
      f.input :point
      f.input :fav_genres,
              label: 'Favorite Genres',
              as: :select,
              collection: Genre.all ,
              include_hidden: false,
              input_html: { class: 'chosen-input', multiple: true }
      f.input :active, as: :boolean, label: 'Activation'
      f.input :story, input_html: { :class => 'autogrow', :rows => 5 }
      f.actions
    end
  end
end
