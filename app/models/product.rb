class Product < ActiveRecord::Base
  has_and_belongs_to_many :activities
  has_many :transactions
  has_many :users, through: :transactions

end
