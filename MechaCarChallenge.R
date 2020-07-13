# MPG REGRESSSION ANALYSIS

lm(mpg ~ weight + angle, data=MechaCar_mpg)

summary(lm(mpg ~ weight + angle, data=MechaCar_mpg))


# SUSPENSION COIL ANALYSIS

Suspension_Coil <- read_csv("Suspension_Coil.csv")

# To illustrate the distributionof the data, I created a geom_density
ggplot(coil_data,aes(x=PSI)) + geom_density()

summary(coil_data$PSI)

aov(PSI ~ VehicleID,data=coil_data)

sd(coil_data$PSI)


#T-TEST

sample_data <- coil_data %>% sample_n(30)

t.test((sample_data$PSI),mu=mean(coil_data$PSI))