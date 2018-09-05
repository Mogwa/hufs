class Minor < ApplicationRecord
  has_many :profiles
  belongs_to :campus, required: false
end
