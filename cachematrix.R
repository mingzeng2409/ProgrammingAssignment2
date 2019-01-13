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


## Write a short comment describing this function

## Compute the inverse of the special matrix returned by "makeCacheMatrix"
## above. If the inverse has already been calculated (and the matrix has not
## changed), then the "cachesolve" should retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getInverse()
 
   ## Just return the inverse if its already set
  if( !is.null(m) ) {
    message("getting cached data")
    return(m)
  }
  
  ## Get the matrix from our object
  data <- x$get()
 
  ## Calculate the inverse
  m <- solve(data, ...)
 
  ## Set the inverse to the object
  x$setInverse(m)
  
  ## Return the matrix
  m
}
