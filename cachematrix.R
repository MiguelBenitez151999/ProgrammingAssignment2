## this function can create a matrix that cache its inverse


## I set "test" as the matrix

MakeCacheMatrix <- function (test=matrix()){
        invtest<-NULL  #invtest represents Null
        set<- function(z){
                test <<- z
                invtest<- NULL         #invtest input represents the "Null"           
}       
        get<- function() test
        setinverse<-function (inverse) (inv<<-inverse)
        getinverse<-function () invtest
                
        list (set = set, get= get, setinverse = setinverse, getinverse = getinverse)

## this next function computes the inverse of the matrix created by the function found above.
CacheSolve<- function (test,...) {
        inv<-test$getinverse()
        if(!is.null(inv)) {
                message("retrieving the cache input")
                return(invtest)
           }
           mat <- test$get()
           invtest<- solve(mat, ...)
           test$setinverse(invtest)
           inv
}        
                

     

