## Link:
https://onetimeapp.herokuapp.com/
(currently a work in progress!)

## Built using:

* Rails 4.3.6
* Ruby 2.3.0
* Jquery
* Ajax
* Heroku
* Html
* Css

## Gems used:

* Cloudinary
* Annotate
* Devise
* Bootstrap-sass 3.3.6

## Deployed to:
Heroku

## Models:

* Posts
* Users
* Votes

## Onetime:

Onetime is an alternative social media app inspired by Instagram, Snapchat, Twitter and Dribbble.

## Overview:

Onetime is work in progress web application based on Instagram. The idea behind it is that a         user is allowed to have one post at a time. Any given post will expire after its 24 hour life  span unless it receives likes from other users, each like on a post will extend its life by one hour. If a user makes a new post it will automatically replace the users previously uploaded post if there is one at the time.

If a user takes a particular liking to one of their uploaded posts they can add it to their profile carousel. A users profile carousel is a collection of up to 5 saved posts which is a representation of their personality.

A users profile consists of a user name login, password and profile picture.

A post will consist of an image, title, description, timestamp created, countdown until expiry, amount of liked received. ( 140 characters on the description, topics may be implemented (1 - 3 per post so that they can be searched via topics))

A user may not share a post or image via social media but they may share a link to their profile and may be prompted to do so if they:
* receive the most amounts of likes they have ever received before
* make it into the top likes
* win a competition (may be implemented based on topics etc)

Posts can be searched by:
* likes
* friends?
* location
* competitions
* topics

## Bugs:
* users can delete or edit other users posts

## Future additions:
* add user profile picture
* searching posts via location
* add profile picture carousel
* add a top likes surviving
* add competitions of they day (image topics etc and votes)?
