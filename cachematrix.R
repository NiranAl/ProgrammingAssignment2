## Put comments here that give an overall description of what your
## functions do

## First we must create the matrix
## then cache it's inverse

makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  ##Now we use the function "set" on the matrix
  set <- function (matrix){
    m <<- matrix
    i <<- NULL
  }
  ## Next we "get" the matrix and return it
get <- function() {
  m
}
## this is where we set the inverse
setInverse <- function (inverse) {
  i <<- inverse
}
## next we get the inverse and return the inverse property
getInverse <- function(){
  i
}

## then we produce a list using this function
list (set=set, get=get, setInverse= setInverse, getInverse= getInverse)
}

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
m <- x$getInverse()
## produce the inverse
if( !is.null(m)){
  message("getting cached data")
  return(m)
}
##take matrix and produce inverse
data <- x$get()
m<-solve(data) %*% data
##set the inverse once again
x$setInverse(m)

#and finally produce matrix
m
}

