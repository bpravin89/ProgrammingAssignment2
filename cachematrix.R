## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(m = matrix()){
  
  invM <- NULL
  
  setMatrix <- function(y){
    
    m <<- y
    invM <<- NULL
  }
  
  getMatrix<- function() m
  
  getInverse <- function()  invM
  
  setInverse <- function(a){
    
    invM <<- a
  }
  
  list(setMatrix = setMatrix, getMatrix = getMatrix,setInverse = setInverse, getInverse=getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x,...){
  
  inv <- x$getInverse()
  
  if(! is.null(inv)){
    message("getting from Cache")
    return(inv)
  }
  
  mat <- x$getMatrix()
  inv <- solve(mat)
  x$setInverse(inv)
  inv
}
