class CreateReservations < ActiveRecord::Migration[7.0]
  def change
    create_table :reservations do |t|
      t.integer :number_of_persons
      t.date :date
      t.boolean :confirmed

      t.timestamps
    end
  end
end
