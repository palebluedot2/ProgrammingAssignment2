## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {   # defines a function called "makeCacheMatrix" that takes in x, which is a matrix
        g <- NULL  
        
        set <- function(y) {
                x <<- y              # caches 
                g <<- NULL           # resets the value of g
        }
        
        get <- function() x           # this returns the value of the original function - so if you type "get()", output will equal input (ie, the matrix)
        
        set_inverse <- function(inverse) {g <<- inverse}   
        
        get_inverse <- function() matrix
        
        list(get = get, 
             set_inverse = set_inverse, 
             get_inverse = get_inverse)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        
        matrix <- x$get_inverse
        
        if(!is.null(matrix)) {
                message("Getting cached data...")
                return(matrix)
        }
        
        data <- x$get()
        matrix <- matrix(data, ...)
        x$set_inverse(matrix)
        matrix
        
}
