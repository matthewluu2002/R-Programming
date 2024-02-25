# S4 Example
# Define the class
setClass("Person",
         slots = list(
           name = "character",
           age = "numeric"
         ))

# Create an object of the new class
john <- new("Person", name = "John Doe", age = 30)

# Print the object
print(john)
