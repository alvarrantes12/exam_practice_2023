class History < ApplicationRecord

    belongs_to :comedian
    belongs_to :contract

    validates :version, presence: true
end
