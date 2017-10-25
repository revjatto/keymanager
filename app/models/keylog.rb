class Keylog < ActiveRecord::Base
def self.search(search)
  where("room_number LIKE ? OR description LIKE ?", "%#{search}%", "%#{search}%") 
end
end
