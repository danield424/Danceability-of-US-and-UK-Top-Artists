#### Preamble ####
# Purpose: Downloads and saves the data from the Spotify API
# Author: Daniel Du
# Date: 10 October 2024
# Contact: danielc.du@mail.utoronto.ca
# License: MIT
# Pre-requisites: The `tidyverse` and `spotifyr` package must be installed
# Any other information needed? 


#### Workspace setup ####
library(tidyverse)
library(spotifyr)
#### Download data ####
# Top 3 Artists - USA
sabrina_carpenter <- get_artist_audio_features("Sabrina Carpenter")
# chappell_roan <- get_artist_audio_features("Chappell Roan")
taylor_swift <- get_artist_audio_features("Taylor Swift")
# morgan_wallen <- get_artist_audio_features("Morgan Wallen")
billie_eilish <- get_artist_audio_features("Billie Eilish")
  
# Top 3 Artists - UK
ed_sheeran <- get_artist_audio_features("Ed Sheeran")
dua_lipa <- get_artist_audio_features("Dua Lipa")
adele <- get_artist_audio_features("Adele")
# sam_smith <- get_artist_audio_features("Sam Smith")
# ellie_goulding <- get_artist_audio_features("Ellie Goulding")

artists <- list(
  sabrina_carpenter = sabrina_carpenter,
  billie_eilish = billie_eilish,
  taylor_swift = taylor_swift,
  ed_sheeran = ed_sheeran,
  dua_lipa = dua_lipa,
  adele = adele
)

for (artist in names(artists)) {
  saveRDS(artists[[artist]], paste0('data/01-raw_data/', artist, ".rds"))
}




#### Save data ####
# [...UPDATE THIS...]
# change the_raw_data to whatever name you assigned when you downloaded it.
# write_csv(the_raw_data, "data/01-raw_data/.csv") 

         
