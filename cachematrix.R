## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  #taking null value in sol variable
  sol<-NULL
  #setting up the set function
  set<- function(y){
    x<<-y
    sol<<-NULL
  }
  #setting up the get function
  get<-function() x
  setInv<- function(solveMatrix) sol<<-solveMatrix
  getInv<- function() sol
  list(set= set, get=get,setInt=setInt,getInt=getInt)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
   #getting the inverse of the matrix
  sol<-x$getInverse()
  #checking for cache
  if(!is.null(sol)){
    message("getting cached data")
    return(sol)
  }
  data1<-x$get()
  sol<-Inverse(data1)
  x$setInv(sol)
  sol
        ## Return a matrix that is the inverse of 'x'
}
