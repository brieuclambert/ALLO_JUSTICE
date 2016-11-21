class Contribution < ApplicationRecord
  belongs_to :users
  belongs_to :projects
  validates :amount, presence: true
end
