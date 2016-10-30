class CreateReservations < ActiveRecord::Migration[5.0]
  def change
    create_table :reservations do |t|
      t.references :user, foreign_key: true
      t.datetime :start
      t.datetime :end
      t.references :spot, foreign_key: true
      t.integer :price

      t.timestamps
    end
  end
end
