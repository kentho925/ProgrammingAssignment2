## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  set <- function(y) {
    x <<- y
    i <<- NULL
  }
  get <- function() x
  setinvm <- function(invm) i <<- invm
  getinvm <- function() i
  list(set = set,
       get = get, 
       setinvm = setinvm, 
       getinvm = getinvm)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  mr <- x$getinv()
  if(!is.null(mr)) {
    message("getting cached inverse matrix")
    return(mr)
  }
  data <- x$get()
  mr <- solve(data, ...)
  x.setinvm(mr)
  mr
}
