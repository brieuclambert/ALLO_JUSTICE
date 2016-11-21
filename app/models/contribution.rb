class Contribution < ApplicationRecord
  belongs_to :users
  belongs_to :projects
  validates :amount, presence: true
  validates :amount, numericality: { only_integer: true }
end
