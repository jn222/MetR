class ChangePayment < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :payment
    add_column :users, :payment, :integer
  end
end
