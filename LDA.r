#load text mining library


library(tm)


#set working directory (modify path as needed)
setwd("data/ccusr/haoyuy/Standardised-Testing-NLP-DL/data")

#load files into corpus
#get listing of .txt files in directory
filenames <- list.files(getwd(),pattern=”*.txt”)


#read files into a character vector
files <- lapply(filenames,readLines)
 
#create corpus from vector
docs <- Corpus(VectorSource(files))