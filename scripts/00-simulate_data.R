#### Preamble ####
# Purpose: Simulates artist danceability data
# Author: Daniel Du
# Date: 10 October 2024
# Contact: danielc.du@mail.utoronto.ca
# License: MIT
# Pre-requisites: The `tidyverse` package must be installed
# Any other information needed? Make sure you are in the `Spotify Analysis` rproj


#### Workspace setup ####
library(tidyverse)
set.seed(304) 

# Parameters
num_entries_per_artist <- 50  # Number of entries per artist
artists <- c("A", "B", "C")
date_range <- seq.Date(from = as.Date("2020-01-01"), by = "month", length.out = num_entries_per_artist)

# Generate data for each artist
data_list <- list()
for (artist in artists) {
  danceability <- runif(num_entries_per_artist, min = 0.4, max = 0.9)  # Random values between 0.4 and 0.9
  data_list[[artist]] <- data.frame(
    date = date_range,
    artist = artist,
    danceability = danceability
  )
}

# Combine all artist data into one data frame
danceability_df <- do.call(rbind, data_list)
row.names(danceability_df) <- NULL

# Display the data frame
print(danceability_df)
write_csv(danceability_df, "data/00-simulated_data/danceability_data.csv")
