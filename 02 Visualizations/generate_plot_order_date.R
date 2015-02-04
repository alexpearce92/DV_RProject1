months <- as.vector(substr(orders.df$ORDER_DATE,6,7))
months <- data.frame(months)
ggplot(data = months) + geom_histogram(aes(x = months),na.rm=TRUE)