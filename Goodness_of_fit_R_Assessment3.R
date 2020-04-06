# This is an example of how to perform a chi-sqaured goodness of fit test in R.
# We begin by entering our actual absolute frequencies.
# "Actual" means ~observed."Absolute" means ~using whole numbers (as opposed to 
# a percentage.
# The "observedfreq = c(0, 0)" line tells R that these are our observations for
# each category. Look at the 2019 chytrid datasheet that I sent you to come up 
# with the number of individuals found to be infected and not infected and 
# replace the (0, 0) with the numbers from our real data.

observedfreq = c(0, 0)

# Next, we want to tell R what our expected relative frequencies were. Find these
# in the paper that I linked into your Assessment 3 document.
# "Expected" means what it says; "relative" means ~as a percentage. For us, these
# numbers will correspond to the expected percentages of infected and non-infected
# individuals. Edit the (0.00, 0.00) with the prevalence for all amphibians in
# the region and the difference between 100 and that (i.e. the non-infected
# prevalence)

expectedfreq = c(0.00, 0.00)

# Now we just run our chi-squared goodness of fit test!

chisq.test(
  x = observedfreq,
  p = expectedfreq
)
# You will probably get a warning after you do this test because one of our 
# expected relative frequencies is very low. If you were to run this test in
# Excel, you would also get a different p-value. Why? R for some reason has a 
# cut-off value that only allows p-values to go so low to.