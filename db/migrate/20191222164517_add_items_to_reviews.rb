class AddItemsToReviews < ActiveRecord::Migration[6.0]
  def change
    add_reference :reviews, :item, null: false, foreign_key: true
  end
end
