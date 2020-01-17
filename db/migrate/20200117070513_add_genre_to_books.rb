class AddGenreToBooks < ActiveRecord::Migration[5.2]
  def change
    add_reference :books, :genre, index: true
  end
end
