class User < ApplicationRecord
  validates_presence_of :username,
                        :email,
                        :password,
                        :first_name,
                        :last_name,
                        :street_address,
                        :city,
                        :state,
                        :zip,
                        :role

  validates :username, :email, uniqueness: true

  has_many :reviews
  has_many :orders

  has_many :merchant_users
  has_many :merchants, through: :merchant_users

  has_secure_password
end