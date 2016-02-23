class Vet < ActiveRecord::Base
  belongs_to :clinic
  has_many :dogs
end
