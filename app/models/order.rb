class Order < ApplicationRecord
  validates_presence_of :name,
                        :address,
                        :city,
                        :state,
                        :zip

  belongs_to :user
  has_many :items, through: :item_orders
  has_many :item_orders
end