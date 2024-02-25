# S3 Example
# Create a simple function that will make an object of class "person"
make_person <- function(name, age) {
  person <- list(name = name, age = age)
  class(person) <- "person"
  return(person)
}

# Use the function to create an object
john <- make_person("John Doe", 30)

# Print the object
print(john)

