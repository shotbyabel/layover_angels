class CreateAngels < ActiveRecord::Migration
  def change
    create_table :angels do |t|
      t.string :name
      t.integer :age
      t.string :gender
      t.string :airport
      t.string :zodiac
      t.string :languages
      t.string :years
      t.string :bio
      t.string :top3_localspots
      t.string :top3_travels
      t.string :top3_historicalfigs
      t.string :photo

      t.timestamps null: false
    end
  end
end
