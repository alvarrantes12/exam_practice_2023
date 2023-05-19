class Historical < ApplicationRecord
    belongs_to :contract
    belongs_to :comedian
    
    validates :version, presence: true
end
