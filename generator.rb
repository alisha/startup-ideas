require 'mechanize'
require 'twitter'

startups = []

## get list of startups
mechanize = Mechanize.new
startuppage = mechanize.get('http://www.startupranking.com/top/united-states')
startuppage.search('div.name').each do |startup|
  startups.push(startup.text)
end

## retrieve nouns from words.txt
nouns = []
f = File.open(File.dirname(__FILE__) + "/words.txt", "r")
f.readlines.each do |word|
  nouns.push(word)
end
f.close

## retreive Twitter API info
f = File.open(File.dirname(__FILE__) + "/secret.txt", "r")
c_key = f.readline.strip
c_secret = f.readline.strip
a_token = f.readline.strip
a_token_secret = f.readline.strip
f.close

## tweet
tweet = startups.sample + " for " + nouns.sample

client = Twitter::REST::Client.new do |config|
  config.consumer_key        = c_key
  config.consumer_secret     = c_secret
  config.access_token        = a_token
  config.access_token_secret = a_token_secret
end

client.update(tweet)
