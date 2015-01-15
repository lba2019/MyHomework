install.packages("dplyr")
library("dplyr")
require("dplyr") #it's just like library, except if you're writing a function and you you use this package for that function and it can't get taht funciton, library will cause the thing to say "error you're screwed" but require will tell you "warning you dont have the package' but it'll keep going with that function 

# calculator
2*3/5

# assignment
x <- 2*3/5

# console vs script


# workspace
rm() #will remove things from workspace 
rm(x)
rm(list=objects()) #clears out your entire environment

# functions
objects() # displays objects in workspace
ls()      # same as objects


# help
help(t.test) #pulls out notes for that specific question or whatever 
?t.test       #same as help
help.search("welch") #

# packages
install.packages("dplyr")
library("dplyr")
require("dplyr") #it's just like library, except if you're writing a function and you you use this package for that function and it can't get taht funciton, library will cause the thing to say "error you're screwed" but require will tell you "warning you dont have the package' but it'll keep going with that function 
# install dplyr
# 
# saving work spaces
sometimes you have been working for ever on a result and you dont wanna rerun the script to get this result. you just wanna save it. you use the function save()
save(x, file = "x.RData")
you can get it again by using
load("x.RData")
to save the entire workspace do 
save.image() #You can also give the work space a name so you can open the name in the folder later. 
#working directories
getwd() #tellls you which working directory R is looking at 
#setwd() sets the working directory. 

#quitting 
q()
#sleep data
load(sleep)
you can specify the number of rows so you can say
head(sleep,2)
summary(sleep)

#function excursion #1: specifying arguments 
arguments dont always have to be in order as long as you specify them.
so you can say 
head(n=5, x = sleep) #rather than
head(sleep,5)
#function excursion #2: generics
?
summary <- 10 # can assign object names that already exist to other things

#name conflicts
sometimes you loaded 2 different packages and both packages have a function with teh same name
R defaults to MOST RECENTLY LOADED PACKAGE
if dothis() is a function, dothis() will default to dothis() from package2.
specify with package1::dothis() or package2::dothis()

#vectors
c() will glue whatever you put together
c(1,"pie", 2) #if you do this, it'll turn all numbers into string cuz it can't force "pie" to be a number
vectors can only contain one type of data 
x <- c(1,2,3)
y<- c(4,5,6)
z<- c(y,x)
a<- 1:10 #shortcut for sequence

matrix: 2-dimensional vector 
matrix(1:10,ncol=2)  #everything in matrix still has to be same type

#array: more dimensions 
array(1:27, dim=c(3,3,3))
you use arrays and matrices for matrix algebra... if you are storing data, do that in data.frame

#lists: can be heterogenous
mylist <- c(1, pi,"pie")

#data frames: a special kind of list
columns are vectors
rows are a slice of a dataframe
columns all have to have the same length in dataframe

# data structures


# subsetting
use brackets 
z[1]
z[2:4]
z[c(4,2)]

sleep[rows,columns]
sleep[,c(1,3)] #this does all rows for 2 specific columns in that specific order
names <- colnames(sleep)
names[c(3,1)] #how to get specific names. ALWAYS USE C()!!!
you wanna use double brackets when you want whats IN something
so
sleep[1] will give you the numbers WITH the container they're in'
sleep[[1]] will give you JUST the numbers in the container w/o container

sleep$extra is the same as sleep[[1]]

mydf <- data.frame(x=1:10,y=3, z=c("hello","goodbye"))

##NOTES
Control+1 puts me in script 
Control+2 puts me in consol 
shift+command+C comments or uncomments highlighted code
control+enter runs a line! sweet! 
to change font go to tools -> global options