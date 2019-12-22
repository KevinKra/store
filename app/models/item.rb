class Item < ApplicationRecord
  validates_presence_of :name,
                        :description,
                        :price,
                        :image,
                        :active,
                        :inventory

  has_many :reviews
end