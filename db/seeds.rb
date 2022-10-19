# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Product.delete_all
product_picture1= URI.open("https://i.pinimg.com/564x/62/98/b0/6298b026a65cf80bcf9dce061e9b79c9.jpg")
product1 = Product.new(name: 'Black tshirt', description: %{black}, adquisition_date: DateTime.new(2020,9,1,17))
product1.photo.attach(io: product_picture1, filename: "tshirt.jpg", content_type: "image/png")
product1.save

product_picture2= URI.open("https://i.pinimg.com/564x/ee/10/c4/ee10c4a8fd2232c50ad78629641d1d05.jpg")
product2 = Product.new(name: 'White tshirt', description: %{white}, adquisition_date: DateTime.new(2021,9,10,17))
product2.photo.attach(io: product_picture2, filename: "tshirtwhite.jpg", content_type: "image/png")
product2.save

product_picture3= URI.open("https://i.pinimg.com/564x/5d/0f/13/5d0f13b181e273bff5479b21fc1e205b.jpg")
product3 = Product.new(name: 'Colours tshirt', description: %{colours}, adquisition_date: DateTime.new(2022,2,5,17))
product3.photo.attach(io: product_picture3, filename: "tshirtcolours.jpg", content_type: "image/png")
product3.save
