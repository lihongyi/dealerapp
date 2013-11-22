class ChangeCarYearToString < ActiveRecord::Migration
  def change
  	change_column :cars, :year, :string
  	change_column :cars, :mileage, :string
  	change_column :cars, :price, :string
  end
end
