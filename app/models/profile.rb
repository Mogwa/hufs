class Profile < ApplicationRecord
    belongs_to :user, required: false
    belongs_to :major, required: false
    belongs_to :minor, required: false
    
    validates :name, presence: true
    validates :year, presence: true
    validates :semester, presence: true
    validates :major, presence: true
    validates :major_campus, presence: true
    validates :study_type, presence: true
end
