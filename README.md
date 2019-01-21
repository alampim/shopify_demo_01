# README
A secure API end point for a bare bones marketplace application


Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization
For demonstration purposes we chose to use a SQLITE3 database. In order to query against the api we need a few things:
1) An authorized user
2) JWT token
3) API Endpoint

To create a user we can open a terminal and enter:
`rails c`
`User.create!(name: 'Edward', email: 'edward@mail.com' , password: 'secure_password' , password_confirmation: 'secure_password')`

Once we have a user we are able to make a call to the authentication controller to generate our JWT

`curl -H "Content-Type: application/json" -X POST -d '{"email":"edward@mail.com","password":"secure_password"}' http://localhost:3000/authenticate`

Congratulations! The endpoint should have returned your JWT.

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
