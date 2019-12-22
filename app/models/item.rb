class Item < ApplicationRecord
  validates_presence_of :name,
                        :description,
                        :price,
                        :image,
                        :active,
                        :inventory

  has_many :reviews
  has_many :item_orders
  has_many :orders, through: :item_orders
end