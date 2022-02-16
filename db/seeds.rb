# This file should contain all the record creation needed to seed the database with its 
# default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database 
# with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


user2 = User.create(
  name: "Mat Diak",
  email: "mat.diak@gmail.com",
  password: "password"
)

user3 = User.create(
  name: "Sophie Gowen",
  email: "sophie.gowen@gmail.com",
  password: "password"
)

user4 = User.create(
  name: "Hadyn Stokes",
  email: "hadyn.stokes@gmail.com",
  password: "password"
)

user5 = User.create(
  name: "Cris Christensen",
  email: "cris.christensen@gmail.com",
  password: "password"
)

post1 = Post.create(
  message: "On day two of the project we spent roughly 20 minuetes in the morning talking through any issues we had, the day ahead and what we wanted to achieve. we initalised a one day sprint which enabled us to keep track of what we wanted to achieve.",
  user_id: 1
)

post2 = Post.create(
  message: "We done some self learning in the morning in order to familiarise ourself with heroku, CI and Ruby on rails, we then presented this back to the group individally to share learnings.",
  user_id: 2
)

post3 = Post.create(
  message: "In the afternoon we split into groups, one team focusing on diagraming and completing user stories, the other focusing on linking the heroku app account to the repo, we successfully completed the diagram and userstories but faced and issue with pathing the heroku app which we hope to rectify tomorrow. instead we done some wireframing in order to try and visulise what the project might look like.",
  user_id: 3
)

post4 = Post.create(
  message: "We finished the day with a short retro going over the day past and crossing checking our progress with the 1 day sprint we launched in the morning, we successfully completed nearly all of our tasks and set ourselves up nicely for the following day.",
  user_id: 4
)

post5 = Post.create(
  message: "In the afternoon we split into groups, one team focusing on diagraming and completing user stories, the other focusing on linking the heroku app account to the repo, we successfully completed the diagram and userstories but faced and issue with pathing the heroku app which we hope to rectify tomorrow. instead we done some wireframing in order to try and visulise what the project might look like.",
  user_id: 5
)

post6 = Post.create(
  message: "Morring tasks: 
  Cris: Authentication research
  Haydn: Authentication reserch, rails research
  Josh: Invite to new repo, wireframe, posts research
  Mat:Authentication reserch (CircleCI research ongoing)
  Sophie:Posts research, move user stories to new repo and Jira",
  user_id: 6
)
