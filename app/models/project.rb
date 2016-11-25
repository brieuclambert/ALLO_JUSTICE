class Project < ApplicationRecord
  CATEGORIES = ["Droit bancaire", "Droit du travail", "Droit fiscal", "Droit de la santé", "Droit de succession"]
  belongs_to :user
  has_many :bookings
  has_many :contributions
  has_attachment :photo
  validates :name, presence: true, uniqueness: true
  validates :description, presence: true, uniqueness: true
  validates :goal, presence: true
  validates :city, presence: true
  validates :category, presence: true
  validates :category, inclusion: {in: CATEGORIES,
    message: "%{value} is not a valid category"}
  validates :echeance, presence: true
  validates :address, presence: true
  geocoded_by :address
  after_validation :geocode, if: :address_changed?
end
