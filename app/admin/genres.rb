ActiveAdmin.register Genre do
  permit_params :name

  index do
    selectable_column
    column :name
    actions
  end
end
