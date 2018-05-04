# First read in the data
df <- read.csv("~/IST5420/Project/cup98LRN.txt")
df$TARGET_B <- 1-2*(df$TARGET_B) # Make this 1 and -1
# Include only categorical variables and response variable
cat_df <- df[,c("OSOURCE","TCODE","STATE","ZIP","PVASTATE","RECINHSE","RECPGVG","RECP3","MDMAUD","DOMAIN","CLUSTER","AGEFLAG","HOMEOWNR","CHILD03","CHILD07","CHILD12","CHILD18","GENDER","DATASRCE","MALEMILI","MALEVET","VIETVETS","WWIIVETS","LOCALGOV","STATEGOV","FEDGOV","MAJOR","WEALTH2","GEOCODE","COLLECT1","VETERANS","BIBLE","CATLG","HOMEE","PETS","CDPLAY","STEREO","PCOWNERS","PHOTO","CRAFTS","FISHER","GARDENIN","BOATS","WALKER","KIDSTUFF","CARDS","PLATES","LIFESRC","PEPSTRFL","HPHONE_D","CLUSTER2","GEOCODE2", "TARGET_B")]

# Get rid of data that doesn't has NA as response variable.
clean_cat_df <- cat_df[which(!is.na(cat_df$TARGET_B)),]

# Then get a random sample of rows to work with
n <- 5000
sdf <- clean_cat_df[sample(nrow(clean_cat_df), n), ]

# Also get a random sample to verify against
m <- 500
vdf <- clean_cat_df[sample(nrow(clean_cat_df), m), ]


# Model 1: The reduced model. Find the most likely value of the response variable
0 # most common answer, right more than 93% of time
sum(1 - sdf$TARGET_B)/n

# Now build a neural network model based on this sample

# library(nnet)

# m2 <- nnet(TARGET_B ~ OSOURCE + TCODE + STATE + ZIP, data = sdf, na.action=na.omit, size = 1, MaxNWts = 20000)
# p <- predict(m2,vdf[1:m,c("OSOURCE","TCODE","STATE","ZIP")])

# Now make a glm

m1 <- glm(TARGET_B ~ STATE, data = sdf, na.action=na.omit)
round <- function(number) {
  l <- length(number)
  for(i in 1:l){
  if (number[i] >= 0){ number[i] <- 1}
  else number[i] <- -1
  }
  return (number)
}
sum(round(predict(m1,vdf)) == vdf$TARGET_B)/m 

# vs

sum(vdf$TARGET_B == 1)/m # reduced model

# Another model, including another factor

m2 <- glm(TARGET_B ~ STATE + HOMEOWNR, data = sdf, na.action=na.omit)
sum(round(predict(m2,vdf)) == vdf$TARGET_B)/m 


# Now we will cycle through the models and see if we can make any improvement at all
variables = c("OSOURCE","TCODE","STATE","ZIP","PVASTATE","RECINHSE","RECPGVG","RECP3","MDMAUD","DOMAIN","CLUSTER","AGEFLAG","HOMEOWNR","CHILD03","CHILD07","CHILD12","CHILD18","GENDER","DATASRCE","MALEMILI","MALEVET","VIETVETS","WWIIVETS","LOCALGOV","STATEGOV","FEDGOV","MAJOR","WEALTH2","GEOCODE","COLLECT1","VETERANS","BIBLE","CATLG","HOMEE","PETS","CDPLAY","STEREO","PCOWNERS","PHOTO","CRAFTS","FISHER","GARDENIN","BOATS","WALKER","KIDSTUFF","CARDS","PLATES","LIFESRC","PEPSTRFL","HPHONE_D","CLUSTER2","GEOCODE2")

for (v in variables){
  f <- paste("TARGET_B ~",v)
  f <- as.formula(f)
  try(model <- glm(f, data = sdf, na.action=na.omit), silent=TRUE)
  try(
  print(sum(round(predict(model,vdf)) == vdf$TARGET_B)/m),silent=FALSE)
}

# That didn't really work, so I am going to try something different
sum(vdf$TARGET_B == 1)/m # reduced model

m3 <- glm(TARGET_B ~ STATE + HOMEOWNR + GENDER, data = sdf, na.action=na.omit)
sum(round(predict(m3,vdf)) == vdf$TARGET_B)/m 

m4 <- glm(TARGET_B ~  HOMEOWNR + GENDER + MALEVET + VIETVETS + WWIIVETS + LOCALGOV + STATEGOV + FEDGOV + MAJOR + WEALTH2, data = sdf, na.action=na.omit)
sum(round(predict(m4,vdf)) == vdf$TARGET_B)/m 

# So without getting any success with our GLM, we will try the following
library(rpart)
m5 <- rpart(TARGET_B ~  HOMEOWNR + GENDER + MALEVET + VIETVETS + WWIIVETS + LOCALGOV + STATEGOV + FEDGOV + MAJOR + WEALTH2,data = sdf, method="class")
predict(m5,vdf)
# We will validate our models for their ability to predict TARGET_B. The measure is 
# proportion of correct predictions
