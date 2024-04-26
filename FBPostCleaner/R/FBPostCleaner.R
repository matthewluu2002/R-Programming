FBPostCleaner = function(text){
  text <- gsub("\\p{So}|\\p{Cn}", "", text, perl=TRUE)

  abbreviations <- c("btw", "lol", "brb", "idk", "omg", "rofl", "bff", "jk", "ily", "ty", "np", "gg", "imo", "imho")
  full_form <- c("by the way", "laugh out loud", "be right back", "i don't know", "oh my god", "rolling on the floor laughing", "best friends forever", "just kidding", "i love you", "thank you", "no problem", "good game", "in my opinion", "in my humble opinion")
  for(i in 1:length(abbreviations)){
    text <- gsub(paste0("\\b", abbreviations[i], "\\b"), full_form[i], text)
  }

  text <- gsub("@\\[\\d+:\\d+\\]", "", text) # Remove Facebook mentions
  text <- gsub("\\[[^]]+\\]\\(\\/[^)]+\\)", "", text) # Remove Facebook page tags
  text <- gsub("@\\w+|#\\w+|https?://.+|[^\x01-\x7F]|[[:punct:]]|\n|^\\s+|\\s+$|[ |\t]+", " ", text)

  return(text)
}
