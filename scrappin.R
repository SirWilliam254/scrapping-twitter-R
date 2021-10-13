```r
# scrapping
# Required packages
> library(twitteR)
> library(tidytext)
> library(pander)
# connecting to twitter
consumer_key <- "paste here"
consumer_secret <- "paste here"
access_token <- "paste here"
access_secret <- "paste here"

setup_twitter_oauth(consumer_key, consumer_secret, access_token, access_secret)
ts_twitter <- searchTwitter("#TokyoOlympics", n = 1000, lang = "en")
ts_twitter_df <- twListToDF(ts_twitter) #converting to a dataframe
write.csv(ts_twitter_df, file="tokyo.csv", row.names=FALSE)
# produce a table of 5 rows of the dataset
ts_twitter_df %>% select(screenName, created, text) %>% sample_n(5) %>% pander(.)
```
