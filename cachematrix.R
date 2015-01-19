## Put comments here that give an overall description of what your
## functions do
## Thanks to RD Peng for example ons Coursera and site Stackoverflow
## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y){
    x <<- y            ## caches inputted matrix for cacheSolve
    m <<- NULL
  }
  get <- function() {
    x
  }
  setinv <- function(i) {
    inv <<- i
  }
  getinv <- function() {
    m
  }
  ## make a list to house the four functions
  list(set = set, get = get,
       setinv = setinv, getinv = getinv)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
    
  inv <- x$getinv() 
  if(!is.null(inv)){ message("getting cached data") 
                     return(inv) 
  } 
  
  data <- x$get()         ## run getmatrix to get value of input matrix
  inv <- solve(data, ...) ## compute value of inverse of input matrix
  x$setinv(inv)           ## run setinverse to cache inverse
  inv                     ## return the inverse
}