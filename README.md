## Access on heroku

https://damp-hollows-50420.herokuapp.com/

Note: Heroku uses 'ephemeral' hard drive. Any images on the page do not persist after the application is restarted.

## To run locally:
Use Node v16.14.0
```
  > bundle install
  > yarn install
  > bin/rails db:create
  > bin/rails db:migrate
```

To access on http://localhost:3000/ :
```
  > bin/rails server
```

## Technologies used:
Ruby on Rails, Bootstrap, PostgreSQL, Rspec, Capybara

## Demo
---
<p style="text-align: center">
  <img src="https://i.imgur.com/zPFDSEo.gif">
</p>


## Features:
- visitors must sign up to use the app
- users can add posts with images and descriptions
- users can comment on posts
- users can like posts

## Features in development:
- chat with rooms (currently available on XXXX branch)

## Goals achieved:
- MVP
- implemented CI and CD channels
- deployed the app on Heroku

## Room for improvement
- some edges cases still need to bo considered

## User stories:
### MVP
---
```
As a social media user
So that I can share my news and views
I would like to be able to post to my feed
```
```
As a social media user
So that I can know what my friends are up to
I would like to see the date and who posted on a post
```
```
As a social media user
So that I can access the post feed
I would like to be able to sign up for AceBook with name, username, email
```
```
As a user
So that no one uses my account
I would like to have a secure password
```
```
As a social media user
So that I can post as myself 
I would like to be able to sign in
```
```
As a social media user
So that others people can't post as me
I would like to be able to sign out 
```
```
As a user who bitterly regrets a post
So that I can cahnge my mind at a later date
I would like to remove a post  I made from the feed
```

## Further Features
### Auth
---
```
As a potential user
So that I can sign up or sign in
I would like to be redirected to index / sign up page
```
```
As a potential user
So that I put an email in the right input field
I would like to be alerted if I have entered invalidly
```
```
As a potential user
So that I can have a 6-10 char password
I would like to be alerted if my password is not valid
```
```
As a user that is not signed in
So that I can access the sign in page
I would like to see a link to the sign in page
```
```
As a social media user
So that I can be sure I have signed in successfully
I would like to see a message when redirected to the posts page
```
### Posts
---
```
As a user prone to typos
So that I can look like I am not prone to typos
I would like to be able to edit my previous posts
```
```
As a social media user
So that I can see the most recent posts first
I would like to see the posts in reverse chronolgical order
```
```
As a social media user
So that I can oragnise my thoughts nicely
I would like to be able to have line breaks in my posts
```
```
As a social media user
So that I can create a visual delight
I would like to be able to add images to my posts
```
### Comments
---
```
As a social media user
So that I can share my responses
I would like to be able to comment on people's posts
```
```
As a user who spoke to soon
So that I can retract an opinion
I would like to be able to edit my previous comments
```
```
As a user who was very mistaken
So that I can remove my opinion entirely
I would like to be able to delete my previous comments
```
```
As a user 
So that I can show my appreciation
I would like to be able to like someone's comment
```
```
As a user 
So that I can know who replied when
I would like to see comments in reverse date order
```
```
As a user 
So that I can know when someone replies
I would like to be notified if someone comments on my post
```
### Likes
---
```
As a user 
So that I can show appreciation for someone's post
I would like to be able to click a like button on a post
```
```
As a user
So that I can feel validated about my life choices and opinions 
I would like to be able to see who has liked my posts
```
```
As a user 
So that I can show agreement with someon'e response
I would like to be able to click like on a comment
```
```
As a social media user 
So that I can immediatle know when I am liked
I would like to receive a notification when my thing is liked
```
```
As a social media user 
So that I can have a range of reactions
I would like to be able to love/hate/find hilarious...
```
```
As a social media user 
So that I can be fickle
I would like to be able to remove a previous like
```


## Domain model:
<p style="text-align: center">
  <img src="https://i.imgur.com/d3Puq21.jpg">
</p>

### Edge cases considered:
  - Adding a post
    - user can only add jpeg or png
  - Liking a post
    - user can only like an image once
  - Signing up
    - user can't sign up on the same email
    - user password has to be 6-10 characters long

## MVP Wireframing
---
### Sign up page
<p style="text-align: center">
  <img src="https://i.imgur.com/plxOpBK.png">
</p>

### Login page
<p style="text-align: center">
  <img src="https://i.imgur.com/tkgT5js.png">
</p>

### Main feed
<p style="text-align: center">
  <img src="https://i.imgur.com/Ktmx3bQ.png">
</p>

### Post page
<p style="text-align: center">
  <img src="https://i.imgur.com/M3UcvrZ.png">
</p>

