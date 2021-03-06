## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## function to create an object aka ''makeCacheMatrix' object
## with additional properties for inverse to the main matrix

makeCacheMatrix <- function(m = matrix()) {
  inv <- NULL
  set <- function(y){
    m <<- y
    inv <<- NULL
  }
  get <- function() m
  setInverse <- function(solveMatrix) inv <<- solveMatrix
  getInverse <- function() inv
  list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}


## Write a short comment describing this function
## getting the inversefrom the cache (an data in a 'makeCacheMatrix' object)

cacheSolve <- function(m, ...) {
        ## Return a matrix that is the inverse of 'x'
  inv <- m$getInverse()
  if(!is.null(inv)){
    message("getting cached data")
    return(inv)
  }
  data <- m$get()
  inv <- solve(data)
  m$setInverse(inv)
  inv   
}

