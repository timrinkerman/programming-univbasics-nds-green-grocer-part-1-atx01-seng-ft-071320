#iterate over the array and highlight the items by name
require "pry"

#after iterating over each hash the key and values are isolated 
#if the name of an item matches the argument return item (the hash which it was contained)

def find_item_by_name_in_collection(name, collection)
  
  collection.each do |grocery_item|
    return grocery_item if grocery_item[:item] === name 

  end

  nil
end



#add a counter to the exsisting hash 
def consolidate_cart(cart) 
new_cart = []
index = 0 
cart.each do |grocery_item|
current_item = find_item_by_name_in_collection(grocery_item[:item], new_cart)
if current_item 
  new_cart_index = 0 
  new_cart.each do |new_cart_item|
        
        if new_cart_item[:item] === current_item[:item]
          new_cart_item[:count] += 1
        end
        new_cart_index += 1
      end
    else
      grocery_item[:count] = 1
      new_cart << grocery_item
    end
    index += 1
  end
  new_cart
end