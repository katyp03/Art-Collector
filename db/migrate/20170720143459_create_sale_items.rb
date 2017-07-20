class CreateSaleItems < ActiveRecord::Migration[5.1]
  def change
    create_table :sale_items, id: false do |t|
    	t.belongs_to :sale
    	t.belongs_to :item
      t.timestamps
    end
  end
end
