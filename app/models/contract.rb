class Contract < ApplicationRecord
    has_many :records
    has_many :comedians, through: :records
    validates :location, presence: true, length: {minimum: 3, maximum: 40}
end
