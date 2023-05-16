class Comedian < ApplicationRecord

    validates :first_name, presence: true, length: { maximum: 10 }
    validates :last_name, presence: true, length: { maximum: 15 }
    validates :id_number, presence: true, length: { in: 5..8 }, uniqueness: true

    enum level: {'low': 0, 'medium': 1, 'high': 2}
end
