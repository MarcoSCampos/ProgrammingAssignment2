## Pair of functions that caching the inverse matrix
## The first function create the matrix and make relation from objetcs for a functions

makeCacheMatrix <- function(x = matrix()) {
        invm <- NULL
        set <- function(y) {
    x <<- y
    invm <<- NULL
    message("matrix created")
  }
  get      <- function() x
  setSolve <- function(solve) invm <<- solve
  getSolve <- function() invm
  list(set = set, 
       get = get,
       setSolve = setSolve,
       getSolve = getSolve)
}

## the second function invert the matrix, and test if the matrix are not already inversed and retrive the inverted matrix  
cacheSolve <- function(x, ...) {
## Return a matrix that is the inverse of 'x'
## test if there is already inversed matrix  
invm <- x$getSolve()
  if(!is.null(invm)) {
      message("getting cached data")
      return(invm)
        }
## calculating the inverse matrix
    invm <- solve(x$get(), ...)
    x$setSolve(invm)
    invm 
 }
