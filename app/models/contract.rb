class Contract < ApplicationRecord
    has_many :historical
    has_many :comedian, through: :historical
    
    validates :location, presence: true
end
