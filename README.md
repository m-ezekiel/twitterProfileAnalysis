# Twitter Profile Analysis Documentation

A social listening prototype for analyzing the network engagement and hashtag frequencies of a user's most recent social media updates on Twitter.

## Setup

### Prerequisites
- [R version 3.3.3+](https://www.r-project.org)
- Latest version of [RStudio](https://www.rstudio.com)

### Installation

Open RStudio and enter the following into the interactive command line to install the "Twitter" package.

```r
# Install the 'twitteR' package
install.packages("twitteR")
```

You will need a Twitter developer account to complete the next step.  If you do not yet have one, follow these [instructions](https://www.credera.com/blog/business-intelligence/twitter-analytics-using-r-part-1-extract-tweets/) before you proceed.

Open twitterConfig.R and enter your authentication credentials to access the Twitter rest API.

```r
# Filename: twitterConfig.R
# Created: April 21, 2016 
# Description: sourcefile for scripts requiring the 'twitteR' package

library("twitteR")

consumer_key <- 'XXXXXXXX'
consumer_secret <- 'XXXXXXXX'
access_token <- 'XXXXXXXX'
access_secret <- 'XXXXXXXX'
setup_twitter_oauth(consumer_key,
                    consumer_secret,
                    access_token,
                    access_secret)
```

## Getting Started

Now that everything is installed, open the file R markdown file "twitterReport.Rmd".


