# Tagup Asset RESTful API

Backend technical challenge for Tagup Backend Engineer position

### By David Lewis

### November 6, 2020

## Description

Purpose of this project is to demonstrate coding abilities and style by creating a RESTful api with full CRUD functionality. This API consits of five routes/endpoints which are outlined later in the README. The API will support a collection of assets which will have the following attributes:

```JS
{
  "_id": id,
  "timestamp": timestamp,
  "name": string,
  "watts": float,
  "active": boolean,
  "creationDate": timestamp,
  "lastModificationDate": timestamp
}
```

The endpoint reponses will return JSON and will only include the following fields:

**_timestamp_** **_name_** **_watts_** **_actives_**

### API Endpoints

| Route                 | Description              |
| --------------------- | ------------------------ |
| /api/assets           | List all the assets      |
| /api/create           | Create a record          |
| /api/read/:recordId   | Read a specific record   |
| /api/modify/:recordId | Update a specific record |
| /api/remove/:recordId | Delete a specific record |

## Technologies Used

- Ruby on Rails
- PostgreSQL
- Rspec

The primary technology Ruby on Rails was chosen because of its efficient structure and ease in setting up and scaling an API. It is very strict in its MVC pattern which enables consistentcy around formatting and route creation. It is also easy to seed and modify the database which will be created using PostgreSQL. I feel it has a straitforward pattern for creating a RESTful API and also ships with certain features like timestamps for every new entry to the database.

## Architecture

- Testing
  -- Rspec
- Asset Model
- Asset Migrations
  -- Create assets table and specify fields and type
- Asset Controller
  -- Create all endpoint logic
  --- list, create, show, update, destroy
  --- ensure they only return requested fields
- Routes

## Specs

## Setup/Installation Requirements

Clone to your Desktop.
In terminal, navigate to the root directory of the project.
Recreate the database by using the following commands in terminal:

```
$ bundle
```

```
$ rake db:create
```

```
$ rake db:migrate
```

Use this command in terminal to run app on the localhost:

```
$ rails s
```

Open your browser and go to localhost:3000

## License

Licensed under the MIT License.
Copyright (c) 2020 **_David Lewis_**
