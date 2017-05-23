# Twitter Profile Analysis

The files contained in this repository will generate an html document with a summary of a user's most frequent hashtags along with descriptions of public user accounts with which they have either replied to or retweeted.


## Setup

### Prerequisites
- [R version 3.3.3+](https://www.r-project.org)
- Latest version of [RStudio](https://www.rstudio.com)

### Installation

Open RStudio and enter the following into the interactive command line to install the "twitteR" package.

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

