class Comedian < ApplicationRecord

    has_many :events
    has_many :histories
    has_many :contracts, through: :histories
    belongs_to :manager

    validates :first_name, presence: true, length: { maximum: 10 }
    validates :last_name, presence: true, length: { maximum: 15 }
    validates :id_number, presence: true, uniqueness: true, length: { minimum: 8, maximum: 10 }
    validates :level, presence: true

    enum level: {'high': 0, 'medium': 1, 'low': 2}
end
