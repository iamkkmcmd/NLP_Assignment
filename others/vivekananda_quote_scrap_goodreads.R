# load the library
library(rvest)
library(httr)
library(stringr)
library(dplyr)

# making series of urls (for pegination)
urls <- paste0('https://www.goodreads.com/author/quotes/80592.Vivekananda?page=', 1:29)

# ---------------------------------------------------------------------------------------
# Lets retrive information from one page
response <- GET(url = urls[1])
status_code(response)
html_content <- content(response)

# let's dive into the page using selector and grad the necessary things
html_content %>% 
  html_nodes(xpath = '//div[@class="quoteText"]/text()[1]') %>% 
  html_text(trim = T)
# extract likes
html_content %>% 
  html_nodes(xpath = '//a[@class = "smallText"]') %>% 
  html_text() %>% 
  str_extract("\\d+")

html_content %>% 
  html_nodes(xpath = '//div[@class="greyText smallText left"]') %>% 
  html_text(trim = T)
# ---------------------------------------------------------------------------------------

# Let's extract from all pages
quotetion <- c()
likes <- c()
step <- 0
for (url in urls){
  # read the html page
  html_content <- read_html(url)
  # quote
  q <- html_content %>% 
    html_nodes(xpath = '//div[@class="quoteText"]/text()[1]') %>% 
    html_text(trim = T)
  quotetion <- c(quotetion, q)
  # like
  l <- html_content %>% 
    html_nodes(xpath = '//a[@class = "smallText"]') %>% 
    html_text() %>% 
    str_extract("\\d+")
  likes <- c(likes, l)
  # take some time gap 
  Sys.sleep(5)
  cat("Page", step+1, ": Done \n")
  step <- step + 1
}

# make the dataframe
data <- data.frame("quote" = quotetion, "like" = likes)
# save the data in csv
write.csv(data, './vivekananda_quote.csv')
View(data)







