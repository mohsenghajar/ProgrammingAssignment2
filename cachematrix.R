## Programming Assignment 2 -- R Programming -JHU
## Demonstrate how effective chaching is done to speedup codes

## run this first to initialize
makeCacheMatrix <- function(x = matrix()) {
  set(x)
}

## These are the functions to be used in the program

## function to define inv, the inverse
set <- function(y) {
  x <<- y
  inv <<- NULL
}

## have x handy
get <- function() {
  x
}

## to transfer inv to the cache in this environment after it is calculated
## in cacheSolve
setinv <- function(solve) {
  inv <<- solve
}

## to get inv from cache 
getinv <- function() {
  inv
}

## This is the caller function -- determines if a matrix calculation is truly
## needed or data is already available in the cache

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inv <- getinv()
  if(!is.null(inv)) {
    message("getting cached data")
    return(inv)
  }
  data <- x
  inv <- solve(data, ...)
  setinv(inv)
  inv
}