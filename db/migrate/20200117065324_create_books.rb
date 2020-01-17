class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.references :author, foreign_key: true
      t.references :publisher, foreign_key: true
      t.string :code, limit: 50
      t.string :isbn, limit: 100
      t.string :title, limit: 250
      t.integer :year

      t.timestamps
    end
  end
end
