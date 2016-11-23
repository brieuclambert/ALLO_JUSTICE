class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :project
  validates :user, presence: true
  validates :project, presence: true
  validates :date, presence: true
  validates_uniqueness_of :date, :scope => [:project]
end
