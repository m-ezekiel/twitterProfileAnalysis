# Twitter Profile Analysis Documentation

Description: A social listening prototype for analyzing the network engagement and hashtag frequencies of a user's most recent social media updates.

## Setup

### Prerequisites
- [R version 3.3.3+](https://www.r-project.org)
- Latest version of [RStudio](https://www.rstudio.com)

### Getting Started

After you install both R and RStudio, download the files in this repository and open twitterConfig.R to enter your account credentials.

```r
# Install the 'twitteR' package
install.packages("twitter")
```




twitterConfig.R - Sourcefile to access the twitter rest API.

userTimeline_Fxn.R - Function that uses regular expressions to isolate hashtags and engagement tags.

twitterReport.Rmd - R markdown file that outputs the hashtag/engagement report as an html document.
