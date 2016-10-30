class DropSchedulingsTable < ActiveRecord::Migration[5.0]
  def up
    drop_table :schedulings
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
