class Event < ApplicationRecord
    belongs_to :comedian
    
    validates :name,presence: true
end
