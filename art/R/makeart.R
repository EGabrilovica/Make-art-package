make_art <- function(seed, colour) {
  library(ggplot2)

  if(is.numeric(seed)) {
    set.seed(seed)
  }

  palletes <- data.frame()
  palletes[1,1] <- "#83B692"
  palletes[1,2] <- "#F9ADA0"
  palletes[2,] <- c("#8693AB", "#BDD4E7")
  palletes[3,] <- c("#FF595E", "#FFCA3A")

  random_1 <- sample(1:1000,50)
  random_2 <- sample(1:1000,50)
  random_3 <- sample(1:1000,50)
  random_4 <- sample(1:1000,50)
  random_data <- as.data.frame(cbind(random_1, random_2, random_3, random_4))

  ggplot(data = random_data) +
    geom_polygon(mapping = aes(x = random_1, y = random_2), fill = palletes[colour,1]) +
    geom_polygon(mapping = aes(x = random_3, y = random_4), fill = palletes[colour,2]) +
    theme_void()
}

