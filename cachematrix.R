## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## A pair of functions that cache the inverse of a matrix

makeCacheMatrix <- function(x = matrix()) {
m<-NULL

## Method to set the matrix
set<- function(y){
  x<<-y
  m<<-NULL
}

## Method the get the matrix
get<-function()x

 ## Method to set the inverse of the matrix
setInverse<-function(inverse)m<<-inverse

## Method to get the inverse of the matrix
getInverse <- function()m

## Return a list of the methods
list(set = set, get = get,
     setInverse = setInverse,
     getInverse = getInverse)
}
## This function computes the inverse of the special "matrix" returned by makeCacheMatrix above.
cacheSolve <-function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  y <- x$getInverse()
  if(!is.null(y)){
    message("getting cached data")
    return(y)
  }
  data <- x$get()
  y <- solve(data)
  x$setInverse(y)
  ##return the matrix 
  y     
}
