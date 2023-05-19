class Manager < ApplicationRecord
    has_many :comedians
    validates :first_name, presence: true, length: {minimum: 3, maximum: 10}
    validates :last_name, presence: true, length: {minimum: 3, maximum: 10}
end
