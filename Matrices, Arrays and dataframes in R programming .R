---
title: "Matrices ,Arrays, list  and Dataframes in R programming"
output:
  pdf_document: default
html_document: default
word_document: default
date: "May 2022"
theme: cerulean
---
  
  <!-- For more info on RMarkdown see http://rmarkdown.rstudio.com/ -->
  
  ## Name: Mensah Patrick-
  
  ### Matrices and Arrays 
  ### Three dimensional array consisting of 24 numbers in a sequence 1:24 with dimensions 2*4*3

mat1<-1:24
dim(mat1) <- c(2,4,3) ## Generating 2 rows, 4 columns and 3 tables 
mat1 


dim(mat1)<-c(3,2,4) ## Generating 3 rows, 2 columns and 4 tables 
mat1 # changing the dimensions

## Array 
pat<- array(c(1:24),c(4,3,2)) ## Generating 4 rows, 3 columns and 2 tables 
pat

## Matrices
## Different way way of writing matrices 
mat2<-matrix(c(12,3,45,65,34,2,3,4,56,98,12,12), nrow = 3)
mat2
class(mat2)
attributes(mat2) ##the type of matrix / the dimensions 


mat3<-matrix(c(12,3,45,65,34,2,3,4,56,98,12,12), nrow = 4)
mat3
class(mat3)
attributes(mat3)


mat4<-matrix(c(12,3,45,65,34,2,3,4,56,98,12,12), byrow = T, nrow = 4)
mat4    ### Arranging by row

mat5<-matrix(c(12,3,45,65,34,2,3,4,56,98,12,12), byrow = F, nrow = 4)
mat5 

### Converting a vector to a matrix 
vector<-c(12,3,45,65,34,2,3,4,56,98,12,12)
dim(vector) <- c(4,3)
vector
is.matrix(vector)

## Transpose of the matrix 
transpose<-t(vector)
transpose




### Dataframes 

numbers<- seq(from = 1, to = 10, by = 1)
alpha<-letters[1:10]
logical<-sample(c(rep(T,5), rep(F,5)))

### Coercing all the values to most basic data types
combine<-cbind(numbers, alpha,logical)
combine
View(combine)

##Making a dataframe with these data 
new<-data.frame(combine)
new

## Another way 
newdata<-as.data.frame(cbind(numbers, alpha, logical))
newdata

# List
numbers<- seq(from = 1, to = 10, by = 1)
alpha<-letters[1:10]
logical<-sample(c(rep(T,5), rep(F,5)))

list_pat<-list(numbers, alpha, logical)
list_pat


## List within a list ####
new_list<-list(numbers, alpha, logical, list_pat)
new_list

# COERCING TYPES ######

pat<-c("a", "b", "c", 1, 2, 3,TRUE, FALSE, TRUE)
typeof(pat) #This will show a character variable 

## Coercing numeric values to Integers
pat<-seq(1,10,2) 
pat
typeof(pat)

pat_new<-as.integer(pat)
pat_new
typeof(pat_new)

## Changing characters to numeric #####
pat1<-c("1", "2", "3", "4", "5")
pat1
typeof(pat1)
pat2<-as.numeric(pat1)
typeof(pat2)

### Coercing matrix to data frames ######
mat2<-matrix(c(12,3,45,65,34,2,3,4,56,98,12,12), nrow = 3)
mat2
is.matrix(mat2) ## Asking if it is a matrix

## Making a dataframe  ######
make_dataframe<- as.data.frame(mat2)
make_dataframe
View(make_dataframe)

### Another way ######
pat_matrix<-matrix(1:28, nrow = 4)
is.matrix(pat_matrix)

pat_matrix1<-as.data.frame(pat_matrix)
pat_matrix1
is.data.frame(pat_matrix1)
is.matrix(pat_matrix1)


