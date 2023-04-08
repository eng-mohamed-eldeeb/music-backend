class Reservation < ApplicationRecord
    belongs_to :user
    # later
    # belongs_to :concert
  end