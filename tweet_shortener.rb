def dictionary
  dictionary = {
    "hello" => 'hi',
    "to, two, too" => '2',
    "for, four" => '4',
    'be' => 'b',
    'you' => 'u',
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(tweet)
  tweet_array = tweet.split(" ")
  new_tweet_array = []

  tweet_array.each do |word|
    if word == "hello"
      new_tweet_array.push("hi")
    elsif word == "to"
      new_tweet_array.push("2")
    elsif word == "two"
      new_tweet_array.push("2")
    elsif word == "too"
      new_tweet_array.push("2")
    elsif word == "for"
      new_tweet_array.push("4")
    elsif word == "For"
      new_tweet_array.push("4")
    elsif word == "four"
      new_tweet_array.push("4")
    elsif word == "be"
      new_tweet_array.push("b")
    elsif word == "you"
      new_tweet_array.push("u")
    elsif word == "at"
      new_tweet_array.push("@")
    elsif word == "and"
      new_tweet_array.push("&")
    else new_tweet_array.push(word)
      end
end
  new_tweet_array.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets. each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
      if tweet.length > 140
        return word_substituter(tweet)
      else return tweet
  end
end

def shortened_tweet_truncator(tweet)
  tweet = selective_tweet_shortener(tweet)
  if tweet.length > 140
    return tweet[0...137] + "..."
  else
    return tweet
  end
end
