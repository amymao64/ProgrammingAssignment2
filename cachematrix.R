## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

}


## Write a short comment describing this function


cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}


##Function makeCacheMatrix returns a matrix which will be used as an input to cacheSolve function for the inversion of matrix
##x is defined as a square invertible matrix
makeCacheMatrix <- function(x = matrix()) {
  
  inv = NULL
  set = function(y) {
    # assign a value in an environment 
    x <<- y
    inv <<- NULL # to store inversion
  }
  get = function() x
  setinv = function(inverse) inv <<- inverse 
  getinv = function() inv
  list(set=set, get=get, setinv=setinv, getinv=getinv)
}
## return the inverse of the original matrix 


cacheSolve <- function(x) {
 
  inv = x$getinv()
  if (!is.null(inv)){
    message("getting cached data")
    return(inv)
  }

  data = x$get()
  inv = solve(data)
  x$setinv(inv)
  return(inv)
}
