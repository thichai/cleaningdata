library(jpeg)
img <- readJPEG("data/getdata-jeff.jpg", native=TRUE)
quantile(img, probs=c(0.3, 0.8))