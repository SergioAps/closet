# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Product.delete_all
Product.create!(name: 'Black tshirt',
  description: %{black},
  image_url: 'tshirt.jpg',
  adquisition_date: DateTime.new(2020,9,1,17))

Product.create!(name: 'White tshirt',
  description: %{white},
  image_url: 'white.jpeg',
  adquisition_date: DateTime.new(2021,9,1,17))

Product.create!(name: 'Colours tshirt',
  description: %{rainbow},
  image_url: 'colours.jpeg',
  adquisition_date: DateTime.new(2022,9,1,17))