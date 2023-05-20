class Comedian < ApplicationRecord
    belongs_to :manager
    has_many :event
    has_many :history

    validates :first_name, presence: true, length: { maximum: 10 }
    validates :last_name, presence: true, length: { maximum: 15 }
    validates :id_number, presence: true, uniqueness: true, numericality: { greater_than: 9999999, less_than: 10000000000}
    validates :level, presence: true

    enum level: {'low': 0, 'half': 1, 'high': 2}
end
