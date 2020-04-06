# read in the data for the blocked EKG experiment
mydata <- read.csv(file.choose())

# display the data table
mydata

# fit a linear model to the data
model <- aov(height ~ sex + ethnicity, data = mydata)

#run the ANOVA on the model
TukeyHSD(model)

# using subset function (part 2)
fdata <- subset(mydata, sex=="f", select=height & ethnicity)
mdata <- subset(mydata, sex=="m", select=height & ethnicity)
faovdata = aov(height ~ ethnicity, data = fdata)
maovdata = aov(height ~ ethnicity, data = mdata)

TukeyHSD(faovdata)
TukeyHSD(maovdata)