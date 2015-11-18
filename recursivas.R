## Funciones recursivas ##

fac <- function(n){
      prod <- 1
      for(i in 1:n){
            prod <- prod*i
      }
      return(prod)
}

fac(5)


factorial <- function(x){
      if(x==1){
            return(1)
      } else {
            return(x*factorial(x-1))
      }
}

system.time(fac(500000))

system.time(factorial(500000))


fib <- function(n){
      if(n==0 | n==1){
            return(1)
      } else {
            fib(n-1) + fib(n-2)
      }
}


