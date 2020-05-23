library(jsonlite)
#get API key from newsapi.org
NEWSAPI_KEY <- "*****"

url<-paste0("https://newsapi.org/v2/top-headlines?sources=bloomberg&apiKey=",NEWSAPI_KEY)

df<-data.frame(fromJSON(url))
print(df)
df$articles.title
df$articles.description



#everything from bloomberg
NEWSAPI_KEY <- "****"

Symbols1<-read.csv("nasdaq_tick.csv")
stock="AHT"
stock.name<-Symbols1[Symbols1$ACT.Symbol ==stock,]$Security.Name
#stock.name <- Clean_String(stock.name)
stock.name<-paste(stock.name,c("+") ,sep = "", collapse = "")

search="Abbott+Laboratories"
search=stock
url<-paste0("https://newsapi.org/v2/everything?q=",search,"&sources=bloomberg&apiKey=",NEWSAPI_KEY)

df<-data.frame(fromJSON(url))
df$articles.title
df$articles.description

