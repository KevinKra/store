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

  has_secure_password
end