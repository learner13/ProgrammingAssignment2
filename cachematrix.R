## Put comments here that give an overall description of what your
## functions do
## makeCacheMatrix is a function that returns a list of functions
## that cache the inverse of a matrix

## Write a short comment describing this function
## Create a special "matrix", which is a list containing
## a function to
##   1. set the value of the matrix, setMatrix()
##   2. get the value of the matrix, getMatrix()
##   3. set the value of the inverse matrix, setInverse()
##   4. get the value of the inverse matrix, getInverse()

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  setMatrix <- function(y){
    x <<- y
    m <- NULL
  }
  getMatrix <- function() x
  setInverse <- function(inve) m <<- inve
  getInverse  <- function() m
  list (setMatrix = setMatrix, getMatrix = getMatrix, setInverse = setInverse, getInverse = getInverse)

}


## Write a short comment describing this function
##The following function calculates the inverse of a "special" matrix created with 
## makeCacheMatrix
cacheSolve <- function(x, ...) {
## Return a matrix that is the inverse of 'x'
  inverse <- x$getInverse()
  if (!is.null(inverse)) return (inverse)
  mat <- x$getMatrix()
  inverse <- solve(mat)
  x$setInverse(inverse)
  inverse  
}
