# Example
mt<- mtcars
mtp<-ggplot(mt,aes(factor(cyl)))
mtp + geom_bar()

######## DIAMONDS ############
summary(diamonds)

# Plot 1
dp <- ggplot(diamonds,aes(factor(clarity)))
dp + geom_bar()

# Plot 2
ggplot(data = diamonds, aes(x = factor(clarity),  fill = factor(cut))) + 
  geom_bar()

# Plot 3
ggplot(diamonds, aes(x=carat, y=price)) + geom_point()

# Plot 4
ggplot(diamonds, aes(x=carat, y=price)) + geom_point(aes(color=cut))

######## MSLEEP ##############
summary(msleep)

# Plot 5
  #ggp <- ggplot(data.frame(animals),aes(x=animals))
  # counts
  #ggp + geom_histogram(fill="lightgreen")
  # proportion
  #ggp + geom_histogram(fill="lightblue",aes(y=..count../sum(..count..)))
ggplot(msleep,aes(x=sleep_total)) + geom_histogram(fill="lightgreen")

# Plot 6
  # See https://stackoverflow.com/questions/34044725/r-split-histogram-according-to-factor-level
ggplot(msleep,aes(x=sleep_total,fill=vore))+
  geom_histogram(position="identity",binwidth=1) 

# Plot 7
  # See http://t-redactyl.io/blog/2016/03/creating-plots-in-r-using-ggplot2-part-8-density-plots.html
ggplot(msleep, aes(x = sleep_total)) + geom_density() + 
    geom_vline(xintercept = mean(msleep$sleep_total), size = 1, colour = "#FF3721",
               linetype = "dashed")

# Plot 8
ggplot(msleep, aes(x = sleep_total, fill = vore)) +
  geom_density(position="identity", alpha=0.6) +
  scale_x_continuous(name = "Total Sleep Density",
                     breaks = seq(0, 200, 25)) +
  scale_y_continuous(name = "Density") +
  ggtitle("Density plot Total Sleep") +
  theme_bw() +
  theme(plot.title = element_text(size = 14, family = "Tahoma", face = "bold"),
        text = element_text(size = 12, family = "Tahoma")) +
  scale_fill_brewer(palette="Accent")

######## FREENY ##############
summary(freeny)

# Plot 9
ggplot(freeny, aes(x = income.level, y = price.index)) + geom_line()

# Plot 10
# Lines are straight.
ggplot(freeny, aes(x = income.level, y = price.index)) + geom_line() + geom_smooth(method = "lm", se = TRUE)

######## IRIS ################
summary(iris)

# Plot 11
ggplot(iris, aes(x=Sepal.Width, y=Petal.Width)) + geom_point(aes(color=Species))

# P

