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
#Creating a list of 4 components
Weather <- list(Chicago=Chicago, NewYork=NewYork,Houston=Houston, SanFrancisco=SanFrancisco)
#apply only works on matrices
#tapply for vectors
#by used on dataframes same concept as group by in SQL
#eapply used in an environment
#lapply is used on lists or vector 
#sapply like lists but more simpler and its is result is eaither in vector or marix
#vapply prespecified return value 
#replicate runs a function several time and usually used with generation of random variables
Chicago
apply(Chicago, 1, mean)
apply(NewYork, 1, mean)
apply(Houston, 1, mean)
apply(SanFrancisco, 1, mean)
#recreating apply function with for loop
#find the mean for every row
#1.via loops
output <- NULL #preparing an empty vector 
for(i in 1:5){  #run the cycle
  output[i] <- mean(Chicago[i,])
}
names(output) <- rownames(Chicago)
output 
#2.via apply function
apply(Chicago, 1, mean)
Chicago
t(Chicago)
#apply transpose function on every component of a list 
tWeather <- lapply(Weather, t)
tWeather
rbind(Chicago, NewRow=1:12)
lapply(Weather, rbind, NewRow=1:12)
rowMeans(Chicago) #identical to : apply(Chicago,1, mean)
lapply(Weather, rowMeans)
?lapply      
