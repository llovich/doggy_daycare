class Custody < ActiveRecord::Base
  belongs_to :owner
  belongs_to :dog

  #validates :dog_id, :owner_id
end
