class Comedian < ApplicationRecord
    has_many :events
    has_many :records
    has_many :contracts, through :records
    
    validates :first_name, presence: true, length: {maximum: 10} 
    validates :last_name, presence: true, length: {maximum: 15}
    validates :id_number, presence: true, length: {minimum: 8, maximum: 10}, uniqueness: true
    validates :level, presence: true

    enum level: {'low': 0, 'medium': 1, 'high': 2}
end
