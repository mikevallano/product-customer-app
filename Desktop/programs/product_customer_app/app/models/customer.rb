class Customer < ActiveRecord::Base
  has_many :transactions
  has_many :products, :through => :transactions
  validates :name, presence: true
  validates :email, presence: true
end
