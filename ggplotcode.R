
x <- 1:50; y <- g(1:50)
qplot(x, y) + geom_hline(yintercept=0.5) +
  geom_vline(xintercept = 23, linetype = 2) +
  xlab("number of people in room") +
  ylab("Prob(at least one match)")
