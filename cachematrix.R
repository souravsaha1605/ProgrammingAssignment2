## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  i <- NULL 
  set <- function(y){
    x <<- y   # Initialize the x, matrix value with y when the set function is called
    m <<- NULL
  }
  
  get <- function() x # Getting the matrix value when the get function is called
  set_inverse <- function(inverse){
    i <<- inverse  # Initializing the inverse value passed as an argument after computing
  }
  
  get_inverse <- function() i  # Getting the inverse value when the function is called
  
  list(set = set, get = get, #returning the list with all the function names
       set_inverse = set_inverse,
       get_inverse = get_inverse)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  i <- x$get_inverse() #getting the inverse value from the get_inverse funcion of the closure makeCacheMatrix
  if(!is.null(i)){ 
    message("getting cached data")
    return(i) #if the inverse value is not null then it returns the value of the inverse
  }
  
  # Executed only if the value of the inverse is null
  m <- x$get() 
  i <- solve(m) # Computing the inverse value of the matrix
  x$set_inverse(i)
  i
}


