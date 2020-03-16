# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Book.destroy_all
i = 0
require 'csv'

while i <= 13  do
  csv_text = File.read(Rails.root.join('lib', 'seeds', "Book#{i}.csv"))
  csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
  csv.each do |row|
    t = Book.new
    t.author = row['author']
    # p row['Authorrr']
    t.title = row['title']
    t.editor = row['editor']
    # p row['editor']
    t.year = row['year']
    t.price = row['price']
    t.category = row['category'].to_i
    t.quantity = 1
    t.validate!
    t.save
    puts "#{t.author}, #{row['editor']},#{row['year']} #{row['title']} saved"
  end
  puts "The book number #{i} is integrated"
  i += 1
end
