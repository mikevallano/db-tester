class Critter < ActiveRecord::Base
  belongs_to :owner

  COMMON_CRIT_NAMES = ['zorro', 'mindy', 'fluffy', 'buttons']

  class << self
    COMMON_CRIT_NAMES.each do |crit_name|
      define_method "#{crit_name}" do
        self.where('name = ?', crit_name)
      end
    end
  end

end
