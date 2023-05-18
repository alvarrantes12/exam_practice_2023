class Contract < ApplicationRecord

    has_many :histories
    has_many :comedians, through: :histories
    
    validates :location, presence: true
end
