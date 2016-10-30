class CreateMigrations < ActiveRecord::Migration[5.0]
  def change
    create_table :migrations do |t|
      t.string :add_user_to_spots
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
