class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string "author"
      t.string "title"
      t.string "editor"
      t.string "year"
      t.decimal "price"
      t.integer "category"
      t.timestamps
    end
  end
end
