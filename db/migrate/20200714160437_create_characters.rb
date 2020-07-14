class CreateCharacters < ActiveRecord::Migration[5.1]
  def change
    create_table :characters do |t|
      t.string :allies
      t.string :enemies
      t.string :photoUrl
      t.string :name
      t.string :affiliation

      t.timestamps
    end
  end
end
