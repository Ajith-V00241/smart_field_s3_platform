class CreateCars < ActiveRecord::Migration[6.0]
  def change
    create_table :cars do |t|
      t.string :model
      t.string :make
      t.string :reg_no
      t.timestamps
    end
  end
end
