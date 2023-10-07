#1. Create a vector using : operator
#a. Sequence from -5 to 5. Write the R code and its output.Describe its output.
seq(-5,5)
operator <- c(seq(-5,5))
operator
#b. x <- 1:7. What will be the value of x?
#> x                      
#[1] 1 2 3 4 5 6 7
x <- 1:7
x

#2. Create a vector using seq() function.
#a. seq (1, 3, by = 0.2) # specify step size
# Write the R script and its output. Describe the output.
seq(1,3,0.2)
# the output starts by 1 and is increased by 0.2 until it reaches 3.

#3. A factory has a census of its workers. There are 50 workers in total. The following list shows their ages: 34, 28, 22, 36, 27, 18, 52, 39, 42, 29, 35, 31, 27,
#22, 37, 34, 19, 20, 57, 49, 50, 37, 46, 25, 17, 37, 43, 53, 41, 51, 35,
#24,33, 41, 53, 40, 18, 44, 38, 41, 48, 27, 39, 19, 30, 61, 54, 58, 26, 18.
#a. Access 3rd element, what is the value?
age <- c(34, 28, 22, 36, 27, 18, 52, 39, 42, 29, 35, 31, 27, 22, 37, 34, 19, 20, 57, 49, 50, 37, 46, 25, 17, 37, 43, 53, 41, 51, 35, 24,33, 41, 53, 40, 18, 44, 38, 41, 48, 27, 39, 19, 30, 61, 54, 58, 26, 18)
age[3]
# the value of the 3rd element is "22".
#b. Access 2nd and 4th element, what are the values?
age[c(2,4)]
#the values are 28 and 36.
#c. Access all but the 4th and 12th element is not
#included. Write the R script and its output.
age2<-age[c(-4,-12)]
age2
#> age2
#[1] 34 28 22 27 18 52 39 42 29 35 27 22 37 34 19 20 57 49 50 37 46 25 17 37 43 53
#[27] 41 51 35 24 33 41 53 40 18 44 38 41 48 27 39 19 30 61 54 58 26 18

#4. *Create a vector x <- c("first"=3, "second"=0, "third"=9). Then named the vector, names(x).
names<-c("first"=3, "second"=0, "third"=9)
names
#a. Print the results. Then access x[c("first", "third")].
#Describe the output.
#. it only displays first and third which is 3 and 9.
names[c("first", "third")]
#b. Write the code and its output.
#> names[c("first", "third")]
#first third 
#3     9 

#5. Create a sequence x from -3:2.
#a. Modify 2nd element and change it to 0;
#x[2] <- 0
#x
#Describe the output.
seq(-3,2)
y<-seq(-3,2)
y
y[2] <- 0
y
#b. Write the code and its output.
#> y[2] <- 0
#> y
#[1] -3  0 -1  0  1  2

#6. *The following data shows the diesel fuel purchased by Mr. Cruz.
#2
#Month Jan Feb March Apr May June
#Price per liter (PhP) 52.50 57.25 60.00 65.00 74.25 54.00
#Purchase–quantity(Liters) 25 30 40 50 10 45
# a. Create a data frame for month, price per liter (php)
#and purchase-quantity (liter). Write the R scripts and
#its output.
month <- c("Jan", "Feb", "March", "April", "May", "June")
price.per.ltr<-c(52.50,57.25, 60.00, 65.00, 74.25, 54.00)
purch.quant<-c(25, 30, 40, 50, 10, 45)
dataFrame<-data.frame(Month = month, price_per_ltr = price.per.ltr, purchaseQaunt = purch.quant)
DF.trans<-t(dataFrame)
DF.vert<- as.data.frame(DF.trans)
DF.vert
#b. What is the average fuel expenditure of Mr. Cruz from
#Jan to June? Note: Use ‘weighted.mean(liter, purchase)‘.
#Write the R scripts and its output.
expenditure<-weighted.mean(price.per.ltr,purch.quant)
expenditure

#7R has actually lots of built-in datasets. For example, the rivers data “gives the lengths
#(in miles) of 141 “major” rivers in North America, as compiled by the US Geologicalv Survey”.
#a. Type “rivers” in your R console. Create a vector data with 7 elements, containing the number of elements (length)
#in rivers, their sum (sum), mean (mean),
#median(median), variance(var), standard deviation(sd),
#minimum (min) and maximum (max).
rivers
dataRivers <-  c(length(rivers), sum(rivers), mean(rivers), median(rivers), var(rivers), sd(rivers), min(rivers), max(rivers))
dataRivers
#b. What are the results?
#> dataRivers
#[1]    141.0000  83357.0000    591.1844    425.0000 243908.4086    493.8708
#[7]    135.0000   3710.0000
#c. Write the R scripts and its outputs.
#rivers
#dataRivers <-  c(length(rivers), sum(rivers), mean(rivers), median(rivers), var(rivers), sd(rivers), min(rivers), max(rivers))
#dataRiversv
#[1]    141.0000  83357.0000    591.1844    425.0000 243908.4086    493.8708
#[7]    135.0000   3710.0000

#8. The table below gives the 25 most powerful celebrities and their annual pay as ranked by the editions of Forbes magazine and as listed on the Forbes.com website.

Celebs<- data.frame(powerranks = 1:25,
                    CelebNames <- c("Tom Cruise", "Rolling Stones", "Oprah Winfrey", "U2", "Tiger Woods", "Steven Spielberg",
                                    "Howard Stern", "50 Cents", "Cast of the Sopranos", "Dan Brown", "Bruce Springsteen", "Donald Trump", "Muhammed Ali", 
                                    "Paul McCartney", "George Lucas", "Elton Jhon", "David Letterman", "Phil Mickelson", "J.K Rowling",
                                    "Bradd Pit", "Peter Jackson", "Dr. Phil McGraw", "Jay Lenon", "Celine Dion", "Kobe Bryant"),
                    pay = c(67, 90, 225, 110, 90, 332, 302, 43, 52, 88, 55, 54, 55, 40, 233, 34, 40, 47, 75, 25, 39, 45, 32,40, 31) )
Celebs
#b. 
Newrank<-replace(powerranks, 19, 15)
Newpay<- replace(pay, 19, 15)
Newpay
Newrank
newTop <- data.frame(powerranks = Newrank, CelebNames,pay = Newpay)
newTop
#c.
install.packages("writexl")
library(writexl)
write_xlsx(Celebs, path = "powerranks.xlsx")
write.csv(Celebs, file = "powerranks.csv", row.names = FALSE)
#d. Access the rows 10 to 20 and save it as Ranks.RData. Write the R script and its output.
subset_data<-Celebs[10:20,]
save(subset_data, file = "ranks.RData")
print(subset_data)
#e. Describe its output.
# this script will create an Rdata file containing rows 10 to 20 from the original data frame.

#9. Download the Hotels-Vienna https://tinyurl.com/Hotels-Vienna
#a. Import the excel file into your RStudio.
#What is the R script?
install.packages("readxl")
library(readxl)
ExcelData <- read.excel("hotel-vienna.xlsx")
#b. How many dimensions does the dataset have?
#What is the R script? WHat is its output?

#c. Select columns country, neighbourhood,
#price, stars, accomodation_type, and
#ratings. Write the R script.

#d. Save the data as **new.RData to your RStudio. Write the
#R script.

#e. Display the first six rows and last six rows of the
#new.RData. What is the R script?

#10. Create a list of ten (10) vegetables you ate during your lifetime. If none, just list down.
#a. Write the R scripts and its output.
vegies <- c("okra", "Kalabasa", "Patani", "Talong", "Balatong", "Patola", "Sibuyas", "Kundol", "Kamatis")
vegies
#b. Add 2 additional vegetables after the last vegetables
#in the list. What is the R script and its output?
vegies <- append (vegies,c("Brocolli", "Labanos"),after = 10)
vegies
#c. Add 4 additional vegetables after index 5. How many
#datapoints does your vegetable list have? What is the
#R script and its output?
vegies <- append (vegies, c("Cabbage", "Sayote", "Papaya", "Petchay"), after = 5)
vegies

#d. Remove the vegetables in index 5, 10, and 15. How
#many vegetables were left? Write the codes and its
#output.
vegies <- vegies[-c(5,10,15)]
vegies
num.vegies.left <- length(vegies)
vegies
num.vegies.left
cat("Number of vegetables left", num.vegies.left,"\n")
