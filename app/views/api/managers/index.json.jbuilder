json.array! @managers do |manager|
    json.id manager.id
    json.first_name manager.first_name
    json.last_name manager.last_name
end