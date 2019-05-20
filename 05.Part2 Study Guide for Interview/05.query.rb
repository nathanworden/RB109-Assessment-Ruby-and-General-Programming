PRODUCTS = [
{ name: "Thinkpad x210", price: 220},
{ name: "Thinkpad x220", price: 250},
{ name: "Thinkpad x250", price: 979},
{ name: "Thinkpad x230", price: 300},
{ name: "Thinkpad x230", price: 330},
{ name: "Thinkpad x230", price: 350},
{ name: "Thinkpad x240", price: 700},
{ name: "Mackbook Leopard", price: 300},
{ name: "Mackbook Air", price: 700},
{ name: "Mackbook Pro", price: 600},
{ name: "Mackbook", price: 1449},
{ name: "Dell Latitude", price: 200},
{ name: "Dell Latitude", price: 650},
{ name: "Dell Inspiron", price: 300},
{ name: "Dell Inspiron", price: 450},
]

query = {
  price_min: 240,
  price_max: 280,
  q: "thinkpad"
}

query2 = {
  price_min: 300,
  price_max: 450,
  q: 'dell'
}

# My Answer:
def search(query)
  PRODUCTS.select do |hsh|
    hsh[:name].downcase.include?(query[:q]) &&
    hsh[:price] >= query[:price_min] &&
    hsh[:price] <= query[:price_max]
  end
end

# Other student's answer:
# def search(query)
#   PRODUCTS.select do |hsh|
#     hsh[:name].downcase.include?(query[:q]) &&
#     (query[:price_min]..query[:price_max]).include?(hsh[:price])
#   end
# end

p search(query)
# [ {name: "Thinkpad x220", price: 250 } ]
puts

p search(query2)
# [{name: "Dell Inspiron", price: 300},
#  {name: "Dell Inspiron", price: 450}]

# Algorithm
# Iterate through the hashes in the PRODUCTS array and select the hashes who fulfill the criteris:
# PRODUCTS[index][:name].downcase includes in it query[:q]
# PRODUCTS[index][:price] is greater than or equal to query[:price_min] and less then or equal to query[:price_max]





