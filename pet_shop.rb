@customers = [
  {
    name: "Alice",
    pets: [],
    cash: 1000
  },
  {
    name: "Bob",
    pets: [],
    cash: 50
  }
]

@new_pet = {
  name: "Bors the Younger",
  pet_type: :cat,
  breed: "Cornish Rex",
  price: 100
}

@pet_shop = {
  pets: [
    {
      name: "Sir Percy",
      pet_type: :cat,
      breed: "British Shorthair",
      price: 500
    },
    {
      name: "King Bagdemagus",
      pet_type: :cat,
      breed: "British Shorthair",
      price: 500
    },
    {
      name: "Sir Lancelot",
      pet_type: :dog,
      breed: "Pomsky",
      price: 1000,
    },
    {
      name: "Arthur",
      pet_type: :dog,
      breed: "Husky",
      price: 900,
    },
    {
      name: "Tristan",
      pet_type: :dog,
      breed: "Basset Hound",
      price: 800,
    },
    {
      name: "Merlin",
      pet_type: :cat,
      breed: "Egyptian Mau",
      price: 1500,
    }
  ],
  admin: {
    total_cash: 1000,
    pets_sold: 0,
  },
  name: "Camelot of Pets"
}




def pet_shop_name(shop)
  return shop[:name]
end

def total_cash(shop)
  return shop[:admin][:total_cash]
end

def add_or_remove_cash(shop, amount)
  shop[:admin][:total_cash] += amount
end

def pets_sold(shop)
  return shop[:admin][:pets_sold]
end

def increase_pets_sold(shop, number_of_pets_sold)
  shop[:admin][:pets_sold] += number_of_pets_sold
end

def stock_count(shop)
  return shop[:pets].length
end

def pets_by_breed(shop, breed)
  count = []
  for pet in shop[:pets]
    if pet[:breed] == breed
      count.push(pet[:breed])
    end
  end
  return count
end

def find_pet_by_name(shop, name)
  pet_name = []
  for pet in shop[:pets]
    if pet[:name] == name
      pet_name.push(pet)
    end
  end
  return pet_name[0]
end




# def remove_pet_by_name(shop, name)
#   for pet in shop[:pets]
#     if pet[:name] == name
#       pet.delete
#     end
#   end
# end

def add_pet_to_stock(shop, pet)
  shop[:pets] << pet
end

def customer_cash(customer)
  return customer[:cash]
end

def remove_customer_cash(customer, amount)
  customer_cash = customer[:cash] -= amount
  return customer_cash
end

def customer_pet_count(customer)
  return customer[:pets].length
end

def add_pet_to_customer(customer, pet)
  customer[:pets] << pet
end
