Comedian.create!(first_name: "Comediante", last_name: "Comediante 1", id_number: 12345677, level: 1, manager_id: 1)
Comedian.create!(first_name: "Comedian", last_name: "Comedian 2", id_number: 123456781, level: 0, manager_id: 1)

Contract.create!(location: "Alajuela")
Contract.create!(location: "San Jose")

Event.create!(name: "Escolar", comedian_id: 1)
Event.create!(name: "Deportivo", comedian_id: 1)

