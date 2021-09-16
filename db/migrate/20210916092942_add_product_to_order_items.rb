class AddProductToOrderItems < ActiveRecord::Migration[6.1]
  def change
    add_reference :order_items, :product
    add_reference :order_items, :order
    add_column :order_items, :price, :float
    add_column :order_items, :discount, :float
    add_column :order_items, :total, :float
  end
end
