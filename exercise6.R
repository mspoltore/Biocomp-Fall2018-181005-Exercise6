# BioComputing Exercise 6

rm(list=ls())

# Answer for part one
# Usage = set a file to a variable, pick the number of lines you
# want, call head2(file, number)
setwd("~/Desktop/biocomp2018/exercise6")
file = scan("exercise6.txt")

head2 = function(file, number){
  first = file[1]
  last = file[number]
  answer = file[first:last]
  return(answer)
}

head2(file, 4)
head2(file, 9)

setwd("~/Desktop/biocomp2018/exercise6/Biocomp-Fall2018-181005-Exercise6")
iris = read.csv("iris.csv", header = TRUE)
head(iris)

#print last two rows in last two columns
iris[149:150, 4:5]

# Print number of species sightings in iris, 
# speciesName = setosa, virginica, vericolor
numberSpecies = function(speciesName){
  species = (iris[iris$Species == speciesName,])
  nSpecies = nrow(species)
  return(nSpecies)
}

numberSpecies("virginica")
numberSpecies("versicolor")
numberSpecies("setosa")

# Get rows with Sepal.Width > 3.5

wideSepal = iris[iris$Sepal.Width > 3.5,]
wideSepal
