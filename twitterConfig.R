# Filename: twitterConfig.R
# Created: April 21, 2016 
# Description: sourcefile for scripts requiring the 'twitteR' package

library("twitteR")

# **************************************************
# To get your consumerKey and consumerSecret see the 
# twitteR documentation for instructions.
# **************************************************
consumer_key <- ''
consumer_secret <- ''
access_token <- ''
access_secret <- ''
setup_twitter_oauth(consumer_key,
                    consumer_secret,
                    access_token,
                    access_secret)
