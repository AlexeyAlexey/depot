class AddOrderIdLineItem < ActiveRecord::Migration
  def up
     add_column :line_items, :order_id, :integer
  end

  def down
  end
end
