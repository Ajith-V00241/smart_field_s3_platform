class AddStatusColumnsToCar < ActiveRecord::Migration[6.0]
  def up
    add_column :cars, :pan_status, :integer
    add_column :cars, :gst_status, :integer
    add_column :cars, :arn_status, :integer
  end
  def down
    remove_column :cars, :pan_status, :integer
    remove_column :cars, :gst_status, :integer
    remove_column :cars, :arn_status, :integer
  end
end
