class AddUsernameToSpots < ActiveRecord::Migration[5.0]
  def change
    add_column :spots, :username, :string
  end
end
