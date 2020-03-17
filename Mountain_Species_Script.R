#open the mountain species file and label the whole thing as "mountain".
#This is referred to as creating an "object".

mountain = read.csv(file.choose())

#within the object "mountain" let's call the column for altitude "alt" and the
#column for species "spp". The dollar signs tell us which "part" of our file to
#use.
alt = mountain$altitude
spp = mountain$species

#Now, let's create a plot using the data from our two columns. Let's do this by
#using the default plot function. For "type =", use ""p"" to create a graph
#with points.
plot(alt, spp, type = "p",  xlim = NULL, ylim = NULL,
     log = "", main = NULL, sub = NULL, xlab = NULL, ylab = NULL,
     ann = par("ann"), axes = TRUE, frame.plot = axes,
     panel.first = NULL, panel.last = NULL, asp = NA,
     xgap.axis = NA, ygap.axis = NA)

#Cool! But this figure can be improved. Let's change some things.
#Here, I have picked some limits for my axes. Use "c" before the parentheses
#to tell R that you are going to specify characters (numbers).
plot(alt, spp, type = "p",  xlim = c(1500,3500), ylim = c(0,25),

#This is science, so we don't want a chart title. Instead, we want a figure
#legend. This is the caption below the figure. Tell R what you want to do by
#using the "sub =" (for subtitle) and then specify your legend in quotes.

main = NULL, sub = "Figure 1. Variation in number of mountain species found at specified altitudes.",

#Let's label our axes.

xlab = "Altitude (m)", 
ylab = "Number of species")

#Finally, let's fit our data with a trendline. Use the function abline for this.
#Abline can add any line to whatever graph you have open on the plots page.
#In this case, we want to use the regression line. Try a regression first so 
#that you can see what that looks like. "lm" means we are fitting a linear model
#to our data using its slope, and we specify what we want to model over
#what, hence "(y ~ x).

lm(spp ~ alt)

#If we store the regression as an object, we can see the summary statistics by
#doing this:

regressiondata = lm(spp ~ alt)
summary(regressiondata)

#Now we just throw our regression line on the chart:

abline(lm(spp ~ alt))

#All of this was to say:

plot(alt, spp, type = "p",  xlim = c(1500,3500), ylim = c(0,25), main = NULL, sub = "Figure 1. Variation in number of mountain species found at specified altitudes.", xlab = "Altitude (m)", ylab = "Number of species")
abline(lm(spp ~ alt))
regressiondata = lm(spp ~ alt)
summary(regressiondata)