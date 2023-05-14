# Regression analysis of the SHS data
# Accuracy vs PT, FS, EC and PD

# Load the data
library(stats)
library(stargazer)

data <- data.frame(read.csv("data/clean_data.csv"))
data.iri <- data$PT + data$FS + data$EC + data$PD
reg.accuracy <- lm(Accuracy ~ PT + FS + EC + PD, data=data)
reg.hel_accuracy <- lm(HEL.Accuracy ~ PT + FS + EC + PD, data=data)
reg.hel_accuracy_iri <- lm(HEL.Accuracy ~ iri, data=data)
reg.lel_accuracy <- lm(LEL.Accuracy ~ PT + FS + EC + PD, data=data)
reg.lel_accuracy_iri <- lm(LEL.Accuracy ~ iri, data=data)
reg.hel_accuracy_sex <- lm(HEL.Accuracy ~ PT + FS + EC + PD + Sex, data=data)
reg.lel_accuracy_sex <- lm(LEL.Accuracy ~ PT + FS + EC + PD + Sex, data=data)
reg.accuracy_sex <- lm(Accuracy ~ PT + FS + EC + PD + Sex, data=data)

print(summary(reg.accuracy))
print(summary(reg.hel_accuracy))
print(summary(reg.lel_accuracy))
print(summary(reg.hel_accuracy_iri))
print(summary(reg.lel_accuracy_iri))
print(summary(reg.hel_accuracy_sex))
print(summary(reg.lel_accuracy_sex))
print(summary(reg.accuracy_sex))

