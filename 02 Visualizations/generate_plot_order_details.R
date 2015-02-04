a<-ggplot(data = order_details.df, aes(x = ITEM_ID)) + geom_histogram(aes(fill = ..count..),na.rm=TRUE) + scale_fill_gradient("Count", low = "white", high = "darkgreen") + scale_x_continuous(breaks=c(1:10)) + scale_y_continuous("# Customers Who Ordered Item",breaks=c(0:13))
suppressMessages(print(a))
