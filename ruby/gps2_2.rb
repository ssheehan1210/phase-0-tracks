# Pseudocode:

# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # create a emtpy hash
  # split the string so each item is its own string
  # set default quantity (default = 1)
  # put each item into the hash one at a time, allowing each item to have a default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: hash data structure with each item as it's own key values

# Method to add an item to a list
# input: list, item name, and optional quantity
# steps:
  # put item as a key and a quantity as a value to the hash
# output: new hash with new item/value in it

# Method to remove an item from the list
# input: list, item name
# steps:
  # indicate which item you want to remove, regardless of placement in hash
# output: new hash without the indicated item

# Method to update the quantity of an item
# input: list, item name, and the new quantity
# steps:
  # pull up the key (item name) and have it equal the new value (new quantity)
# output: new hash with one of its items having a new value

# Method to print a list and make it look pretty
# input: list
# steps:
  # extract each item out of the list with its associated value
  # make it so that each item/quantity pair is presented in their own line
# output: list of each item and quantity pair printed line-by-line



# Grocery List

# It takes each item in string and put the item in the hash
def create_items(string)
  item_list = {}
  string.split(" ").each { |item| item_list[item] = 1 }
  item_list
end

# Takes spesifc item and put it in hash with qty
def add_item(item_list, item, qty)
  item_list[item] = qty
  item_list
end

# Takes spesifc item, takes it out from the hash
def remove_item(item_list, item)
  item_list.delete(item)
  item_list
end

# Pulls up spesifc item, give new value to the item
def update_qty(item_list, item, qty)
  item_list[item] = qty
  item_list
end

# Takes the hash turns it into the bullted list
def print_item_list(item_list)
  item_list.each { |item, qty| puts "- #{item} : #{qty}" }
end


# Driver Code:
item_list = create_items("Carrots Apples Peas Pizza")
add_item(item_list, "Lemonade", 2)
add_item(item_list, "Tomatoes", 3)
add_item(item_list, "Onions", 1)
add_item(item_list, "Ice Cream", 4)
remove_item(item_list, "Lemonade")
update_qty(item_list, "Ice Cream", 1)
print_item_list(item_list)



# Reflection:

# What did you learn about pseudocode from working on this challenge?
  # I learned a lot about the importance of planning out each aspect
  # of a method through pseudocoding, particularly when it comes to
  # the method's input. Knowing exactly what will be put into the
  # method really makes figuring out what type of method you need a
  # lot easier in the long run.

# What are the tradeoffs of using arrays and hashes for this challenge?
  # If you wanted to make a simple list of items, then the quickest
  # way would be to create an array of individual items since the
  # array itself could act as a sort of list. On the other hand, a
  # hash would be able to provide more specific details about each of
  # the items, details of which could vary in amount or value between
  # each item in the list. The process to create a grocery list with
  # a hash is not as quick as simply making an array, but doing so
  # allows you to have a more specific and well-defined list to use.

# What does a method return?
  # A method returns the last resulting value achieved within the
  # method, having started with its 'def' line and ending at its
  # respective 'end' line. From then on, the the method's function
  # would remain consistent throughout the file and would produce
  # varying results in the same way based on what arguments are
  # added in.

# What kind of things can you pass into methods as arguments?
  # Depending on the method, the accepted types of objects it can
  # take as an argument could vary. Technically, an argument could
  # potentially be any type of object, whether it be a string, an
  # integer, or even complete arrays/hashes. However, in order for
  # the method to work as intended and not result as an error, the
  # right number of arguments and the appropriate types of inputs
  # for the non-optional arguments must be maintained.

# How can you pass information between methods?
  # By executing certain methods earlier in the file, you can use
  # them in later methods since their resulting values will stay
  # consistent throughout the rest of the file, so long as the
  # coding is done correctly to return the intended values.

# What concepts were solidified in this challenge, and what concepts are still confusing?
  # Making pseudocode in an efficient and timely manner is easier to
  # execute now, but I'm still going to need more practice in knowing
  # when to and not to refactor a method. With more practice, I
  # should be able to create more DRY methods with less trouble.
