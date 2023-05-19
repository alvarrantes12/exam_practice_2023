class Contract < ApplicationRecord
    #Falta conexiones con otras tablas 
    validates :location, presence: true
end
