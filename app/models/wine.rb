class Wine < ActiveRecord::Base

  #varietals = ["Chardonnay","Sauvignon Blanc","Cabernet Sauvignon","Merlot","Syrah/Shiraz"]
  #the above array does not work and I"m not sure why

  validates :name, :year, :country, presence: true

  validates :year,
    numericality: { only_integer: true,
    greater_than_or_equal_to: 0 }

  validates :varietal, 
    inclusion: { in: %w(Chardonnay Merlot Sauvignon Blanc), message: "%{value} is not a valid varietal" }

end