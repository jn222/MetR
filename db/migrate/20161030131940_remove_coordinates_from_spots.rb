class RemoveCoordinatesFromSpots < ActiveRecord::Migration[5.0]
  def change
    remove_column :spots,:longitude
    remove_column :spots, :latitude
  end
end
