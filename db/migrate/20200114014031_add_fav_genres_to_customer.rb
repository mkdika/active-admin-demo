class AddFavGenresToCustomer < ActiveRecord::Migration[5.2]
  def change
    add_column :customers, :fav_genres, :integer, array: true, default: []
    add_index :customers, :fav_genres, using: :gin # with special index
  end
end
