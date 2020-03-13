class CreateAddQuantityToBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :add_quantity_to_books do |t|

      t.timestamps
    end
  end
end
