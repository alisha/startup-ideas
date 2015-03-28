require 'mechanize'

startups = []

## get list of startups
mechanize = Mechanize.new
startuppage = mechanize.get('http://www.startupranking.com/top/united-states')
startuppage.search('div.name').each do |startup|
  startups.push(startup.text)
end

