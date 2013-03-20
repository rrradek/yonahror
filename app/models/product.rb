class Product < ActiveRecord::Base
  attr_accessible :description, :image_url, :price, :title
    
  validates :title, :description, :image_url, :price, :presence => true
  validates :price, numericality: {greather_than_or_equal_to: 0.01}
  validates :title, uniqueness: true
  validates :image_url, format: {
  	with: %r{\.(gif|jpg|png)$}i,
  	message: 'must be a URL for GIG, JPG or PNG image'
  }

end
