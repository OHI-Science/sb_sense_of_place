# Create a dictionary

library(tidyverse)
library(readr)
# Used https://relatedwords.org/relatedto and plugged in the words "nature", "ocean", "environment" and
# grabbed related words

ocean <- data.frame(word = c("ocean",
                              "beach",
                              "sea",
                              "sand",
                              "coast",
                              "island",
                              "wave",
                              "fish",
                             "whale",
                             "dolphin",
                             "pacific",
                             "crab",
                             "lobster",
                             "water",
                             "shore",
                             "marine",
                             "seawater",
                             "lagoon",
                             "slough",
                             "saltwater",
                             "underwater",
                             "tide",
                             "aquatic"))

other <- data.frame(word = c("^tree",
                            "^earth",
                            "weather",
                            "sunset",
                            "sunrise",
                            "^sun",
                            "climate",
                            "park",
                            "wildlife",
                            "view",
                            "habitat",
                            "^rock",
                            "nature",
                            "mountains",
                            "peak",
                            "canyon",
                            "pier",
                            "wharf"))

rec <- data.frame(word = c("hike",
                           "trail",
                             "hiking",
                             "camping", #i had camp but camp then grabs all campus related tweets. maybe thats ok?
                           "tent",
                           "climb",
                           "summit",
                             "fishing",
                             "sail",
                             "sailing",
                             "boat",
                             "boating",
                           "ship",
                             "cruise",
                             "cruising",
                             "bike",
                           "biking",
                           "dive",
                           "diving",
                           "surf",
                           "surfing",
                           "paddle",
                           "swim"))

#bind and save

all_words <- bind_rows(rec,ocean) %>%
  bind_rows(other)

write_csv(all_words, "data/dictionary.csv")
