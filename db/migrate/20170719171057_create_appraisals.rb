class CreateAppraisals < ActiveRecord::Migration[5.1]
  def change
    create_table :appraisals do |t|
      t.integer :item_id
      t.string :previous_owner
      t.integer :value
      t.integer :condition
      t.belongs_to :item, foreign_key: true

      t.timestamps
    end
  end
end
