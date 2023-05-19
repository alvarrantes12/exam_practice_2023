# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
manager = Manager.create!(first_name: "Carlos", last_name: "Villalobos")
comedian = Comedian.create!(first_name: "Esteban", last_name: "Calderón", id_number: 12345678, level: 2, manager: manager)
contract = Contract.create!(location: "Puente de Piedra")
Event.create(name: "Fiesta 1", comedian: comedian)
Record.create(version: "Version2", comedian: comedian, contract: contract)



