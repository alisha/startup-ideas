# StartupIdeas

Startups are often described as "[some existing startup] for [some new thing]" - so why not use this template to generate ideas? This Twitter bot scrapes a website for the top startups and pairs them with a list of abstract nouns (scraped once to save the poor servers).

## Make it your own

Molly White wrote [an excellent guide](blog.mollywhite.net/twitter-bots-pt2/) to making Twitter bots. Follow the "Create the Twitter app" section, and then create `secret.txt` with the following:

```
[CONSUMER_KEY]
[CONSUMER_SECRET]
[A_TOKEN]
[A_TOKEN_SECRET]
```

Replace [item] with the actual item.

Then, go into the `startup-ideas` folder and run:

```
ruby nounFinder.rb
ruby generator.rb
```
