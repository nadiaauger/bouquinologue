class AddQuantityToBook < ApplicationRecord
  def change
    add_column :books, :quantity, :integer
  end
end
