# These are our chi-squared goodness of fit tests to determine whether observed
# allele frequencies differ significantly from what we expect in Hardy-Weinberg
# equilibrium. Remember, when writing a script in R, anything that is preceded
# by the pound sign/hashtag will be ignored. This is how you can leave comments
# in your script for yourself and others!

# For our population where p=0.1:

# We begin by entering our actual absolute frequencies. These numbers were 
# taken from a member of the lab staff doing the "bead shaker exercise" for you.
# The "observedfreq = c(0, 23, 77)" line tells R that these are the numbers of
# times we observed each allele combination for pp, 2pq, and qq, respectively.
# Note that "p" represents a white bead and "q" represents a red bead from here 
# on out.

observedfreq = c(0, 23, 77)

# Next, we want to tell R what our expected relative frequencies were. These are
# simply calculated from our known allele frequencies (i.e. p=0.1).
# For pp, 2pq, and qq:

expectedfreq = c(0.01, 0.18, 0.81)

# Now we want to run our chi-squared goodness of fit test!

chisq.test(
  x = observedfreq,
  p = expectedfreq
)
# Did you get a warning message right below your results after this step? Good! 
# Return to your homework assignment document to see how to fix this and for an
# explanation of why this occurred.
# NOTE: the script for the chi-squared test for p=0.7 is below.
# You will run this script just as you did the first one to get the data for that
# population (for the other bead shaker). NOTE: you will have to do the same
# "correction" after you run this test as you did in for the p=0.1 test in order
# to get the correct p-value!

#For p=0.7

observedfreq = c(48, 44, 8)        # actual absolute: (pp, pq, qq)
expectedfreq = c(0.49, 0.42, 0.09)      # expected relative: (pp, 2pq, qq)

chisq.test(
  x = observedfreq,
  p = expectedfreq 
)
