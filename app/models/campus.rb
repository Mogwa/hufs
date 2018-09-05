class Campus < ApplicationRecord
  has_many :majors
  has_many :minors
end
