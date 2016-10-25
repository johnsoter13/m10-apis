### Exercise 2 ###

# As you noticed, it often takes multiple queries to retrieve the desired information.
# This is a perfect situation in which writing a function will allow you to better structure your
# code, and give a name to a repeated task.
library(jsonlite)



# Write a function that allows you to specify an artist, and returns the top 10 tracks of that artist
TopTenSongs <- function(artist) {
  base <- 'https://api.spotify.com/v1/'
  type <- '&type=artist'
  query_url <- paste0(base, 'search?', 'q=', artist, type)
  data <- fromJSON(query_url)
  artist.id <- data$artists$items$id[1]
  
  songs_url <- paste0(base, 'aristst/', artist.id, '/top-tracks?country=US')
  songs <- fromJSON(songs_url)
  return (songs$tracks)
}
Nelly <- TopTenSongs('Nelly')

# What are the top 10 tracks by Nelly?




### Bonus ### 
# Write a function that allows you to specify a search type (artist, album, etc.), and a string, 
# that returns the album/artist/etc. page of interest


# Search albums with the word "Sermon"

