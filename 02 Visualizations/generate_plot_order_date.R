Months <- as.vector(as.integer(substr(orders.df$ORDER_DATE,6,7)))
monthly_freq <- data.frame(table(Months))
a<-ggplot(monthly_freq, aes(x=Months,fill=Freq)) + geom_bar(width = 1, color="black",na.rm=TRUE) + coord_polar() + scale_y_continuous(name = "", breaks = NULL) + scale_fill_gradient("Count", low = "yellow", high = "red")
suppressMessages(print(a))
