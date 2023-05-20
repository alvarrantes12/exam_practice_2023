class Contract < ApplicationRecord
    has_many :history

    validates :location, presence: true
end
