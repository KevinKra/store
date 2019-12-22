class CreateMerchantUser < ActiveRecord::Migration[6.0]
  def change
    create_table :merchant_users do |t|
      t.references :user, null: false, foreign_key: true
      t.references :merchant, null: false, foreign_key: true
    end
  end
end
