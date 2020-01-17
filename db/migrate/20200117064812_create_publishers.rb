class CreatePublishers < ActiveRecord::Migration[5.2]
  def change
    create_table :publishers do |t|
      t.string :name, limit: 100
      t.string :website, limit: 250

      t.timestamps
    end
  end
end
