class Owner < ActiveRecord::Base
  has_many :custodies
  has_many :dogs, :through => :custodies

#called name so simple form gem can use it
  def name
    "#{last_name}, #{first_name}"
  end

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :phone, presence: true

end
