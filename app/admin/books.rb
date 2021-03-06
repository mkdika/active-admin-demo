ActiveAdmin.register Book do
  menu parent: 'Master'
  extend AuditTrail
  permit_params :author_id,
                :publisher_id,
                :genre_id,
                :code,
                :isbn,
                :title,
                :year

  index do
    selectable_column
    column :author
    column :publisher
    column :code
    column :isbn
    column :title
    actions
  end

  filter :author_id, as: :select, collection: proc { Author.order(:name).all }
  filter :publisher_id, as: :select, collection: proc { Publisher.order(:name).all }
  filter :code
  filter :isbn
  filter :title
end
