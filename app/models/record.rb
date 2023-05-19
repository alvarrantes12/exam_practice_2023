class Record < ApplicationRecord
    belongs_to :comedian
    belongs_to :contract
    validates :version, presence: true, length: {minimum: 3, maximum: 10}
end
