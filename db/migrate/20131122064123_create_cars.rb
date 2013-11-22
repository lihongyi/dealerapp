class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.string :make
      t.string :model
      t.integer :year
      t.string :body
      t.integer :price
      t.string :color
      t.integer :mileage

      t.timestamps
    end
  end
end
