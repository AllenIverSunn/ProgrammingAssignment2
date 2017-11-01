## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    i <- NULL
    #set the x value and reset i
    set <- function(y) {
        x <<- y
        i <<- NULL
    }
    #get x
    get <- function() x
    #set the inverse value of x
    setinverse <- function(inverse) {
        i <<- inverse
    }
    #get the inverse value of x
    getinverse <- function() i
    list(set = set, get = get,
         setinverse = setinverse,
         getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
    
    #if the inverse of x has been calculated
    i <- x$getinverse()
    if(!is.null(i)) {
        message('getting cached data')
        return(m)
    }
    #calculate the inverse of x
    data <- x$get()
    i <- solve(data)
    x$setinverse(data)
    i
}
