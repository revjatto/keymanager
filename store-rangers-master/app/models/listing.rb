class Listing < ActiveRecord::Base
    
    validates :name, :description, :price, :image, presence: true
    validates :price, numericality: { greater_than: 0 }
    
    belongs_to :user
end
