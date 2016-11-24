class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :project
  validates :user, presence: true
  validates :project, presence: true
  validates :start_date, presence: true
  # validates_uniqueness_of :start_date, :scope => [:project]
  validates :end_date, presence: true
  # validates_uniqueness_of :end_date, :scope => [:project]
end
