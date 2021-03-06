title: "R Course: Day1 HWK - Lily Assaad"
author: "Lily"
date: "December 11, 2014"
output: html_document

# Complete all of the items below
# Use comments where you're having trouble or questions

# 1. Read your data set into R

dat <- read.csv("/Users/lillyassaad/Documents/Grad Folders /Classes/Math Camp/longstudy.csv")

# 2. Peek at the top few rows
head(dat)

# 3. Peek at the top few rows for only a few columns
head(dat[,1:4])
same as head(dat[1:4]) because a dataframe is a list so it mainly treats columns as things in a list so # of columns becomes # of things in that dataframe so length(dataframe) with give you # of columns

# 4. How many rows does your data have?
length(dat$group)
ORRR 
nrow(dat)

# 5. Get a summary for every column
summary(dat)

# 6. Get a summary for one column
summary(dat$div_lik)
summary(dat[c("div_lik","income","gender")])

# 7. Are any of the columns giving you unexpected values?
#    - missing values? (NA)
yes, the last two columns that I don't care about, thankfully. '
summary(dat)
summary will always givey you NA
# 8. Select a few key columns, make a vector of the column names
  names <- colnames(dat[,c(3:6,8)])

# 9. Create a new data.frame with just that subset of columns
#    from #7
#    - do this in at least TWO different ways
weirddat <- dat[,c(12,13)]
X <- dat[,12]
X.1 <- dat[,13]
weirddat2<- data.frame(cbind(X,X.1))
head(weirddat2)

# 10. Create a new data.frame that is just the first 10 rows
#     and the last 10 rows of the data from #8
n <- nrow(dat)
dat2<- dat[c(1:10,(n-10):n),c(3:6,8)]

dat2<- dat[c(1:10,(nrow(dat)-10):nrow(dat)),c(3:6,8)]

# 11. Create a new data.frame that is a random sample of half of the rows.
dat3 <- dat[sample(nrow(dat), nrow(dat)/2),]

# 12. Find a comparison in your data that is interesting to make
#     (comparing two sets of numbers)
#     - run a t.test for that comparison
ttest12.1 <- t.test(income ~ gender, dat)
#     - decide whether you need a non-default test
#       (e.g., Student's, paired)
leveneTest(dat$income, dat$gender)
I need to use the welchs t because of unmet unequal variances assumption
#     - run the t.test with BOTH the formula and "vector"
#       formats, if possible
males <- dat$income[dat$gender=="male"]
females <- dat$income[dat$gender=="female"]
ttest12.2 <- t.test(males,females)
#     - if one is NOT possible, say why you can't do it


# 13. Repeat #10 for TWO more comparisons
#     - ALTERNATIVELY, if correlations are more interesting,
#       do those instead of t-tests (and try both Spearman and
#       Pearson correlations)
#     - run a t.test for that comparison
ttest13.1<- t.test(div_lik ~ gender, dat)
#     - decide whether you need a non-default test
#       (e.g., Student's, paired)
leveneTest(dat$div_lik, dat$gender)
I do not need to use the welchs t because of unmet unequal variances assumption
ttest13.2 <- t.test(div_lik ~ gender, dat, var.equal=T)

#     - run the t.test with BOTH the formula and "vector"
#       formats, if possible
males2 <- dat$div_lik[dat$gender=="male"]
females2 <- dat$div_lik[dat$gender=="female"]
ttest13.3 <- t.test(males2,females2, var.equal=T)

#-----------
  
#     - run a t.test for that comparison
ttest13.4 <- t.test(marit_happ ~ gender, dat)
#     - decide whether you need a non-default test
#       (e.g., Student's, paired)
leveneTest(dat$marit_happ, dat$gender)
I need to use the welchs t because of unmet unequal variances assumption
#     - run the t.test with BOTH the formula and "vector"
#       formats, if possible
males3 <- dat$marit_happ[dat$gender=="male"]
females3 <- dat$marit_happ[dat$gender=="female"]
ttest13.5<- t.test(males3,females3)

# 14. Save all results from #12 and #13 in an .RData file
save(ttest12.1, ttest12.2,ttest13.1,ttest13.2,ttest13.3,ttest13.4,ttest13.5, file = "Day1hwkresults_LA.RData")

# 15. Email me your version of this script, PLUS the .RData
#     file from #14
