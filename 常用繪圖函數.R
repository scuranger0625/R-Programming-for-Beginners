
# R 常用繪圖函數範例

# 1. 基本折線圖 (Line Plot)
# 折線圖用於顯示數據的趨勢變化。
data <- c(2, 3, 5, 7, 11, 13, 17)  # 數據向量
plot(data, type = "o", col = "blue", xlab = "Index", ylab = "Value",
     main = "折線圖 (Line Plot)")  # 使用 plot() 函數繪製折線圖
# type = "o" 表示點和線都顯示，col 設定線條顏色，xlab 和 ylab 設定坐標軸標籤，main 設定標題

# 2. 散點圖 (Scatter Plot)
# 散點圖用於展示兩個變量之間的關係。
x <- c(1, 2, 3, 4, 5)  # X 軸數據
y <- c(2, 4, 6, 8, 10)  # Y 軸數據
plot(x, y, col = "red", xlab = "X 軸", ylab = "Y 軸", main = "散點圖 (Scatter Plot)")  # 使用 plot() 繪製散點圖

# 3. 直方圖 (Histogram)
# 直方圖用於展示數據的分佈情況。
hist_data <- c(2, 3, 5, 7, 11, 13, 17, 19, 23, 29)  # 數據向量
hist(hist_data, col = "green", xlab = "數值", ylab = "頻率",
     main = "直方圖 (Histogram)")  # 使用 hist() 繪製直方圖
# col 設定直方圖的顏色，xlab 和 ylab 設定坐標軸標籤

# 4. 條形圖 (Bar Plot)
# 條形圖用於比較不同類別之間的數據。
bar_data <- c(5, 7, 9, 4, 6)  # 數據向量
bar_labels <- c("A", "B", "C", "D", "E")  # 類別標籤
barplot(bar_data, names.arg = bar_labels, col = "purple", xlab = "類別", ylab = "數值",
        main = "條形圖 (Bar Plot)")  # 使用 barplot() 繪製條形圖
# names.arg 設定每個條的標籤

# 5. 箱型圖 (Boxplot)
# 箱型圖用於展示數據的五數概括（最小值、第一四分位數、中位數、第三四分位數、最大值）。
box_data <- c(7, 8, 12, 14, 19, 22, 25, 29, 30, 33, 35)  # 數據向量
boxplot(box_data, col = "orange", xlab = "數據分佈", main = "箱型圖 (Boxplot)")  # 使用 boxplot() 繪製箱型圖

# 6. 圓餅圖 (Pie Chart)
# 圓餅圖用於展示類別數據的比例分佈。
pie_data <- c(30, 25, 15, 20, 10)  # 數據向量（比例）
pie_labels <- c("A", "B", "C", "D", "E")  # 類別標籤
pie(pie_data, labels = pie_labels, col = rainbow(length(pie_data)), main = "圓餅圖 (Pie Chart)")  
# 使用 pie() 繪製圓餅圖，col 使用 rainbow() 設定多種顏色

# 7. 折線圖加上標記 (Line Plot with Points)
# 折線圖可以加上標記來強調特定數據點。
plot(data, type = "b", col = "cyan", xlab = "Index", ylab = "Value",
     main = "折線圖 (Line Plot with Points)")
# type = "b" 表示線和點都顯示，適合用來強調數據變化趨勢和特定數據點
