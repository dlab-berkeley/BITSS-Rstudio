library(tm)

lyrics.corpus <- Corpus(DirSource("lyrics"))

lyrics.corpus <- tm_map(lyrics.corpus, content_transformer(tolower))
lyrics.corpus <- tm_map(lyrics.corpus, removePunctuation) 
lyrics.corpus <- tm_map(lyrics.corpus, removeNumbers)
lyrics.corpus <- tm_map(lyrics.corpus, removeWords, c(stopwords("english"),
                                                      'chorus', 'verse'))
lyrics.corpus <- tm_map(lyrics.corpus, stemDocument, language = "english")
