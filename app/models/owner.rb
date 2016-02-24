class Owner < ActiveRecord::Base
  has_many :custodies
  has_many :dogs, :through => :custodies

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :phone, presence: true

end
