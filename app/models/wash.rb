class Wash < ApplicationRecord
  belongs_to :vehicle
  belongs_to :washer
  belongs_to :payment
end
