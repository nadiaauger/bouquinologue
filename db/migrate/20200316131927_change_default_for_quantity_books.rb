class ChangeDefaultForQuantityBooks < ActiveRecord::Migration[6.0]
  def change
    change_column :books, :quantity, :integer, :default => 1
  end
end
