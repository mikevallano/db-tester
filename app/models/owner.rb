class Owner < ActiveRecord::Base
  has_many :critters

  scope :managers, ->  { where('description ILIKE ?', '%manager%') }
end
