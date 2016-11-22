class Booking < ApplicationRecord
  belongs_to :project
  belongs_to :user
  validates :user, presence: true
  validates :project, presence: true
  validates :date, presence: true
  validates_uniqueness_of :date, :scope => [:project]
end


####coppy
