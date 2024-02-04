library(ggplot2)

# Create the data frame
Frequency <- c(0.6,0.3,0.4,0.4,0.2,0.6,0.3,0.4,0.9,0.2)
BP <- c(103,87,32,42,59,109,78,205,135,176)
First <- c("bad","bad","bad","bad","good","good","good","good","NA","bad")
Second <- c("low","low","high","high","low","low","high","high","high","high")
FinalDecision <- c("low","high","low","high","low","high","low","high","high","high")

df <- data.frame(Frequency, BP, First, Second, FinalDecision)

# Convert character columns to factors
df$First <- as.factor(df$First)
df$Second <- as.factor(df$Second)
df$FinalDecision <- as.factor(df$FinalDecision)

# Create side-by-side boxplot
ggplot(df, aes(x=FinalDecision, y=BP, fill=FinalDecision)) +
  geom_boxplot() +
  labs(title="Side-by-side Boxplot of Blood Pressure by Final Decision",
       x="Final Decision", y="Blood Pressure")

# Create histogram
ggplot(df, aes(x=BP)) +
  geom_histogram(binwidth=10, fill="blue", color="black") +
  labs(title="Histogram of Blood Pressure",
       x="Blood Pressure", y="Count")