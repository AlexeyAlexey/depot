class AddShipDate < ActiveRecord::Migration
  def up
     add_column :orders, :ship_date, :date
  end

  def down
  end
end
