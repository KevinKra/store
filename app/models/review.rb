class Review < ApplicationRecord
  validates_presence_of :title,
                        :content,
                        :rating

  belongs_to :user
  belongs_to :item
end