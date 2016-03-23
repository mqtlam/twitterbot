#!/usr/bin/env python
import sys
import config
from twython import Twython

# get API credentials
with open("config.json") as f:
	config = json.load(f)

api = Twython(config['apiKey'], config['apiSecret'], config['accessToken'], config['accessTokenSecret'])

# tweet string
tweet_string = "Hello World Tweet!"
api.update_status(status=tweet_string)

print("Tweeted: {}".format(tweet_string))
