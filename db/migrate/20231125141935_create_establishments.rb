class CreateEstablishments < ActiveRecord::Migration[7.0]
  def change
    create_table :establishments do |t|
      t.string :name
      t.string :address
      t.string :type
      t.integer :capacity

      t.timestamps
    end
  end
end
