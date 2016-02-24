class Dog < ActiveRecord::Base
  belongs_to :breed
  belongs_to :vet
  has_many :custodies
  has_many :owners, :through => :custodies

  validates :name, presence: true
  validates :vet, presence: true

  #allows access to custodies table/so can use call them in form
  accepts_nested_attributes_for :custodies, :reject_if => :all_blank, :allow_destroy => true

  def last_name
    if custodies.empty?
      "(none)"
    end
    #where statement always gives you an array
    #.first means the first one in array that is true
    #.owner.last_name gets the last name in owner table
    custodies.first.owner.last_name

  end

end
