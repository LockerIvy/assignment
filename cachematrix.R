## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

# Method to set the matrix
set <- function(y) {
  x <<- y
  inv <<- NULL  # Reset the inverse property whenever the matrix is changed
}

# Method to get the matrix
get <- function() x

# Method to set the inverse of the matrix
setInverse <- function(inverse) inv <<- inverse

# Method to get the inverse of the matrix
getInverse <- function() inv

# Return the list of methods
list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}





## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  inv <- x$getInverse()  # Try to get the cached inverse
  
  # If the inverse is already cached, return it
  if (!is.null(inv)) {
    message("getting cached data")
    return(inv)
  }
  
  # Otherwise, compute the inverse
  mat <- x$get()
  inv <- solve(mat, ...)  # Use solve to compute the inverse
  
  # Cache the inverse
  x$setInverse(inv)
  
  # Return the inverse
  inv
}
