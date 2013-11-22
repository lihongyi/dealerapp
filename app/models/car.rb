class Car < ActiveRecord::Base
  attr_accessible :make, :model, :year, :body, :price, :color, :mileage

  validates :make, presence: true, length: { maximum: 50 }
  validates :model, presence: true, length: { maximum: 50 }
end
