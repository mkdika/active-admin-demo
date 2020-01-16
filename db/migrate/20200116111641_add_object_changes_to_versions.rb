class AddObjectChangesToVersions < ActiveRecord::Migration[5.2]
  def change
    remove_column :versions, :object
    add_column :versions, :object_changes, :jsonb
    add_column :versions, :object, :jsonb
  end
end
