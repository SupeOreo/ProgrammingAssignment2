## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(mat = matrix()) {
    # initialize the inverse to NULL
    inverse <- NULL
    
    # setter for matrix
    set <- function(mtrx) {
        mat <<- mtrx
        inverse <<- NULL
    }
    
    # getter for matrix
    get <- function() mat
    
    # setter for the inverse
    set.inverse <- function(setinverse) inverse <<- setinverse
    
    # getter for the inverse
    get.inverse <- function() inverse
    
    # returns a list of getter and setter functions
    list(set = set, get = get,
         set.inverse = set.inverse,
         get.inverse = get.inverse)
}