README
======

DapperNews is a HackerNews clone for intelligent and attractive people.
Ideally, these people are also well-dressed. You know, people like yourself.

It is built with the following stack (top to bottom):

    font-awesome 4
    bootstrap 3
    haml/sass
    rails 4.0.2
    ruby 2.0.0p353
    rbenv
    sqlite3

Tests are written in rspec 3, with help from factory_girl and capybara.

Because everyone on this forum will be intelligent, attractive, and
well-dressed, there will be no need for authentication or down-votes. People
are always honest, and always say intelligent things. This is by definition of
people being intelligent and attractive.  QED.

Ok, so you can tell this isn't a serious attempt despite the fact that we know
that something like DapperNews would actually devolve into the most glorious
dating site ever, thus solving one of the hardest problems known to man (and
woman, but mostly man).

I'm really just trying to get a quick refresh on the latest versions of my
favorite technologies. You have been warned.


How to Run
----------

Clone this repo, and then load up the bundle and prepare the database:

    bundle install
    rake db:migrate
    rake db:seed

Check that the tests all pass:

    rake spec

Fire up the server and off you go!


Limitations
-----------

DapperNews has extremely basic functionality, so calling it a HackerNews
"clone" is perhaps a bit generous. It's more like a stemcell that was exposed
to heavily enriched plutonium, then left to divide and grow by its own devices.
Consequently, the following disclaimers are made:

* Nothing can be deleted or edited once it's posted. This is ok, because the
  users of the site are expected to be perfect.

* Comments aren't threaded, though a parent_id column has been provided in
  anticipation of acts_as_tree. No flamewars allowed here!

* Extremely minimal attention has been given to the visual design and usability
  of the site.

* No consideration has been given to obvious performance optimizations, such as
  not reloading the entire index page when upvoting. Upvotes are, however,
  tallied inside a transaction in the rare event that you are able to use the
  site concurrently by yourself on your own machine. Good luck getting that
  past sqlite3, though.
