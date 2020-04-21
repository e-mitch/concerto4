# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
Testing specifications for users:
username: string
- username must be present
- username must be > 5 characters
- username must be < 25 characters

Testing specifications for profiles:
name: string
email: string
bio: string
interests: string

- name must be present:
- name must be > 4 characters
- name must be < 100 characters
- email must be present
- email must < 106 characters
- bio must be present
- bio must be > 30 characters
- bio must be < 10000 characters
- interests must be present
- interests must be > 30 characters
- interests must be < 10000 characters


Testing specifications for skills:
variety: string
genre: string
experience: integer
details: string

- variety must be a string
- variety must be > 2 characters
- variety must be < 30 characters
- genre must be a string
- genre must be > 2 characters
- genre must be < 30 characters
- experience must be present
- experience must not be negative
- details must be present
- details must be > 14 characters
- details must be < 400 characters

