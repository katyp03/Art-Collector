class CreateTransactionItems < ActiveRecord::Migration[5.1]
  def change
    create_table :transaction_items, id: false do |t|
      t.belongs_to :transaction
      t.belongs_to :item
      t.timestamps
    end
  end
end
