Event.create!(name: "Evento1", comedian: Comedian.create(first_name: "Juan", last_name: "Carlos", id_number: 123456789, level: 1, manager: Manager.create!(first_name: "Leonel", last_name: "Messi")))

Event.create!(name: "Evento2", comedian: Comedian.create(first_name: "Maria", last_name: "Fernandez", id_number: 112233444, level: 0, manager: Manager.create!(first_name: "Luis Alberto", last_name: "Cervantes")))

Event.create!(name: "Evento3", comedian: Comedian.create(first_name: "Karla", last_name: "Porras", id_number: 111122233, level: 2, manager: Manager.create!(first_name: "Nelson", last_name: "Baltodano")))

Contract.create!(location: "Heredia")
Contract.create!(location: "Alajuela")
Contract.create!(location: "Guanacaste")

