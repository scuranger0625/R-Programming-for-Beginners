
# R 常用統計函數範例

# 1. 計算平均值 (Mean)
# 平均值用於計算數據集中所有數值的算術平均值。
data <- c(1, 2, 3, 4, 5)  # 建立數據向量
mean_value <- mean(data)  # 使用 mean() 函數計算平均值
cat("平均值 (Mean):", mean_value, "\n")

# 2. 計算中位數 (Median)
# 中位數是數據排序後處於中間位置的值。
median_value <- median(data)  # 使用 median() 函數計算中位數
cat("中位數 (Median):", median_value, "\n")

# 3. 計算標準差 (Standard Deviation)
# 標準差用於衡量數據的離散程度，數值越大表示數據越分散。
sd_value <- sd(data)  # 使用 sd() 函數計算標準差
cat("標準差 (Standard Deviation):", sd_value, "\n")

# 4. 計算變異數 (Variance)
# 變異數是標準差的平方，用於表示數據的變異程度。
var_value <- var(data)  # 使用 var() 函數計算變異數
cat("變異數 (Variance):", var_value, "\n")

# 5. 計算四分位數 (Quantile)
# 四分位數將數據分為四等分，用於描述數據的分佈情況。
quantiles <- quantile(data)  # 使用 quantile() 函數計算四分位數
cat("四分位數 (Quantiles):\n")
print(quantiles)

# 6. 計算最小值和最大值 (Min and Max)
# 最小值和最大值用於找出數據中的最小和最大元素。
min_value <- min(data)  # 使用 min() 函數計算最小值
max_value <- max(data)  # 使用 max() 函數計算最大值
cat("最小值 (Min):", min_value, "\n")
cat("最大值 (Max):", max_value, "\n")

# 7. 計算相關性 (Correlation)
# 相關性用於衡量兩組數據之間的線性相關程度，取值範圍為 -1 到 1。
x <- c(1, 2, 3, 4, 5)  # 第一組數據
y <- c(2, 4, 6, 8, 10)  # 第二組數據
correlation <- cor(x, y)  # 使用 cor() 函數計算相關性
cat("相關性 (Correlation):", correlation, "\n")

# 8. t 檢定 (t-test)
# t 檢定用於比較兩組數據的平均值是否存在顯著差異。
group1 <- c(5, 6, 7, 8, 9)  # 第一組數據
group2 <- c(7, 8, 9, 10, 11)  # 第二組數據
t_test_result <- t.test(group1, group2)  # 使用 t.test() 函數進行 t 檢定
cat("t 檢定 (t-test):\n")
print(t_test_result)

# 9. 卡方檢定 (Chi-Square Test)
# 卡方檢定用於檢測兩個分類變量之間的關係是否顯著。
observed <- c(10, 20, 30)  # 實際觀察值
expected <- c(15, 15, 30)  # 預期值
chi_square_test <- chisq.test(observed, p = expected / sum(expected))  # 使用 chisq.test() 函數進行卡方檢定
cat("卡方檢定 (Chi-Square Test):\n")
print(chi_square_test)

# 10. 描述性統計 (Summary)
# 描述性統計用於總結數據的基本統計信息，如最小值、最大值、四分位數和平均值等。
summary_stats <- summary(data)  # 使用 summary() 函數計算描述性統計
cat("描述性統計 (Summary):\n")
print(summary_stats)
