#!/usr/bin/python

from random import randrange
import tweepy
from secret import *


'''
# Publish to Twitter
def tweet():
  auth = tweepy.OAuthHandler(API_KEY, API_SECRET)
  auth.set_access_token(ACCESS_TOKEN, ACCESS_TOKEN_SECRET)
  api = tweepy.API(auth)

  message = createGoodTweet(wordLines)
  try:
    api.update_status(message)
    tweeted = True
  except TweepyError:
    print "Found duplicate tweet"

tweet()
'''