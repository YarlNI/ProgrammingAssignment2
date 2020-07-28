## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## function to create an object with matrix and its inverse

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



d <- makeCacheMatrix(matrix(1:16, 4, 4))

cacheSolve(d)
