class Wine < ActiveRecord::Base

  has_many :log_entries, dependent: :destroy
  VARIETALS = ['Chardonnay','Sauvignon Blanc','Cabernet Sauvignon','Merlot','Syrah/Shiraz']
  #the above array does not work and I"m not sure why

  validates :name, :year, :country, presence: true

  validates :year,
    numericality: { only_integer: true,
    greater_than_or_equal_to: 0 }

  validates :varietal, 
  		inclusion: { in: VARIETALS, message: "%{value} is not a valid varietal" }

  def average_rating
    if log_entries.loaded?
      log_entries.map(&:rating).compact.average
    else
      log_entries.average(:rating)
    end
  end
end