class User < ActiveRecord::Base
  rolify

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

  has_many :transactions
  has_many :products, through: :transactions


  validates :username, :presence => true, :uniqueness => true
  validates_format_of :username, with: /\A[a-zA-Z0-9_\.]*\z/


  extend FriendlyId
  friendly_id :username, :use => :history

  def should_generate_new_friendly_id?
    username_changed?
  end

end
