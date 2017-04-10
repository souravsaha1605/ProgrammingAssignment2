## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  set <- function(y){
    x <<- y
    m <<- NULL
  }
  
  get <- function() x
  set_inverse <- function(inverse){
    i <<- inverse
  }
  
  get_inverse <- function() i
  
  list(set = set, get = get, 
       set_inverse = set_inverse,
       get_inverse = get_inverse)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  i <- x$get_inverse()
  if(!is.null(i)){
    message("getting cached data")
    return(i)
  }
  
  m <- x$get()
  i <- solve(m)
  x$set_inverse(i)
  i
}


