class Comedian < ApplicationRecord

  validates :first_name, presence: true, length: { minimum: 4, maximum: 10 }
  validates :last_name, presence: true, length: { minimum: 4, maximum: 15 }
  validates :id_number, presence: true, uniqueness: true, length: {minimum:5, maximum:8}
  validates :level, presence: true

  enum level: {'low': 0, 'medium': 1, 'high': 2}

end
