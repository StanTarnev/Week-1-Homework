def pet_shop_name(pet_shop)
  return pet_shop[:name]
end

def total_cash(pet_shop)
  return pet_shop[:admin][:total_cash]
end

def add_or_remove_cash(pet_shop, amount)
  # if amount > 0
    return pet_shop[:admin][:total_cash] += amount
  # elsif amount < 0
  #   return pet_shop[:admin][:total_cash]
end

def pets_sold(pet_shop)
  return pet_shop[:admin][:pets_sold]
end

def increase_pets_sold(pet_shop, pet_sales)
  return pet_shop[:admin][:pets_sold] += pet_sales
end

def stock_count(pet_shop)
  return pet_shop[:pets].count
end

def pets_by_breed(pet_shop, breed)
  breed_count = []
  for each_breed in pet_shop[:pets]
    if each_breed[:breed] == breed
      breed_count.push(each_breed)
    end
  end
  return breed_count
  # return pet_shop.count([:pets][:breed] == breed)
  # return pet_shop[:pets].count{|x| [:breed] == breed}
end

def find_pet_by_name(pet_shop, pet_name)
  for each_hash in pet_shop[:pets]
    if each_hash[:name] == pet_name
      name_of_pet = each_hash
    end
  end
  return name_of_pet
end

def remove_pet_by_name(pet_shop, pet_name)
  for each_hash in pet_shop[:pets]
    if each_hash[:name] == pet_name
      # pet_shop[:pets].delete(pet_shop[:pets])
      pet_shop[:pets].delete(each_hash)
    end
  end
  # find_pet_by_name(pet_shop, pet_name)
  # return pet_name
end

def add_pet_to_stock(pet_shop, new_pet)
  pet_shop[:pets].push(new_pet)
  # stock_count(pet_shop)
end

def customer_cash(customer)
  return customer[:cash]
end

def remove_customer_cash(customer, amount)
  return customer[:cash] -= amount
end

def customer_pet_count(customer)
  return customer[:pets].count
end

def add_pet_to_customer(customer, new_pet)
  customer[:pets].push(new_pet)
  # customer_pet_count(customer)
end

def customer_can_afford_pet(customer, new_pet)
    if customer[:cash] > new_pet[:price]
      return true
    elsif customer[:cash] < new_pet[:price]
      return false
    elsif customer[:cash] == new_pet[:price]
      return true
    end
end
