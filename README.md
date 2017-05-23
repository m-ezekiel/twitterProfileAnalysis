# Twitter Profile Analysis

This repository contains files for a social listening prototype that summarizes the network engagement and hashtag usage of a Twitter user's most recent social media messages.

The underlying processing algorithm uses regular expressions to isolate words that have been tagged with the "@" or "#" symbols and tabulates occurrence frequencies based on their appearance in the n-sized tweet corpus (in the example below, n=60).

## Setup

### Prerequisites
- [R version 3.3.3+](https://www.r-project.org)
- Latest version of [RStudio](https://www.rstudio.com)

### Installation

Open RStudio and enter the following into the interactive command line to install the [*twitteR* package](https://cran.r-project.org/web/packages/twitteR/twitteR.pdf).

```r
# Install the 'twitteR' package
install.packages("twitteR")
```

You will need a Twitter developer account to complete the next step.  If you do not yet have one, follow these [instructions](https://www.credera.com/blog/business-intelligence/twitter-analytics-using-r-part-1-extract-tweets/) before you proceed.

Open *twitterConfig.R* and enter your authentication credentials to access the Twitter rest API.

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

Now that everything is installed, open the file R Markdown file *twitterReport.Rmd*.  Enter the name of the account for which you wish to generate a report.  You may also specify the number of tweets for the algorithm to retrieve and parse by changing the numerical value of "n".

```r
# Setup
user <- "QueriumCorp"
n <- 60
```

Click "Knit HTML" to create an html document of the user's most recent n tweets.

<img src="http://i.imgur.com/klI47Xu.jpg" width="600px"/>

The final output will show the name and description of the target account along with 3 boxes containing the most frequently used hashtags, the users who were either retweeted or replied to, and the descriptions of the associated accounts ordered alphabetically.

<img src="http://i.imgur.com/UkSLQtK.png" width="900px"/>

