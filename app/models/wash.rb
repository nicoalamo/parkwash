class Wash < ApplicationRecord
  belongs_to :vehicle
  belongs_to :washer
end
