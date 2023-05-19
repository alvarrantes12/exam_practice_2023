class Manager < ApplicationRecord
    has_many :comedian

    validates :first_name, presence: true, length: { minimum: 5 }
    validates :last_name, presence: true, length: { minimum: 5 }
end