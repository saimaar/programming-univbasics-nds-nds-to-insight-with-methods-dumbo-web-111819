require 'directors_database'

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)
  array = nds
  hash = {}
  i = 0
  
  while i < array.length do
    subArr = array[i]
    name = subArr[:name]
    income = gross_for_director(subArr)
    
    if hash[name] == nil 
      hash[name] = income
    end
   
    i+= 1
  end

return hash  
end

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
 array = director_data[:movies]
  i = 0 
  total = 0
  
  while i < array.length do
    obj = array[i]
    income = obj[:worldwide_gross]
    
    total += income
    i+=1
  end
 
  return total
end
