# 1. Run a t-test with the sleep data set
#   a. save the values as objects/variables first,
#      then supply as arguments to t.test()
group1 <- sleep$extra[sleep$group=="1"]
group2 <- sleep$extra[sleep$group=="2"]
t.test(group1,group2)
#   b. try skipping that step and referring to the values directly
t.test(sleep$extra[sleep$group=="1"],sleep$extra[sleep$group=="2"])

# 2. Do the same thing with the "iris" data set
#    - compare sepal width
#    - all three pairwise comparisons
t.test(iris$Sepal.Width[iris$Species=="setosa"],iris$Sepal.Width[iris$Species=="versicolor"])
t.test(iris$Sepal.Width[iris$Species=="setosa"],iris$Sepal.Width[iris$Species=="verginica"])
t.test(iris$Sepal.Width[iris$Species=="verginica"],iris$Sepal.Width[iris$Species=="versicolor"])

# 3. Do the same thing again on "women" data
#    - compare the two columns
#    - (yes, this doesn't make much sense as a comparison,
#      it's just a programming exercise)
t.test(women$height,women$weight)

# 4. Re-do "sleep" t-test (#1 above) as paired
t.test(sleep$extra[sleep$group=="1"],sleep$extra[sleep$group=="2"], paired = T)

# 5. Run a true "Student's" t.test for #1
t.test(sleep$extra[sleep$group=="1"],sleep$extra[sleep$group=="2"], var.equal = T)

# 6. Try the "formula" method for t.test()
#    a. Read the help
#    b. Look at the "formula" argument
#    c. Try to use that to replicate the results from #1 above
sleep.test <- t.test(extra ~ group, sleep)
save(sleep.test, otherresult2, blabla3, file = "results.RData")

# 7. Run a Wilcoxon Signed Rank test for the comparisons
#    in #1 through #3
#    - use help.search to find a function to do this
wilcox.test(extra ~ group, sleep, WARNING =F)
wilcox.test(women$height,women$weight)
wilcox.test()

# 8. Run a correlation test on the "women" data
#    a. Pearson
#    b. Spearman
cor.test(women$height,women$weight, method = "pearson")

# 9. save all results (and only those results!) in an
#    .RData object
#    - try to think of (at least) two ways to do this
save(sleep.test, otherresult2, blabla3, file = "results.RData")

# 10. clean, comment, and save this script with your answers


# 11. Look at the format of your Homework data set
#     - find a function to read in your data
#     - needed for tonight's Homework
read.csv()