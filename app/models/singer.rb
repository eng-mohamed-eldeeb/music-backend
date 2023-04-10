class Singer < ApplicationRecord
    has_many :reservations
    has_many :concerts
end
