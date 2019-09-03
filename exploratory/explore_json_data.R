# Load the package required to read JSON files.
library(jsonlite)
library(tidyverse)
library(readxl)

#get twitter IDs from the Crimson Hexagon output and save as .txt file
ch_data <- read_excel("./data/ch_data_03-09-2019.xlsx", skip = 1) %>%
  select(GUID)

write.table(ch_data$GUID, file = "./data/twitter_ids.txt", sep = "\t",
            row.names = FALSE, col.names = FALSE)


# Give the input file name to the function.
tweets <- stream_in(file("~/tweets.json"))

#get data we want

tweet_df <- tweets %>%
  dplyr::select(created_at, id_str, full_text, source, user, geo, coordinates, lang, retweet_count, favorite_count)

