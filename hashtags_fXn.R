# Filename: hashtags_fXn.R
# Author: m-ezekiel
# Date: Oct 29, 2015
#
# This program searches twitter for n instances of a given string, then runs a subquery to find particular character substrings such as #, @ to locate co-occuring hashtags and/or accounts.

library("twitteR")

source('~/Documents/r_scripts/Functions/twitterConfig.R')

hashtags <- function(query="search terms", find="#", nTweets=25, from=NULL, to=NULL) 
{
  
  # Search twitter and convert to text
  tweetVector <- searchTwitter(query, nTweets, since = from, until = to)
  tweet_text <- sapply(tweetVector, function(x) x$getText())

  # Isolate sub-query for parameter find=""
  grep(find, tweet_text) -> hashIndex
  tweet_text[hashIndex] -> shortList
  unlist(strsplit(shortList, split = " ")) -> tinyWords
  grep(find, tinyWords) -> locate_hashtags
  tinyWords[locate_hashtags] -> hashtags
  
  return(unique(hashtags))
  
}

