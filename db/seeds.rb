
manager1 = Manager.create!(first_name: "Manager1", last_name: "Mana1")
manager2 = Manager.create!(first_name: "Manager2", last_name: "Mana2")
manager3 = Manager.create!(first_name: "Manager3", last_name: "Mana3")

comedian1 = Comedian.create!(first_name: "Pirulo1", last_name: "Test1", id_number: 18394, level: 0, manager: manager1)
comedian2 = Comedian.create!(first_name: "Pirulo2", last_name: "Test2", id_number: 12424, level: 1, manager: manager2)
comedian3 = Comedian.create!(first_name: "Pirulo3", last_name: "Test3", id_number: 198284, level: 3, manager: manager3)

evento1 = Evento.create!(name: "Evento1", start_date: DateTime.now, end_date: DateTime.now + 1.week, comedian: comedian1)
evento2 = Evento.create!(name: "Evento2", start_date: DateTime.now, end_date: DateTime.now + 1.week, comedian: comedian2)
evento3 = Evento.create!(name: "Evento3", start_date: DateTime.now, end_date: DateTime.now + 1.week, comedian: comedian3)


Contract.create!(location: "CostaRica")
Contract.create!(location: "Panama")
Contract.create!(location: "Colombia")



