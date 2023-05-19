class Record < ApplicationRecord
    belongs_to :comedian
    belongs_to :contract

    validates :version, presence: true
    validates :comedian_id, presence: true
    validates :contract_id, presence: true
end
