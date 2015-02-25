class Transaction < ActiveRecord::Base
  belongs_to :product
  belongs_to :customer
  validates :customer_id, presence: true
  validates :product_id, presence: true
end
