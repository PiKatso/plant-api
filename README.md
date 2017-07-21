# _Plants of the Pacific Northwest API_

#### _This is an API Application built using Ruby on Rails.  Started July 15, 2017_

#### By _**Kat Gifford**_

## Description

This is an API that includes data for plants of the Pacific Northwest. It includes multiple scopes listed below.

Users can access:
- GET requests plants
- POST, PATCH, PUT, DELETE requests for plants and reviews

Scopes:
- Filters plants by name
```
JSON.parse(RestClient.get 'http://localhost:3000/v1/plants?name= <search params>')
```
- Filters plants by scientific name
```
JSON.parse(RestClient.get 'http://localhost:3000/v1/plants?scientific_name= <search params>')
```
- Filters plants by plant type
```
JSON.parse(RestClient.get 'http://localhost:3000/v1/plants?plant_type= <search params>')
```
- Filters plants by random plant
```
JSON.parse(RestClient.get 'http://localhost:3000/v1/plants?random=true')
```

The application structure is outlined below.  

Models:
  - Plants

## Database Seeding

The application is currently seeded using `faker`.  It seeds 20 plants.

## Prerequisites

You will need the following things properly installed on your computer.

* [Git](https://git-scm.com/)
* [Postgres](https://www.postgresql.org/)
* [Ruby](https://www.ruby-lang.org/en/downloads/)
* [Rails](http://rubyonrails.org/)

## Installation

In your terminal:
* `git clone https://github.com/PiKatso/plant-api`
* `cd plant-api`
* `bundle install`
* Open terminal window and run `postgres`.  Leave this window open.
* In seperate terminal window:
* `bundle exec rake db:setup`
* `bundle exec rake db:test:prepare`

You can test the API in Postman.
* URL: localhost:3000/

## Calling API from another application
You can test API calls from your own application via the Rails Console.  See sample commands below for GET, PATCH, POST, and DELETE.

### Calls

```
JSON.parse(RestClient.get 'http://localhost:3000/v1/plants')
```

```
JSON.parse(RestClient.patch 'http://localhost:3000/v1/plants/1', {name: 'plant name', scientific_name: 'something scientific sounding', general: 'general plant info', leaves: 'a type of leave/needle', cones: 'cone info', ecology: 'ecology info', plant_type: 'general plant type for general identification'}
```

```
JSON.parse(RestClient.post 'http://localhost:3000/v1/plants', {name: 'plant name', scientific_name: 'something scientific sounding', general: 'general plant info', leaves: 'a type of leave/needle', cones: 'cone info', ecology: 'ecology info', plant_type: 'general plant type for general identification'}
```

```
JSON.parse(RestClient.delete 'http://localhost:3000/v1/v1/plants/1'
```

## Development server

Run `bundle exec rails s` for a dev server. Navigate to `http://localhost:3000/`. The app will automatically reload if you change any of the source files.

## Testing

This app uses RSpec and Shouldamatchers for testing.
Run `bundle exec rspec` or `rspec` in terminal to test.

## Technologies Used

* Ruby
* Rails
<!-- * JWT Gem -->
<!-- * Devise -->
* ActiveRecord
* Postgres
* Bundler
* Rake Gem
* ES6

## Known Bugs
_N/A_

## Support and contact details
_Please contact Kat at Katgiff2007@gmail.com with questions or submit a pull request for suggestions._

### License
*This software is licensed under the MIT license*
Copyright © 2017 **Kat Gifford**
