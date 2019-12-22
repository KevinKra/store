class Merchant < ApplicationRecord
  validates_presence_of :name,
                        :address,
                        :city,
                        :state,
                        :zip

  has_many :items
  has_many :merchant_users
  has_many :users, through: :merchant_users
end