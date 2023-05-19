class Record < ApplicationRecord
    #Falta hacer la conexion con otras tablas
    validates :version, presence: true
end
