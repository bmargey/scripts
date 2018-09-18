import argparse
import urllib.request
import json
from random import shuffle

'''
A script to generate user defined number of random email addresses FOR TEST PURPOSES ONLY.
Uses external word lib from ramdomlists.com
'''

def get_words():

	url = "https://www.randomlists.com/data/words.json"
	get = urllib.request.urlopen(url).read()
	return json.loads(get)['data']

def _gen_email(dict):

	# static domain to ensure test use only!
	domain = 'test.com'
	localpart = ''

	for i in range(0,2):
		shuffle(dict)
		localpart += dict[0]

	return '@'.join([localpart, domain])

parser = argparse.ArgumentParser()
parser.add_argument(
	"count", 
	help="number of emails required", 
	nargs='?',
	const=1,
	type=int,
	default=1
)
reqd = parser.parse_args().count

# grab mini lib of words
dict = get_words()

# compose email addresses
for i in range(0,reqd):
	print(_gen_email(dict))
