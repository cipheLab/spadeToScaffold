library("igraph")
library("scaffold")
library("stringr")

library("utils")
library("flowCore")
library("Biobase")

spadeToScaffold <- function(inputFile){
	print("Load file")
	data <- scaffold:::my_load(inputFile)
	data <- data[c(1:(dim(data)[1]-2)),]
	scaffold:::my_save(data, inputFile)
	print("Save file")
	print("Done")
}

spadeToScaffold.run <- function(inputPath=file.choose()){
	spadeToScaffold(inputPath)
}