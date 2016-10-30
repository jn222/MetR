class AddDescriptionToSpots < ActiveRecord::Migration[5.0]
  def change
    add_column :spots, :description, :text
  end
end
