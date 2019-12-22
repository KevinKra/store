class CreateUser < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :username, :limit => 16
      t.string :first_name, :limit => 32
      t.string :last_name, :limit => 32
      t.string :street_address, :limit => 50
      t.string :city, :limit => 50
      t.string :state, :limit => 50
      t.integer :zip
      t.string :email, :limit => 50
      t.string :password_digest
      t.string :role, :default => 0

      t.timestamps
    end
  end
end
