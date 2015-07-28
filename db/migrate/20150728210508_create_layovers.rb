class CreateLayovers < ActiveRecord::Migration
  def change
    create_table :layovers do |t|
      t.string :a_date
      t.string :a_time
      t.string :customs
      t.integer :luggage
      t.string :a_airport
      t.string :a_terminal
      t.string :flight
      t.string :airline
      t.string :d_airport
      t.string :d_time
      t.string :d_terminal
      t.integer :max_time
      t.string :goal
      t.text :message

      t.timestamps null: false
    end
  end
end
