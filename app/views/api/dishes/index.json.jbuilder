json.array! @dishes do |dish|
  json.name dish.name
  json.description dish.description
  json.photo dish.photo
  json.price dish.price
  json.category_id dish.category_id 
end
