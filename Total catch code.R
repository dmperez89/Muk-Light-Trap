library(ggplot2)
df <-read.csv("C:/Users/Danielle.Perez/Documents/2019 crabs/Kate's Light Trap/Total log.csv")
View(df)

str(df)
df$NewDate <- as.POSIXct(strptime(df$Date, "%m/%e/%y"))
View(df)

#Scatter plot 
p <- ggplot(df, aes(NewDate, No.caught))
p + ggtitle("Summer 2019 Light Trap Catch")  + xlab ("Date") + ylab("Number caught") + 
  geom_point(size=2) +(aes(colour =Species))  +  theme(text = element_text(size=18))