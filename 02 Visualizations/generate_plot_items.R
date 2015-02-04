a<-ggplot(items.df, aes(x = UNIT_PRICE, fill = ARTIST)) + geom_bar(width = 1,color="black",na.rm=TRUE) + scale_y_continuous("# Albums") + coord_polar()
suppressMessages(print(a))