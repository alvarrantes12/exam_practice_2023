# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


manager = Manager.create(first_name: "Isaac", last_name: "Villalobos")
comedian = Comedian.create(first_name: "Fabricio", last_name: "Vega", id_number: 12345123, level: 2, manager: manager)
Event.create(name: "Stand up", comedian: comedian)
Contract.create!(location: "Costa Rica")