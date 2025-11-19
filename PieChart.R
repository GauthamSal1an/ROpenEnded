library(plotrix)#for 3D pie chart

x <- c(21, 62, 10, 53)#values
label <- c("London", "New York", "Singapore", "Mumbai")

pie(x, labels = label, main = "Simple Pie Chart")#simple piechart

pie(x, labels = label, col = rainbow(length(x)), main="Rainbow pie chart")#simple flowcahrt with a title and rainbow color

total <- sum(x)
percentages <- c()

#iterating through all values
for (value in x){
  pct <- round((value/total)*100, digits = 2)
  percentages <- c(percentages, pct)
}

percentages <- paste(percentages, "%")

pie3D(x, 
      labels = percentages,
      col = hcl.colors(length(data), "Spectral"),#use the spectral color theme
)

legend(
  "topright",#position
  legend = percentages,
  fill = hcl.colors(length(data), "Spectral"),#color
  cex=0.8,
)

png("3D_pie_chart.png", width = 800, height = 600)#save 
pie3D(x, 
      labels = percentages,
      col = hcl.colors(length(data), "Spectral"),#use the spectral color theme
)

legend(
  "topright",#position
  legend = percentages,
  fill = hcl.colors(length(data), "Spectral"),#color
  cex=0.8,
)


dev.off()
