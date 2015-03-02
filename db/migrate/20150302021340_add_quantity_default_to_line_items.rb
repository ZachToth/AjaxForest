class AddQuantityDefaultToLineItems < ActiveRecord::Migration
  def change
    change_column :line_items, :quantity, :integer, default: 1
  end

  def down
    change_column_default :line_items, :quantity, :integer, default: nil
  end
end
