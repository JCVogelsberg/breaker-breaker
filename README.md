BreakerBreaker!
===

BreakerBreaker! is a text-messaging app that allows a user to send a text message through the internet.
It uses a Rails back-end, and the Twilio API to handle SMS messaging. Styling is with Twitter Bootstrap.

* * *

The app is live on Heroku at http://breakerbreaker321.herokuapp.com

* * *

To set up on your own machine:

-Clone the repo on your local machine `$ git clone https://github.com/JCVogelsberg/BreakerBreaker-.git`

-bundle gemfile

-Clone the database from the schema `$ rake db:create:all`

-Populate the database `$ rake db:migrate`

-Open a rails Server `$ rails s`

-Open the app in the browser `localhost:3000/`

