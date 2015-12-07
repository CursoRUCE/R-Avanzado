
D <- new.env(parent=emptyenv())
D$`+` <- function(a,b){return(2*a-b)}
D$a <- 1
D$b <- 3
assign("f",c(1,2,3,4), envir=D)
ls(D)
environment(str(D))

identical(globalenv(), str(D))
identical(emptyenv(), str(D))
identical(emptyenv(), parent.env(D))

E <- new.env()
exists("mean", envir=E, inherits = TRUE)
exists("mean", envir=D, inherits = TRUE)

