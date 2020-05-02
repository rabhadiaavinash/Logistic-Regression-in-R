
# Logistic Regression on mtcars dataset


input <- mtcars
head(mtcars)

? mtcars
str(mtcars)
View(mtcars)

input1 <- mtcars[,c("am","cyl","hp","wt")]
head(input1)
str(input1)
View(input1)



model <- glm(am~.-cyl-hp,input1,family = "binomial")
summary(model)




predic1 <- predict(model,input1, type = "response")
predic1



((table(Actualvalue=input1$am,Predictedvalue=predic1>0.5)))







