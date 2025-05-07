install.packages("ggplot2")
library(ggplot2)
data <- read.csv("/Users/vinitbhalerao/Desktop/R/sep crime cardiff.csv")
head(data)
summary(data)
ggplot(data, aes(x = Population.Density, y = Crime.rate, fill = Population.Density)) +
  geom_bar(stat = "identity", position = "dodge") +
  labs(title = "Crime Rates by Population density", x = "Population.Density", y = "Crime.rate") +
  theme_minimal()
ggplot(data, aes(x = factor(Population.Density), y = Crime.rate)) +
  geom_bar(stat = "identity" , width = 10) +
  labs(title = "Crime Rate by Population Density", x = "Population.Density", y = "Crime.rate") +
  theme_minimal()

# Create bins for population density
data$Pop_Density_bins <- cut(data$Population.Density, breaks = 30, labels = FALSE)  # Adjust the number of breaks as necessary

# Plot with the new bins
ggplot(data, aes(x = factor(Pop_Density_bins), y = Crime.rate)) +
  geom_bar(stat = "identity") +
  labs(title = "Crime Rate by Population Density Bins", x = "Population Density Bin", y = "Crime rate") +
  theme_minimal()
str(data$Population.Density)

data$Income.Domain.Score <- cut(data$Income.Domain.Score, breaks = 30, labels = FALSE)

ggplot(data, aes(x = factor(Income.Domain.Score), y = Crime.rate)) +
  geom_point(stat = "identity") +
  labs(title = "Crime Rate by Income domain Score", x = "Income Domain Score", y = "Crime rate") +
  theme_minimal()
str(data$Population.Density)

data$Employment.Domain.Score <- cut(data$Employment.Domain.Score, breaks = 20, labels = FALSE)

ggplot(data, aes(x = factor(Employment.Domain.Score), y = Crime.rate)) +
  geom_point(stat = "identity") +
  labs(title = "Crime Rate by Employment Domain Score", x = "Employment Domain Score", y = "Crime rate") +
  theme_minimal()