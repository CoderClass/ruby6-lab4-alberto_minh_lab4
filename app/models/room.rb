class Room < ApplicationRecord
validates :name, uniqueness: true, presence: true 

end
