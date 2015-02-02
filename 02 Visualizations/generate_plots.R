ggplot(data = customers.df) + geom_histogram(aes(x = CUSTOMER_STATE))
ggplot(items.df, aes(x = ARTIST, y = UNIT_PRICE)) + geom_point()
ggplot(data = order_details.df, aes(x = ITEM_ID)) + geom_histogram(binwidth = 1, aes(fill = ..count..))
months <- as.vector(substr(orders.df$ORDER_DATE,6,7))
months <- data.frame(months)
ggplot(data = months) + geom_histogram(aes(x = months ))

p <- ggplot(set.df, aes(x = as.Date(ORDER_DATE, "%Y-%m-%d"), y = as.Date(SHIPPED_DATE,"%Y-%m-%d"))) + geom_point(aes(color = as.factor(UNIT_PRICE)))
p + facet_wrap(~CUSTOMER_STATE)

q <- ggplot(set.df, aes(x = as.Date(ORDER_DATE, "%Y-%m-%d"), y = as.Date(SHIPPED_DATE,"%Y-%m-%d"))) + geom_point(aes(color = as.factor(TITLE)))
q + facet_wrap(~CUSTOMER_STATE)

z <- ggplot(set.df, aes(x = as.Date(ORDER_DATE, "%Y-%m-%d"), y = as.Date(SHIPPED_DATE,"%Y-%m-%d"))) + geom_point(aes(color = as.factor(ARTIST)))
z + facet_wrap(~CUSTOMER_STATE)
