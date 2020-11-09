# Tagup Asset RESTful API

Backend technical challenge for Tagup Backend Engineer position

### By David Lewis

### November 6, 2020

## Description

Purpose of this project is to demonstrate coding abilities and style by creating a RESTful api with full CRUD functionality. This API consits of five routes/endpoints which are outlined later in the README. The API will support a collection of assets which will have the following attributes:

```JS
{
  "_id": id,
  "restarted_at": timestamp,
  "name": string,
  "watts": float,
  "active": boolean,
  "created_at": timestamp,
  "updated_at": timestamp
}
```

The endpoint reponses will return JSON and will only include the following fields:

```JS
{
  "_id": id,
  "restarted_at": timestamp in milliseconds,
  "name": string,
  "watts": float,
  "active": boolean,
}
```

### API Endpoints

| Route                 | Description             |
| --------------------- | ----------------------- |
| /api/list             | List all the assets     |
| /api/create           | Create an asset         |
| /api/read/:recordId   | Read a specific asset   |
| /api/modify/:recordId | Update a specific asset |
| /api/remove/:recordId | Delete a specific asset |

## Technologies Used

- Ruby on Rails
- PostgreSQL

The primary technology Ruby on Rails was chosen because of its efficient structure and ease in setting up and scaling an API. It is very strict in its MVC pattern which enables consistentcy around formatting and route creation. It is also easy to seed and modify the database which was created using PostgreSQL. I feel it has a straitforward pattern for creating a RESTful API and also ships with certain features like timestamps for every new entry to the database.

## Architecture

- Asset Model
  - app/models/asset.rb
- Asset Migration
  - db/migrate/20201107045714_create_assets.rb
  - Create assets table and specify fields and type
- Asset Controller
  - app/controllers/api/assets_controller.rb
  - Create all endpoint logic
  - list, create, show, update, destroy
  - ensure they only return requested fields
- Routes
  - config/routes.rb

## Specs

## Setup/Installation Requirements

Clone to your Desktop.
In terminal, navigate to the root directory of the project.
Recreate the database by using the following commands in terminal:

```
$ bundle
```

```
$ rails db:create
```

```
$ rails db:migrate
```

Use this command in terminal to run app on the localhost:

```
$ rails s
```

Open your browser and go to localhost:3000

## Future Improvements and Final Thoughts

Here a some other key features I would add:

- Authentication, ensure only those that have been verfied can use our API. ESPECIALLY deleting assets.
- Validation, examples might include determine if we want asset names to be of a certain length and/or watts should be limited to a certain number of decimal points

One key area I did not get to was testing. This can de done with Rspec and my plan is to create unit tests to ensure certain routes return expected results.

I also got a bit hung up on the requirement to store the timestamps as milliseconds. Ruby on Rails automatically stores these timestamps in UTC format and there a ton of options to get various information out of those timestamps. I decided to create a private method to return that timestamp as milliseconds. This method can be found in the assets controller.

## License

Licensed under the MIT License.
Copyright (c) 2020 **_David Lewis_**
