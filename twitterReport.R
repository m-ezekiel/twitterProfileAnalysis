---
title: "Twitter Hashtag and Engagement Report"
author: "(m-ezekiel.com) // @m_ezkiel"
date: "Day/Month/Year"
output: html_document
---

```{r, echo=FALSE, message=FALSE}
# Source files
source('twitterConfig.R')
source('userTimeline_Fxn.R')
```

```{r, echo=FALSE}
# Setup
user <- "cnn"
n <- 15
```


## <span style="color:#336699">`r paste0("@", user, " :: ", n, " most recent tweets.")`</span>
#### <span style="color:#336699">`r getUser(user)$description`</span>

##### *Note that these statistics include both retweets and replies which have been posted to the user's timeline.

```{r, echo=FALSE}
# Hashtags table
Hashtags <- userTimeline_Fxn(user, n, replies = FALSE)
# Engagement table
Engagement <- sort(userTimeline_Fxn(user, n, replies = TRUE))

# Engagement user descriptions
for(i in 1:length(Engagement)) {
  print(paste0("@", Engagement[i]))
  try(print(getUser(Engagement[i])$description))      # Use try to skip errors
  print(NULL)
}
```


