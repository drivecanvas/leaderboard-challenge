BREEZY LEADERBOARD
=================

Overview
----------------
For this project, we want you to build out the following functionality for a member earnings leaderboard. We
have provided 90% of the backend API endpoints (inside of this Rails app), but you will need to build out
the javascript, html, and css to power the app. It's up to you to choose a framework or just use vanilla JS.

What is the app?
----------------
We want to show the rankings of the top drivers on our platform.
There are 3 pages to build:

* Ranking page by overall earnings, average earnings and the logged in user's stats for the past 7 days
* Breakdown of an individual driver's earnings and driving stats by day
* Breakdown of an individual driver's earnings and driving stats by hour

Available set of data:
* Basic user info
* Total earnings for the past 7 days
* Total miles driven for the past 7 days
* Date and time of the earnings
* Date and time of the miles driven

Mocks and Assets
----------------
```
http://zpl.io/Dnxun
https://invis.io/PQ4R5Q1EY
```
You may need to sign up to access these files.

Backend API
-----------

####Getting Running Locally

Clone the repo:
```
git clone https://github.com/joinbreeze/leaderboard-challenge.git
```

Install gems:
```
bundle install
```

Drop, create, load, and seed the database:
```
bundle exec rake db:drop
bundle exec rake db:create
bundle exec rake db:schema:load
bundle exec rake db:seed
```

Run the app:
```
rails s
```


Our backend API is built in Rails. All responses will come back in JSON format.
Here are the list of available endpoints:
```
GET  /api/users
GET  /api/users/:id
GET  /api/users/:user_id/driving_stats
GET  /api/users/:user_id/earnings
```

Sample of `/api/users/:id`
```json
{
  "id": 1,
  "first_name": "Marion",
  "last_name": "Matthews",
  "email": "marion.matthews@gmail.com",
  "phone_number": "6162153659",
  "previous_rank": 1,
  "car_name": "Lynetta",
  "car_color": "blue",
  "created_at": "2015-10-30T00:10:49.166Z",
  "updated_at": "2015-10-30T00:10:49.166Z",
  "total_earnings": "1393.56",
  "total_miles_driven": 341
}
```

Sample of `/api/users/:id/earnings`
```json
{
  "id": 1,
  "user_id": 1,
  "amount": "147.12",
  "earned_at": "2015-10-26T22:22:09.181Z",
  "created_at": "2015-10-30T00:10:49.191Z",
  "updated_at": "2015-10-30T00:10:49.191Z"
},
{
  "id": 2,
  "user_id": 1,
  "amount": "69.13",
  "earned_at": "2015-10-29T23:22:15.205Z",
  "created_at": "2015-10-30T00:10:49.206Z",
  "updated_at": "2015-10-30T00:10:49.206Z"
}
```

Sample of `/api/users/:id/driving_stats`
```json
{
  "id": 1,
  "miles_driven": 43,
  "user_id": 1,
  "started_at": "2015-10-27T00:31:55.197Z",
  "ended_at": "2015-10-26T09:33:48.197Z",
  "created_at": "2015-10-30T00:10:49.202Z",
  "updated_at": "2015-10-30T00:10:49.202Z"
},
{
  "id": 2,
  "miles_driven": 3,
  "user_id": 1,
  "started_at": "2015-10-25T09:33:44.208Z",
  "ended_at": "2015-10-23T19:07:58.208Z",
  "created_at": "2015-10-30T00:10:49.209Z",
  "updated_at": "2015-10-30T00:10:49.209Z"
}
```

Let's get building!
-------------------
After finishing the challenge, please host it somewhere. We host on Heroku, but please deploy to the provider of your choice.

Please contact us if you have any questions or comments. Have fun!
