# BioComputing Exercise 6

rm(list=ls())
setwd("~/Desktop/biocomp2018/exercise6/Biocomp-Fall2018-181005-Exercise6")
iris = read.csv("iris.csv", header = TRUE)


# Answer for part one
# Usage = set a file to a variable, pick the number of lines 
# you want, call head2(file, number)

head2 = function(file, number){
  answer = file[1:number,]
  return(answer)
}

head2(iris, 6)
head2(iris, 9)
iris[1:4,]

# Answers for question 2

# To get an understanding of what the iris data looks like
head(iris)

#print last two rows in last two columns
iris[149:150, 4:5]

# Print number of species sightings in iris (any species), 
# speciesName = setosa, virginica, vericolor
numberSpecies = function(speciesName){
  species = (iris[iris$Species == speciesName,])
  nSpecies = nrow(species)
  return(nSpecies)
}

numberSpecies("virginica") # gives #virginica
numberSpecies("versicolor") # gives #versicolor
numberSpecies("setosa") # gives #setosa

# Get rows with Sepal.Width > 3.5
# Should grab all rows where Sepal.Width is > 3,5

wideSepal = iris[iris$Sepal.Width > 3.5,]
wideSepal # check that only 3.5+ is returned

# Write .csv file of all data for setosa species
# Should grab all rows where species value is setosa and write
# it into a .csv, without the row numbers from RStudio
setosa = (iris[iris$Species == "setosa",])
write.csv(setosa, "setosa.csv", row.names = F)

# Calculate mean, minimum, and maximum Petal.Length virginica
# Grabs all petal lengths for virginica species
v.Petal.Length = (iris[iris$Species == "virginica", 3])
# mean petal length
mean(v.Petal.Length)
# minimum petal length
min(v.Petal.Length)
# maximum petal length
max(v.Petal.Length)
