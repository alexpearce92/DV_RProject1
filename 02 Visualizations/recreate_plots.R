p <- ggplot(set.df, aes(x = as.Date(ORDER_DATE, "%Y-%m-%d"), y = as.Date(SHIPPED_DATE,"%Y-%m-%d"))) + geom_point(aes(color = as.factor(UNIT_PRICE)))
p + facet_wrap(~CUSTOMER_STATE)

q <- ggplot(set.df, aes(x = as.Date(ORDER_DATE, "%Y-%m-%d"), y = as.Date(SHIPPED_DATE,"%Y-%m-%d"))) + geom_point(aes(color = as.factor(TITLE)))
q + facet_wrap(~CUSTOMER_STATE)

z <- ggplot(set.df, aes(x = as.Date(ORDER_DATE, "%Y-%m-%d"), y = as.Date(SHIPPED_DATE,"%Y-%m-%d"))) + geom_point(aes(color = as.factor(ARTIST)))
z + facet_wrap(~CUSTOMER_STATE)
