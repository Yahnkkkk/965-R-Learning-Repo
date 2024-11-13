# Default-R project by 965
# Dependencies
install.packages(c("caTools", "glm2", "caret", "randomForest", "pROC", "corrplot", "MASS", "car", "carData", "farver"))

library(caTools)
library(glm2)
library(caret)
library(randomForest)
library(pROC)
library(corrplot)
library(MASS)
library(car)
library(farver)

# Preprocessing data
weather_data <- read.csv("data.csv")
weather_data$rain_numeric <- ifelse(weather_data$Rain == "rain", 1, 0)
# str(weather_data)

# Split data sheet
set.seed(841524)
split <- sample.split(weather_data$rain_numeric, SplitRatio = 0.7)
train_data <- subset(weather_data, split == TRUE)
test_data <- subset(weather_data, split == FALSE)

# Constructing Model & Predict & Evaluate
'model <- glm(train_data$rain_numeric ~ train_data$Temperature + 
               train_data$Pressure + train_data$Cloud_Cover + 
               train_data$Wind_Speed + train_data$Humidity, 
               data = train_data, family = binomial)'

model <- randomForest(train_data$rain_numeric ~ ., data = train_data, class.weight = c(0, 2))

predictions <- predict(model, newdata = test_data, type = "response")

confusionMatrix(as.factor(ifelse(predictions > 0.5, 1, 0)), 
                as.factor(test_data$rain_numeric))

plot(model)

roc_obj <- roc(test_data$rain, predictions)
plot(roc_obj)

# Step Model & Extract Main factor
full_model <- lm(weather_data$rain_numeric ~ weather_data$Temperature + 
                 weather_data$Pressure + weather_data$Cloud_Cover + 
                 weather_data$Wind_Speed + weather_data$Humidity, 
                 data = weather_data)

step_model <- step(full_model, direction = "both")

summary(step_model)

influencePlot(step_model)
