library(plotrix)

x <- c(21, 62, 10, 53)
label <- c("London", "New York", "Singapore", "Mumbai")

pie(x, labels = label, main = "Simple Pie Chart")

pie(x, labels = label, col = rainbow(length(x)), main="Rainbow pie chart")

pie3D(x, 
      labels = label,
      col = hcl.colors(length(data), "Spectral")
      )
