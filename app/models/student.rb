class Student < ApplicationRecord
    has_many :ducks
    validates :name, presence: true
    validates :mod, numericality: true, inclusion: {in: 1..5 }
end
