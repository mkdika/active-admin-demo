ActiveAdmin.register Author do
  menu parent: 'Master'
  extend AuditTrail
  permit_params :name,
                :website

  index do
    selectable_column
    column :name
    actions
  end

  filter :name
end
