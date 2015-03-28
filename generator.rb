require 'mechanize'

startups = []

## get list of startups
mechanize = Mechanize.new
startuppage = mechanize.get('http://www.startupranking.com/top/united-states')
startuppage.search('div.name').each do |startup|
  startups.push(startup.text)
end

## retrieve nouns from words.txt
nouns = []
f = File.open("words.txt", "r")
f.readlines.each do |word|
  nouns.push(word)
end
f.close

## tweet
tweet = startups.sample + " for " + nouns.sample

