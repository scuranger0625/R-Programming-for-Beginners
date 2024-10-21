# Load necessary packages
# tibble: Provides a modern take on data frames.
# topicmodels: Functions for fitting topic models (e.g., LDA).
# dplyr: A grammar of data manipulation for data frames.
# ggplot2: For creating static graphics based on the grammar of graphics.
# jiebaRD & jiebaR: Libraries for Chinese text segmentation.
# stringr: Functions for string manipulation.
# quanteda: Framework for managing and analyzing textual data.
# tidyr: Helps create tidy data by reshaping and organizing.
# broom: Converts statistical analysis objects into tidy data frames.
install.packages(c("tibble", "topicmodels", "dplyr", "ggplot2", "jiebaRD", "jiebaR", "stringr", "quanteda", "tidyr", "broom","tidytext","tidyverse","reshape2"))  # Uncomment if not already installed
library(tidyverse)
library(quanteda)
library(topicmodels)
library(jiebaRD)
library(jiebaR)
library(ggplot2)
library(stringr)
library(tidytext)
library(reshape2)


# Create dataset
name <- c('離開的一路上', '時間走了但你沒走', '各自的模樣', '別走太遠')
lyrics <- c('背影逐漸拉開距離', '爆開的牙刷破洞的襪子', 
            '你可以感同身受對於我一往無前', '不敢看你走太遠')

class_example <- data.frame(name, lyrics, stringsAsFactors = FALSE)

# Initialize jieba worker
seg <- worker(symbol = TRUE, bylines = FALSE)

# Function to segment text
segment_text <- function(text) {
  words <- segment(text, seg)
  return(paste(words, collapse = " "))  # Combine words into a single string
}

# Apply the function to all lyrics
class_example$segmented_lyrics <- sapply(class_example$lyrics, segment_text)


######
# Define a list of stop words
stop_words <- c('的', '了', '是', '和', '在', '不', '我', '有', '這', '就')

# Function to segment and remove stop words
remove_stop_words <- function(text) {
  words <- segment(text, seg)
  filtered_words <- words[!words %in% stop_words]  # Remove stop words
  return(paste(filtered_words, collapse = " "))  # Recombine words into a single string
}

# Apply the function to all lyrics
class_example$cleaned_lyrics <- sapply(class_example$lyrics, remove_stop_words)

# Print the updated dataframe
print(class_example)
#####

# Prepare for LDA
mycorpus <- corpus(class_example$segmented_lyrics)
mycorpus <- corpus(class_example$cleaned_lyrics)

# Create Document-Feature Matrix (DFM)
dfm_counts <- dfm(tokens(mycorpus))

# Convert DFM to a format suitable for topicmodels
dtm_lda <- convert(dfm_counts, to = "topicmodels")

# Fit the LDA model
# k=2為拉出兩個主題
fitted <- LDA(dtm_lda, k = 2, method = "Gibbs", control = list(seed = 1234))

AP_topics <- tidy(fitted, matrix = "beta")

ap_top_terms <- 
  AP_topics %>%
  group_by(topic) %>%
  top_n(3, beta) %>%
  ungroup() %>%
  arrange(topic, -beta)

##### Visualize Topic model with top words 
ap_top_terms %>%
  mutate(term = reorder(term, beta)) %>%
  ggplot(aes(term, beta, fill = factor(topic))) +
  geom_col(show.legend = FALSE) +
  facet_wrap(~ topic, scales = "free") +
  coord_flip()
