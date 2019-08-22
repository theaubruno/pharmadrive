class RemoveDeliveredAtList < ActiveRecord::Migration[5.2]
  def change
    remove_column :lists, :delivered
    add_column :lists, :delivered_at, :datetime
  end
end
