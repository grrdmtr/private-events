# Private Events

## Quick Take

An application from [The Odin Project's](https://www.theodinproject.com/paths/full-stack-ruby-on-rails/courses/ruby-on-rails/lessons/associations) Rails curriculum that focuses on the use of ActiveRecord's associations. This project aims to build an event app similar to Eventbrite where users can create and manage events, send private invitations, and attend events hosted by other users. It teaches more about ActiveRecord associations by requiring many-to-many relationships, foreign keys and custom class names.

## How it Works

In this app, people can create User accounts with an email and password (authentication is set up through the Ruby Devise gem). These Users can then create Events which are either public (open to anybody) or private (requiring an exclusive invitation). For public events, any user can click to attend the event from the event's show page. For private events, the creator of the event can select which users to send exclusive invitations. Those users who were invited can then click to accept the invite or not.

Creators of an event can edit or delete their events as well. Technically, creators can also edit an event to turn a public event into a private event or vice versa. But any users who had already clicked to attend an event when it was public will be grandfathered in with a private invitation.

## Try It Local

* Ruby version 3.1.1
* Rails version 7.0.2.4

```ruby
$ git clone git@github.com:dm-murphy/private-events.git
$ bundle install
$ rails db:migrate
