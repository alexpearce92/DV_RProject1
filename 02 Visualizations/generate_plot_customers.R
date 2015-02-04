a<-ggplot(customers.df,aes(x=CUSTOMER_STATE, fill=CUSTOMER_STATE)) + geom_dotplot(na.rm=TRUE) + scale_y_continuous(name = "", breaks = NULL)
suppressMessages(print(a))