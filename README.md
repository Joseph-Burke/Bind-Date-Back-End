# Chez Toi: API

The **Chez Toi API** is Rails-based Application Programmatic Interface that serves data on houses and house viewings. It was built as a back-end to the [Chez Toi App](https://github.com/Joseph-Burke/Chez-Toi-App), but is also available for use by any other front-end app that could make use of the data. 

The API's endpoints are as follows:

1) The primary endpoint is at **'/'**. This endpoint fetches a JSON object with three keys, one for each of the API's resources: **"users"**, **"houses"** and **"viewings"**. This endpoint is particularly useful for reducing the need for a front-end app to make multiple API calls.

2) Each of the API's three resources have a full set of controller actions: index, create, show, update, destroy. These are available through RESTful routes: GET POST PATCH DELETE. For a full reference of the endpoints for these actions, take a look at the screenshot of `rails routes` included below.

3) The final endpoint of note is the additional endpoint made available to access a house's associated image, which is of the following form: `/houses/:id/picture`. A GET request to this location will redirect to the image associated with the house indicated by the `:id` parameter.

<!-- 
INCLUDE A SCREEENSHOT OF RAILS ROUTES HERE

![screenshot](./screenshots/screenshot-recipe.png) 

-->

## Live Demo

<!-- To jump right into the project, visit the [Live Demo](https://eats-shoots-leaves.herokuapp.com/), deployed on Heroku. -->

## Built With

- **[Ruby on Rails](https://rubyonrails.org/)** - Ruby on Rails, initialised with --api flag for a slim, back-end build: `rails new <PROJECT_NAME> --api`. Rails comes with **[Active Storage](https://edgeguides.rubyonrails.org/active_storage_overview.html)** out of the box, which this API uses for storing images.
- **[PostgreSQL](https://www.postgresql.org/)** - PostgreSQL was used as the API's database, rather than Rails' default MySQL.
- Linted with **[Rubocop](https://rubocop.org/)**

## Local Setup

## Setup Instructions

1. Open a Terminal and navigate to the location in your system where you would like to download the project. **New to Terminal? [Learn here](https://www.freecodecamp.org/news/conquering-the-command-line-f85f5e46c07c/).**

2. Enter the following line of code to clone this repository:

`git clone git@github.com:Joseph-Burke/Chez-Toi-API.git`

3. Now that the repository has been cloned, navigate inside it using `cd Chez-Toi-API`.

4. The project's dependencies are managed by bundler. The details of this project's dependencies can be found in `Gemfile`. To install them, enter the following line of code in the Terminal.

`bundle install`

5. To initialise the server, simply run:

`rails server` or `rails s`

6. Once the server is running, HTTP requests can be made to its location, (normally http://localhost:3000/). Either visit this address in the browser or use a tool like **Postman(https://www.postman.com/)** or **curl(https://curl.se/)**.

## Author

👤 **Joe Burke**

- Github: [@Joseph-Burke](https://github.com/Joseph-Burke)
- Twitter: [@__joeburke](https://twitter.com/__joeburke)
- Linkedin: [Joseph Burke](https://www.linkedin.com/in/--joeburke/)

## 🤝 Contributing

Contributions, issues and feature requests are always welcome!

Drop me a line through any of the channels listed above or head directly to the [issues page](issues/).

## Show your support

Hey! Give this project a ⭐️! It costs nothing :)

## Acknowledgments

- This project was built as part of the Microverse Web Development course, which you can learn more about [here](https://www.microverse.org/).

## 📝 License

This project is [MIT](lic.url) licensed.
