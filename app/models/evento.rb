class Evento < ApplicationRecord
    belongs_to :comedian
    validates :name, presence: true, length: {minimum: 3, maximum: 10}
    validates :start_date, presence: true
    validates :end_date, presence: true
    
end
