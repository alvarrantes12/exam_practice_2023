Comedian.create!(first_name: "Jilberto", last_name: "Calderon", id_number: 54241471, level: 0, manager_id: 3)
Comedian.create!(first_name: "James", last_name: "Ramirez", id_number: 24785420, level: 1, manager_id: 2)

Contract.create!(location: "Puntarenas, Costa Rica")
Contract.create!(location: "Cartago, Costa Rica")
Contract.create!(location: "Limon, Costa Rica")

Event.create!(name: "VIVA Piñata", comedian_id: 2)
Event.create!(name: "VIVA Fiesta 2015", comedian_id: 1)