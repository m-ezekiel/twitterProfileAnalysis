# Filename: userTimeline_Fxn.R
# Author: (www.m-ezekiel.com) / @m_ezkiel
# Date: April 21, 2016
# Description: Parses twitter hashtags and network engagement

# ***********************************************************
# Be sure to source twitterConfig.R to access the twitter API
# if you are using this file as a standalone function.
# ***********************************************************

#source('twitterConfig.R')

userTimeline_Fxn <- function(user = "user", n = 25, replies = FALSE) {
  tweets <- userTimeline(user, n, includeRts = TRUE)
  tweet_text <- gsub("[.,?/!:;\"]", "", sapply(tweets, function(x) x$getText()))
  tweet_text <- gsub("'", " ", tweet_text)
  
  # Display date of earliest twitter message
  print(tweets[[n]]$created)
  
  if (replies == TRUE) {
    grep("@", tweet_text) -> replyIndex
    tweet_text[replyIndex] -> shortList_replies
    
    unlist(strsplit(shortList_replies, split = " ")) -> words
    grep("@", words) -> locate_replies 
    gsub("@", "", words[locate_replies]) -> Engagement
    
    output <- unique(Engagement)
    print(sort(table(Engagement), decreasing = FALSE))
  }
  
  else if (replies == FALSE) {
    grep(" #", tweet_text) -> hashIndex                       # Locate hashtags 
    tweet_text[hashIndex] -> shortList

    unlist(strsplit(shortList, split = " ")) -> tinyWords     # Split strings 
    grep("#", tinyWords) -> locate_hashtags
    tinyWords[locate_hashtags] -> Hashtags
    
    output <- unique(Hashtags)
    print(sort(table(Hashtags), decreasing = FALSE))          # Display stats 
  }
  
  return(output)
}
