class Clinic < ActiveRecord::Base
  has_many :vets

  validates :name, presence: true
  validates :phone, presence: true
end
