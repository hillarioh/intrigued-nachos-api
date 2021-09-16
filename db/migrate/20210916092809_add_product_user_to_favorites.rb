class AddProductUserToFavorites < ActiveRecord::Migration[6.1]
  def change
    add_reference :favorites, :user
    add_reference :favorites, :product
  end
end
