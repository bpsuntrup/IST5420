
# Problem 1
donors <- read.csv("/usr/local/home/bpsxv3/IST5420/Assignments/hw6/cup98LRN.txt")

# Problem 2

# I handle missing values by simply tossing them out.
targetb <- donors$TARGET_B
not_missings <- which(!is.na(targetb))
num_donated <- sum(targetb[not_missings])
proportion <- num_donated / (length(not_missings))
proportion # is 0.05267802

library(ggplot2)
df <- data.frame(response=c("donated", "not_donated", "NA"),
                 number=c(num_donated, length(not_missings), length(targetb) - length(not_missings)))
p2<-ggplot(data=df, aes(x=response, y=number)) +
  geom_bar(stat="identity")
p2

# Problem 3
summary(donors$TARGET_D)
hist(donors$TARGET_D)

# Problem 4

# Load the party package. It will automatically load other dependent packages.
library(party)

# Create the input data frame.
input.dat <- readingSkills[c(1:105),]

# Give the chart file a name.
png(file = "decision_tree.png")

# Create the tree.
output.tree <- ctree(
  nativeSpeaker ~ age + shoeSize + score, 
  data = input.dat)

# Plot the tree.
plot(output.tree)

# Save the file.
dev.off()