class CreateSales < ActiveRecord::Migration[5.1]
  def change
    create_table :sales do |t|
      t.integer :user_id
      t.string :address
      t.integer :payment_amount
      t.integer :lease_duration
      t.string :phone_number
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
