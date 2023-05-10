library(readr)
df<-read.csv('data/clean_data.csv')
df
# regression <- lm(Accuracy ~ PT, data = df)
# summary(regression)
summary(df)
library(vtable)
st(df)

# Some histograms 
jpeg(file="histogram2.jpeg")
hist(df$English.Proficiency,
main="English Proficiency histogram",
xlab="English Proficiency",
col='grey',
freq=FALSE)
dev.off()

jpeg(file="PT.jpeg")
hist(df$PT,
main="Perspective-taking scale histogram",
xlab="Perspective-taking scale", 
col='grey',
freq=FALSE)
dev.off()

jpeg(file="FS.jpeg")
hist(df$FS,
main="Fantasy scale histogram",
xlab="Fantasy scale",
col='grey',
freq=FALSE)
dev.off()

jpeg(file="EC.jpeg")
hist(df$EC,
main="Empathic concern scale histogram",
xlab="Empathic concern scale",
col='grey',
freq=FALSE)
dev.off()

jpeg(file="PD.jpeg")
hist(df$PD,
main="Personal distress scale histogram",
xlab="Personal distress scale",
col='grey',
freq=FALSE)
dev.off()

jpeg(file="Accuracy.jpeg")
hist(df$Accuracy,
main="Accuracy histogram",
xlab="Accuracy",
col='grey',
freq=FALSE)
dev.off()

jpeg(file="Avg.Confidence.Truth.jpeg")
hist(df$Avg.Confidence.Truth,
main="Average confidence when people select TRUE",
xlab="Average confidence",
col='grey',
freq=FALSE)
dev.off()

jpeg(file="Avg.Confidence.Lie.jpeg")
hist(df$Avg.Confidence.Lie,
main="Average confidence when people select LIE",
xlab="Average confidence",
col='grey',
freq=FALSE)
dev.off()

jpeg(file="Avg.Confidence.General.jpeg")
hist(df$Avg.Confidence.General,
main="Average confidence in general",
xlab="Average confidence",
col='grey',
freq=FALSE)
dev.off()

library(ggplot2)
ggplot(df, aes(x = Accuracy , fill = Sex)) +
    geom_bar(position = position_dodge()) +
    theme_classic()+scale_fill_manual(values = c("#00AFBB", "#E7B800", "#FC4E07"))

ggsave("AccuracyMF.jpeg",
  plot = last_plot(),
  device = NULL,
  path = NULL,
  scale = 1,
  width = NA,
  height = NA,
)

ggplot(df, aes(x = EC, fill = Sex)) +
    geom_bar(position = position_dodge()) +
    theme_classic()+scale_fill_manual(values = c("#00AFBB", "#E7B800", "#FC4E07"))

ggsave("ECMF.jpeg",
  plot = last_plot(),
  device = NULL,
  path = NULL,
  scale = 1,
  width = NA,
  height = NA,
)

ggplot(df, aes(x = PT, fill = Sex)) +
    geom_bar(position = position_dodge()) +
    theme_classic()+scale_fill_manual(values = c("#00AFBB", "#E7B800", "#FC4E07"))

ggsave("PTMF.jpeg",
  plot = last_plot(),
  device = NULL,
  path = NULL,
  scale = 1,
  width = NA,
  height = NA,
)

ggplot(df, aes(x = FS, fill = Sex)) +
    geom_bar(position = position_dodge()) +
    theme_classic()+scale_fill_manual(values = c("#00AFBB", "#E7B800", "#FC4E07"))

ggsave("FSMF.jpeg",
  plot = last_plot(),
  device = NULL,
  path = NULL,
  scale = 1,
  width = NA,
  height = NA,
)

ggplot(df, aes(x = Accuracy, fill = Country)) +
    geom_bar(position = position_dodge()) 

ggsave("AccuracyMF.jpeg",
  plot = last_plot(),
  device = NULL,
  path = NULL,
  scale = 1,
  width = NA,
  height = NA,
)



