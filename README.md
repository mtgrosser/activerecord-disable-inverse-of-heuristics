activerecord-disable-inverse-of-heuristics
==========================================

Stops ActiveRecord from guessing inverse associations, as introduced by Rails 4.1

In complex existing applications, guessing inverses tends to break things, thus we disable it.

Install
-------

In your Gemfile:

```
gem 'activerecord-disable-inverse-of-heuristics'
```