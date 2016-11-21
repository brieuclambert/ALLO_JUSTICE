class Project < ApplicationRecord
  belongs_to :user
  validates :name, presence: true, uniqueness: true
  validates :description, presence: true, uniqueness: true
  validates :goal, presence: true
end
