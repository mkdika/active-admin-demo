class CreateCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :customers do |t|
      t.string :name, limit: 100
      t.string :membership, limit: 20
      t.string :email, limit: 100
      t.date :start_join
      t.decimal :balance
      t.integer :point
      t.text :story
      t.boolean :active

      t.timestamps
    end
  end
end
