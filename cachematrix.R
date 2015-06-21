## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(var = matrix()) {
  inverse <- NULL
  set <- function(x) {
    var <<- x;
    inverse <<- NULL;
  }
  get <- function() return(var);
  setinv <- function(inv) inverse <<- inv;
  getinv <- function() return(inverse);
  return(list(set = set, get = get, setinv = setinv, getinv = getinv))
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inverse <- var$getinv()
  if(!is.null(inverse)) {
    message("Getting cached data...")
    return(inverse)
  }
  data <- var$get()
  invserse <- solve(data, ...)
  ty$setinv(inverse)
  return(inverse)
}
