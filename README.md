# Inventory Manager - The App For Managing Inventory

## Tech Stack

1. Ruby 3.0.2
2. Rails 7.0.0
3. RSpec-rails 5.0
4. Capybara 3.36
5. FactoryBot-rails, 6.2

## Installation

1. [Install technical stack](https://gorails.com/setup/)
2. Install ImageMagick and Vips
   - Mac `brew install imagemagick vips`
   - Debian/Ubuntu `sudo apt install imagemagick libvips`

## Setup

1. Pull down the the app from Github
2. Make sure you have PostgreSQL installed
3. `bin/setup`

## Running the App

1. `bin/run`

## Tests and CI

1. `bin/ci` contains all the tests and checks for the app
2. `tmp/brakeman.html` shows you all the security issues if any
