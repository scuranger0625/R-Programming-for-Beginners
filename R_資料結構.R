
# R 資料結構示範

# 向量 (Vector)
vec <- c(1, 2, 3, 4, 5)
char_vec <- c("a", "b", "c")
cat("向量 (Vector):", vec, "\n")
cat("字符向量 (Character Vector):", char_vec, "\n")

# 矩陣 (Matrix)
mat <- matrix(1:9, nrow = 3, ncol = 3)
cat("矩陣 (Matrix):\n")
print(mat)

# 陣列 (Array)
arr <- array(1:8, dim = c(2, 2, 2))
cat("陣列 (Array):\n")
print(arr)

# 資料框架 (Data Frame)
df <- data.frame(
  Name = c("Alice", "Bob", "Charlie"),
  Age = c(25, 30, 35),
  Gender = c("F", "M", "M")
)
cat("資料框架 (Data Frame):\n")
print(df)

# 清單 (List)
lst <- list(name = "Alice", age = 25, scores = c(90, 85, 88))
cat("清單 (List):\n")
print(lst)

# 因子 (Factor)
factor_var <- factor(c("red", "blue", "red", "green"))
cat("因子 (Factor):\n")
print(factor_var)
