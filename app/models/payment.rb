class Payment < ApplicationRecord
  belongs_to :user
  has_many :washes
end
