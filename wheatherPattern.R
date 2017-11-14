#assigning names to the rows
Chicago <- read.csv("./weatherData/Chicago-F.csv", row.names=1)
NewYork <- read.csv("./weatherData/NewYork-F.csv", row.names=1)
Houston <- read.csv("./weatherData/Houston-F.csv", row.names=1)
SanFrancisco <- read.csv("./weatherData/SanFrancisco-F.csv", row.names=1)
#since all the elements of the dataframe are of the same type there is no need to use data frame. instead we use matrix
is.data.frame(Chicago)
#convert to matrices
Chicago <- as.matrix(Chicago)
NewYork <- as.matrix(NewYork)
Houston <- as.matrix(Houston)
SanFrancisco <- as.matrix(SanFrancisco)
