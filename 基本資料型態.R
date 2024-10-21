
# R 基本資料型態示範

# 數值型 (Numeric)
x_numeric <- 3.14
y_numeric <- 5.67

# 整數型 (Integer)
x_integer <- 10L
y_integer <- -5L

# 字符型 (Character)
x_character <- "Hello"
y_character <- "R語言"

# 邏輯型 (Logical)
x_logical <- TRUE
y_logical <- FALSE

# 複數型 (Complex)
x_complex <- 2 + 3i
y_complex <- 4 - 2i

# 顯示每種資料型態
cat("數值型 (Numeric):", x_numeric, ",", y_numeric, "\n")
cat("整數型 (Integer):", x_integer, ",", y_integer, "\n")
cat("字符型 (Character):", x_character, ",", y_character, "\n")
cat("邏輯型 (Logical):", x_logical, ",", y_logical, "\n")
cat("複數型 (Complex):", x_complex, ",", y_complex, "\n")

# 檢查變數的資料型態
cat("\n變數的資料型態:\n")
cat("x_numeric 是", class(x_numeric), "\n")
cat("x_integer 是", class(x_integer), "\n")
cat("x_character 是", class(x_character), "\n")
cat("x_logical 是", class(x_logical), "\n")
cat("x_complex 是", class(x_complex), "\n")

#數值型 (Numeric)

#用於表示連續型數字，例如小數或浮點數。
#在 R 中，默認的數字型態是數值型。
#例如：x <- 3.14，y <- 5.67

#整數型 (Integer)

#用於表示整數數值。
#整數型的數值需在數字後加上 L，以標示它為整數。
#例如：x <- 10L，y <- -5L

#字符型 (Character)

#用於表示文字或字串。
#字串用雙引號或單引號包圍。
#例如：x <- "Hello"，y <- 'R語言'

#邏輯型 (Logical)

#用於表示布林值，只有兩個可能的值：TRUE 或 FALSE。
#主要用於條件判斷和邏輯運算。
#例如：x <- TRUE，y <- FALSE

#複數型 (Complex)

#用於表示複數數值，形式為 a + bi，其中 i 代表虛數單位。
#在 R 中，用 1i 來標示虛數部分。
#例如：x <- 2 + 3i，y <- 4 - 2i
#這些資料型態構成了 R 語言處理數據的基礎，並可以通過函數如 class()、typeof() 或 is.numeric() 等來檢查變數的型態。