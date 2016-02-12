MOODY101_RANDOM <- read.csv("MOODY101_RANDOM.csv")
score <- MOODY101_RANDOM$SCORE
questions <- MOODY101_RANDOM$ASKSQUESTIONS

boxplot(score~questions)

nn<-mean(neverask_null)
fn<-mean(frequentlyask_null)
rn<-mean(rarelyask_null)

temp <- (nn+rn)/2
D_null <- c(D_null,(fn-temp))
