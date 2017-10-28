class Keylog < ActiveRecord::Base
def self.search(search)
  where("room_number LIKE ? OR description LIKE ? OR key_number LIKE ?", "%#{search}%", "%#{search}%", "%#{search}%") 
end
end
