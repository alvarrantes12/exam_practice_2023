class Contract < ApplicationRecord
    has_many :records
    has_many :comedians, through: :records
     
    validates :location, presence: true
end
