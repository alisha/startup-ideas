require 'mechanize'
require 'active_support/inflector'

pages = ['https://www.englishclub.com/vocabulary/nouns-uncountable-list-ab.htm', 'https://www.englishclub.com/vocabulary/nouns-uncountable-list-cd.htm', 'https://www.englishclub.com/vocabulary/nouns-uncountable-list-ef.htm', 'https://www.englishclub.com/vocabulary/nouns-uncountable-list-gh.htm', 'https://www.englishclub.com/vocabulary/nouns-uncountable-list-ij.htm', 'https://www.englishclub.com/vocabulary/nouns-uncountable-list-kl.htm', 'https://www.englishclub.com/vocabulary/nouns-uncountable-list-mn.htm', 'https://www.englishclub.com/vocabulary/nouns-uncountable-list-op.htm', 'https://www.englishclub.com/vocabulary/nouns-uncountable-list-qr.htm', 'https://www.englishclub.com/vocabulary/nouns-uncountable-list-s.htm', 'https://www.englishclub.com/vocabulary/nouns-uncountable-list-tuv.htm', 'https://www.englishclub.com/vocabulary/nouns-uncountable-list-wyz.htm']

## get list of words
mechanize = Mechanize.new

f = File.open("words.txt", "w")

pages.each do |link|
  page = mechanize.get(link)

  words = page.search('strong').drop(1)

  # strip HTML tags
  words.each do |word|
    f.puts((word.text.sub(/<\/?strong>/, '')).pluralize)
  end
end

f.close
