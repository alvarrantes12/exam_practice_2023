class Comedian < ApplicationRecord
    validates :first_name, presence: true, length: {minimum: 3, maximum: 10}
    validates :last_name, presence: true, length: {minimum: 3, maximum: 10}
    validates :id_number, presence: true, uniqueness: true
    validates :level, presence: true

    enum level: {'low': 0, 'medium':1, 'high': 3}
end
