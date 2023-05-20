json.array! @managers do |manager|
    json.id manager.id
    json.last_name manager.first_name
    json.first_name manager.last_name
end
