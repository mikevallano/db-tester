class Owner < ActiveRecord::Base
  has_many :critters

  scope :managers, ->  { where('description ILIKE ?', '%manager%') }

  def sum_crit_weight
    critters.sum(:weight)
  end
end
