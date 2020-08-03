

xmas <- read.csv("https://www.dropbox.com/s/e584pryn8evm1gz/xmas.csv?dl=1")

xmas$num.in.words <- c("and a", "two", "three", "four", "five",
                       "six", "seven", "eight", "nine", "ten",
                       "eleven", "twelve")

# num, num_word, item, verb, adjective, location
xmas$Gift.Item[-1] <- pluralize_gift(xmas$Gift.Item[-1])

xmas <- xmas %>%
  mutate(
    Full.Phrase = pmap(list(num=Day, num_word=num.in.words,
                            item=Gift.Item, verb=Verb,
                            adjective=Adjective, location=Location),
                       .f=function(num, num_word, item, verb, adjective, location) {
                         make_phrase(num, num_word, item, verb, adjective, location)
                         }))
sing_line(xmas, 2, Full.Phrase)
