class Project < ApplicationRecord
  belongs_to :user
  has_attachment :photo
  validates :name, presence: true, uniqueness: true
  validates :description, presence: true, uniqueness: true
  validates :goal, presence: true
end
