# CLI: Rscript plotting.r

num<-read.csv('numbers.csv')

pdf('plot.pdf')
plot(
    num[,1],
    num[,2], 
    type="b", 
    col="red", 
    xlab="X Axis", 
    ylab="Y Axis", 
    main="Line Graph with Points",
    ylim=c(0,350)
)
lines(
    num[,1], 
    num[,3], 
    type="b", 
    col="green", 
    pch=15
)
points(
    num[,4],
    col="blue",
    pch=18
)
legend(
    "topleft",
    legend = c("Red Data", "Green Data", "Blue Diamonds"),
    col = c("red", "green", "blue"),
    lty = c(1,1,NA),
    pch=c(NA,NA,18)
)

pdf('hist.pdf')
hist(
    num[,2], 
    main="Practice Histogram", 
    xlab="numbers", 
    col=c("orange","violet"), 
    border="white"
)
