###########################################
#####     Optimización de Memoria     #####
###########################################

library(pryr)

# Tamaño de objetos
object_size(1:20)
object_size(vector(length = 10))
object_size(mean)
object_size(mtcars)

# Longitud vector / Bytes
sizes <- sapply(0:100, function(n) object_size(seq_len(n)))
plot(0:100, sizes, xlab='Longitud', ylab='Bytes', type='s')

# Vectores vacíos
object_size(numeric())
object_size(logical())
object_size(list())

# Componentes compartidas
x <- 1:1e6
object_size(x)

y <- list(x,x,x)
object_size(y)

z <- list(y,y,y)
object_size(z)


# Memoria usada
mem_used()

# Cambios en memoria
mem_change(x <- 1:1e6)
mem_change(rm(x))

# Primera función de C++
cppFunction('int add (int x, int y, int z){
            int sum=x+y+z;
            return sum;
            }')

# Sentencias SQL
install.packages('sqldf', dependencies = TRUE)
library(sqldf)



