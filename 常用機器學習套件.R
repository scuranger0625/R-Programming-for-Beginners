
# R 常用機器學習套件範例

# 1. caret 套件 (Classification and Regression Training)
# caret 提供了統一的機器學習介面，支援多種分類和迴歸模型。
install.packages("caret")
library(caret)

# 構建線性回歸模型的簡單範例
data(mtcars)  # 使用內建數據集 mtcars
model <- train(mpg ~ ., data = mtcars, method = "lm")  # 訓練線性回歸模型
summary(model)  # 查看模型摘要

# 2. randomForest 套件
# randomForest 用於構建隨機森林模型，適合於分類和迴歸。
install.packages("randomForest")
library(randomForest)

# 訓練隨機森林模型的簡單範例
data(iris)  # 使用內建數據集 iris
model <- randomForest(Species ~ ., data = iris)  # 訓練隨機森林模型
print(model)  # 查看模型摘要

# 3. e1071 套件
# e1071 提供了支持向量機、朴素貝葉斯和 KNN 等演算法的實現。
install.packages("e1071")
library(e1071)

# 訓練支持向量機的簡單範例
model <- svm(Species ~ ., data = iris)  # 訓練 SVM 模型
summary(model)  # 查看模型摘要

# 4. xgboost 套件
# xgboost 用於構建極端梯度提升模型，適合於分類、迴歸和排序問題。
install.packages("xgboost")
library(xgboost)

# 構建極端梯度提升模型的簡單範例
data(agaricus.train, package = "xgboost")  # 加載測試數據
dtrain <- xgb.DMatrix(agaricus.train$data, label = agaricus.train$label)  # 創建 DMatrix
model <- xgboost(data = dtrain, max.depth = 2, nrounds = 2, 
                 objective = "binary:logistic")  # 訓練 xgboost 模型

# 5. h2o 套件
# h2o 是分散式機器學習平台，支援大規模數據上的深度學習、梯度提升、隨機森林等模型。
install.packages("h2o")
library(h2o)

h2o.init()  # 初始化 h2o
data <- as.h2o(iris)  # 將數據轉換為 h2o 格式
model <- h2o.gbm(y = "Species", training_frame = data)  # 訓練 GBM 模型
h2o.performance(model)  # 查看模型性能

# 6. mlr3 套件
# mlr3 是下一代機器學習框架，提供統一的建模、調整和評估介面。
install.packages("mlr3")
library(mlr3)

# 訓練分類模型的簡單範例
task <- TaskClassif$new(id = "iris", backend = iris, target = "Species")  # 創建分類任務
learner <- lrn("classif.rpart")  # 使用決策樹作為學習器
learner$train(task)  # 訓練模型
learner$model  # 查看訓練後的模型

# 7. glmnet 套件
# glmnet 用於擬合 Lasso 和 Ridge 迴歸模型，適合高維數據和特徵選擇。
install.packages("glmnet")
library(glmnet)

# 訓練 Lasso 迴歸模型的簡單範例
x <- model.matrix(mpg ~ ., mtcars)[, -1]  # 構建設計矩陣
y <- mtcars$mpg  # 目標變量
model <- glmnet(x, y, alpha = 1)  # 訓練 Lasso 模型 (alpha = 1 表示 Lasso)
plot(model)  # 繪製 Lasso 模型的係數路徑圖
