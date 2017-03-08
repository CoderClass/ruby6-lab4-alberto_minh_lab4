class Room < ApplicationRecord
  validates :name, uniqueness: true, presence: true 
  has_many :messages, :dependent => :destroy
end
