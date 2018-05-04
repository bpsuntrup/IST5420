
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

############## MDMAUD   ################
# Justification: The idea is that if a person has given in the past,
# they will probably give again.
# 
# Description:
# The Major Donor Matrix code
# The codes describe frequency and amount of
# giving for donors who have given a $100+
#   gift at any time in their giving history.
# An RFA (recency/frequency/monetary) field.
# 
# The (current) concatenated version is a nominal 
# or symbolic field. The individual bytes could separately be 
# used as fields and refer to the following: 
#   
#   First byte: Recency of Giving
# C=Current Donor
# L=Lapsed Donor
# I=Inactive Donor
# D=Dormant Donor
# 
# 2nd byte: Frequency of Giving
# 1=One gift in the period of recency
# 2=Two-Four gifts in the period of recency
# 5=Five+ gifts in the period of recency
# 
# 3rd byte: Amount of Giving
# L=Less than $100(Low Dollar)
# C=$100-499(Core)
# M=$500-999(Major)
# T=$1,000+(Top)
# 
# 4th byte: Blank/meaningless/filler
# 
# 'X' indicates that the donor is not a major donor. 
# 
# For more information regarding the RFA codes, see 
# the promotion history field definitions. 

############## GENDER ######################
# Justification: Men and women are different in so many ways, it would seem unreasonable
# not to include gender in the model.
# 
# Description:
# Gender
# M = Male
# F = Female
# U = Unknown
# J = Joint Account, unknown gender


############## ZIP ######################
# Justification: Human beings are self-segregating. Almost any other category you can
# put a person into (such as race, income, political opinion, religion) can be summarized by
# zip code. As such, to include zip code is to include a plethora of information about the
# individual.
#
# Description:
# Zipcode (a nominal/symbolic field)

############## HOMEOWNR ######################
# Justification: The assumption is that homeowners would be wealthier, and more likely to
# give. 
#
# Description:
# Home Owner Flag
# H = Home owner 
# U = Unknown

############## KIDSTUFF ######################
# Justification: Certainly anyone might buy kid stuff, but the people most likely to show
# up in this category are probably spending their money on things like daycare and college 
# tuition, and not as much on charity.
#
# Description:
# BUYS CHILDREN'S PRODUCTS (Y/N)

# Problem 5

# While there are many numeric data types included in this data set, not many of them
# are continuous strictly speaking. I will continue to make this pedantic distinction, and 
# only consider strictly continuous variables in my answer.

# I selected the following variables:
# POP90C1                     Percent Population in Urbanized Area
# ETH1                        Percent White
# HVP1                        Percent Home Value >= $200,000
# IC2                         Median Family Income in hundreds
# INCOME                      HOUSEHOLD INCOME

# The first, POP90C1, is a good proxy of political attitude, with urban people tending to be
# liberal and rural people tending to be conservative. The next four are probably highly 
# correlated, but also probably correlate to total amount of donation for possible donors. 









