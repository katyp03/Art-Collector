class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.integer :artist_id
      t.string :title
      t.string :medium
      t.string :style
      t.integer :size
      t.integer :yoc
      t.string :origin_country
      t.integer :status
      t.belongs_to :artist, foreign_key: true
      t.attachment :picture

      t.timestamps
    end
  end
end
