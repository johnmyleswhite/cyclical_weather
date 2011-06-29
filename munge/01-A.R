new.york <- transform(new.york, Date = mdy(Date))
new.york <- transform(new.york, DayOfYear = yday(Date))

mean.temperature <- ddply(new.york, 'DayOfYear', function (df) {with(df, mean(Temperature))})
names(mean.temperature) <- c('DayOfYear', 'Temperature')
