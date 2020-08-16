# DailyDash

DailyDash is a Single Page Application utilizing a dashboard  to provide users with information from multiple outside sources. This app was designed to help cenbtralize the information I would seek out across multiple different websites as well as allowing me to track my todos. 

DailyDash makes use of two external APIs to incorporate the following:

* Weather Data - [AccuWeather] (https://developer.accuweather.com/)
* News Data - [NewsAPI] (https://newsapi.org/)

[Frontend Repo] (https://github.com/JTSwisher/capstone_react_frontend) | [Backend Repo] (https://github.com/JTSwisher/capstone_backend_api)

## Demo
 [DailyDash walkthrough](https://youtu.be/eKzUNgVOXgU)

## Built With

* [Rails](https://rubyonrails.org/)
* [React](https://reactjs.org/)
* [Redux](https://redux.js.org/)
* [PostgreSQL](https://www.postgresql.org/)

## Getting Started

These instructions will get a local copy of DailyDash up and running on your machine.

### Prerequisites

* [Ruby] (https://www.ruby-lang.org/en/)
* [Rails] (https://rubyonrails.org/)
* [Node.js] (https://nodejs.org/en/)
* [NPM] (https://www.npmjs.com/)

### Installation
Fork and clone the [Frontend Repo] (https://github.com/JTSwisher/capstone_react_frontend) and the Backend Repo] (https://github.com/JTSwisher/capstone_backend_api) to your local machine.

#### Backend
Change directories into the backend local directory. Run bundle install to install dependencies. Ensure PostgreSQL is running on your machin, create and migrate the database.
```
$cd backend-api
$bundle install
$rails db:create
$rails db:migrate
```
Run the following command to start your local server. The backend api will be run on port:3001, if 3001 is not used you will have to adjust the URLs used in the fetch calls on the frontend.
```
$rails s -p 3001
```
#### Frontend
Change directories into the frontend local directory and run the following command to launch the app.
```
$cd react-frontend
$ npm start
```
## Contributing

Bug reports and pull requests are welcome. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## Authors

[Jeff Swisher](https://github.com/JTSwisher)

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE) file for details
