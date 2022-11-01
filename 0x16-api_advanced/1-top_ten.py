#!/usr/bin/python3
""" Function that queries the Reddit API """
import requests


def top_ten(subreddit):
    """ Returns: top ten post titles
        or None if queried subreddit is invalid """
    
    headers = {'User-Agent', '1mole'}
    url = "http://www.reddit.com/r/{}/hot.json".format(subreddit)
    arguments = {'limit': 10}

    response = requests.get(url, headers=headers, allow_redirects=False, arguments=arguments)

    if response.status_code == 200:
        titles = response.json().get('data').get('children')
        for i in titles:
            print(i.get('data').get('title'))
    else:
        print(None)
