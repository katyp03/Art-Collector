class CreateArtists < ActiveRecord::Migration[5.1]
  def change
    create_table :artists do |t|
      t.string :fname
      t.string :lname

      t.timestamps
    end
  end
end
