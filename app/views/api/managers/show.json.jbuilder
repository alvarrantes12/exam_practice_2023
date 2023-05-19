json.manager do
    json.id @manager.id
    json.first_name @manager.first_name
    json.last_name @manager.last_name
    json.comedian do
        json.first_name @manager.comedian.first_name
        json.last_name @manager.comedian.last_name
        json.id_number @manager.comedian.id_number
        json.level @manager.comedian.level
    end
end