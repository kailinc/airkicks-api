# API for Air Kicks

Currently, the API allows for creating a social media platform for users to share their shoes and collections to the Internet.

# API End Points

Verb   | URI Pattern                     | Controller#Action
------ | ------------------------------- | ---------------------------------
POST   | `/sign-up`                      | `users#signup`
POST   | `/sign-in`                      | `users#signin`
PATCH  | `/change-password/:id`          | `users#changepw`
DELETE | `/sign-out/:id`                 | `users#signout`
GET    | `/user-shoes/:id`               | `users#usershoes`
GET    | `/user-collections/:id`         | `users#usercollections`
GET    | `/shoes`                        | `shoes#index`
GET    | `/shoes/:id`                    | `shoes#show`
POST   | `/shoes`                        | `shoes#create`
PATCH  | `/shoes/:id`                    | `shoes#update`
DELETE | `/shoes/:id`                    | `shoes#destroy`
GET    | `/collections`                  | `collections#index`
GET    | `/collections/:id`              | `collections#show`
POST   | `/collections`                  | `collections#create`
PATCH  | `/collections/:id`              | `collections#update`
DELETE | `/collections/:id`              | `collections#destroy`
GET    | `/connect_shoe_collections`     | `connect_shoe_collections#index`
GET    | `/connect_shoe_collections/:id` | `connect_shoe_collections#show`
POST   | `/connect_shoe_collections`     | `connect_shoe_collections#create`
PATCH  | `/connect_shoe_collections/:id` | `connect_shoe_collections#update`

All data is returned from API actions formatted as JSON. Connect Shoe Collection Controller is not ready for implementation. It needs to be formatted to inherit from OpenReadController to authenticate user.

# User Actions

## POST /sign-up

Request:

```sh
curl http://localhost:4741/sign-up \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "email": "'"${EMAIL}"'",
      "password": "'"${PASSWORD}"'",
      "password_confirmation": "'"${PASSWORD}"'"
    }
  }'
```

```sh
EMAIL=ava@bob.com PASSWORD=hannah scripts/sign-up.sh
```

Response:

```markdown
HTTP/1.1 201 Created
Content-Type: application/json; charset=utf-8

{
  "user": {
    "id": 1,
    "email": "ava@bob.com"
  }
}
```

## POST /sign-in

Request:

```sh
curl http://localhost:4741/sign-in \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "email": "'"${EMAIL}"'",
      "password": "'"${PASSWORD}"'"
    }
  }'
```

```sh
EMAIL=ava@bob.com PASSWORD=hannah scripts/sign-in.sh
```

Response:

```markdown
HTTP/1.1 200 OK
Content-Type: application/json; charset=utf-8

{
  "user": {
    "id": 1,
    "email": "ava@bob.com",
    "token": "BAhJIiVlZDIwZTMzMzQzODg5NTBmYjZlNjRlZDZlNzYxYzU2ZAY6BkVG--7e7f77f974edcf5e4887b56918f34cd9fe293b9f"
  }
}
```

## PATCH /change-password/:id

Request:

```sh
curl --include --request PATCH "http://localhost:4741/change-password/$ID" \
  --header "Authorization: Token token=$TOKEN" \
  --header "Content-Type: application/json" \
  --data '{
    "passwords": {
      "old": "'"${OLDPW}"'",
      "new": "'"${NEWPW}"'"
    }
  }'
```

```sh
ID=1 OLDPW=hannah NEWPW=elle TOKEN=BAhJIiVlZDIwZTMzMzQzODg5NTBmYjZlNjRlZDZlNzYxYzU2ZAY6BkVG--7e7f77f974edcf5e4887b56918f34cd9fe293b9f scripts/change-password.sh
```

Response:

```markdown
HTTP/1.1 204 No Content
```

## DELETE /sign-out/:id

Request:

```sh
curl http://localhost:4741/sign-out/$ID \
  --include \
  --request DELETE \
  --header "Authorization: Token token=$TOKEN"
```

```sh
ID=1 TOKEN=BAhJIiVlZDIwZTMzMzQzODg5NTBmYjZlNjRlZDZlNzYxYzU2ZAY6BkVG--7e7f77f974edcf5e4887b56918f34cd9fe293b9f scripts/sign-out.sh
```

Response:

```markdown
HTTP/1.1 204 No Content
```

## Users

Verb | URI Pattern | Controller#Action
---- | ----------- | -----------------
GET  | `/users`    | `users#index`
GET  | `/users/1`  | `users#show`

### GET /users

Request:

```sh
curl http://localhost:4741/users \
  --include \
  --request GET \
  --header "Authorization: Token token=$TOKEN"
```

```sh
TOKEN=BAhJIiVlZDIwZTMzMzQzODg5NTBmYjZlNjRlZDZlNzYxYzU2ZAY6BkVG--7e7f77f974edcf5e4887b56918f34cd9fe293b9f scripts/users.sh
```

Response:

```markdown
HTTP/1.1 200 OK
Content-Type: application/json; charset=utf-8

{
  "users": [
    {
      "id": 2,
      "email": "bob@ava.com"
    },
    {
      "id": 1,
      "email": "ava@bob.com"
    }
  ]
}
```

### GET /users/:id

Request:

```sh
curl --include --request GET http://localhost:4741/users/$ID \
  --header "Authorization: Token token=$TOKEN"
```

```sh
ID=2 TOKEN=BAhJIiVlZDIwZTMzMzQzODg5NTBmYjZlNjRlZDZlNzYxYzU2ZAY6BkVG--7e7f77f974edcf5e4887b56918f34cd9fe293b9f scripts/user.sh
```

Response:

```markdown
HTTP/1.1 200 OK
Content-Type: application/json; charset=utf-8

{
  "user": {
    "id": 2,
    "email": "bob@ava.com"
  }
}
```

### GET /users-shoes/:id

This returns the shoes that the user owns. This does not require authentication.

Request:

```sh
curl --include --request GET http://localhost:4741/users-shoes/$ID \
```

```sh
ID=19 scripts/get-user-shoes.sh
```

Response:

```markdown
HTTP/1.1 200 OK
Content-Type: application/json; charset=utf-8

{
  "user": {
    "shoes": [
      {
        "id": 32,
        "name": "Jordan 30",
        "brand": "Jordan",
        "caption": "my favorite shoe",
        "user_id": 19,
        "created_at": "2017-07-24T14:21:18.422Z",
        "updated_at": "2017-07-24T14:21:18.422Z"
      },
      {
        "id": 33,
        "name": "Jordan 30",
        "brand": null,
        "caption": "my favorite shoe",
        "user_id": 19,
        "created_at": "2017-07-24T14:21:30.689Z",
        "updated_at": "2017-07-24T14:21:30.689Z"
      },
      {
        "id": 31,
        "name": "Jordan 30",
        "brand": "Jordan",
        "caption": "my favorite shoe",
        "user_id": 19,
        "created_at": "2017-07-24T13:34:44.095Z",
        "updated_at": "2017-07-24T13:34:44.095Z"
      }
      ]
    }
}
```

### GET /users-collections/:id

This returns the collection that the user owns. This does not require authentication.

Request:

```sh
curl --include --request GET http://localhost:4741/users-collections/$ID \
```

```sh
ID=19 scripts/get-user-collections.sh
```

Response:

```markdown
HTTP/1.1 200 OK
Content-Type: application/json; charset=utf-8

{
  "user": {
    "collections": [
      {
        "id": 10,
        "name": "Best Shoes",
        "description": "I love This",
        "user_id": 19,
        "created_at": "2017-07-24T13:29:57.853Z",
        "updated_at": "2017-07-24T13:29:57.853Z"
      },
      {
        "id": 11,
        "name": "What Watermelon",
        "description": "I love This",
        "user_id": 19,
        "created_at": "2017-07-24T13:32:33.571Z",
        "updated_at": "2017-07-24T13:32:33.571Z"
      },
      {
        "id": 15,
        "name": "What Watermelon  d d",
        "description": "I love This",
        "user_id": 19,
        "created_at": "2017-07-24T14:19:46.629Z",
        "updated_at": "2017-07-24T14:19:46.629Z"
      },
      {
        "id": 16,
        "name": "What Watermelon  d d",
        "description": null,
        "user_id": 19,
        "created_at": "2017-07-24T14:20:09.956Z",
        "updated_at": "2017-07-24T14:20:09.956Z"
      }
    ]
  }
}
```

# Shoe Actions

### GET /shoes

Request:

```sh
API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/shoes"
curl "${API}${URL_PATH}" \
  --include \
  --request GET \
```

Response:

```markdown
HTTP/1.1 200 OK
Content-Type: application/json; charset=utf-8

{
  "shoes": [
    {
      "id": 32,
      "name": "Jordan 30",
      "brand": "Jordan",
      "caption": "my favorite shoe",
      "user":
        {
          "id": 19,
          "email": "a",
          "token": "62f9a3f0daa1a77a316bc1b19e860776",
          "password_digest": "$2a$10$huAG0.NWORbUjWlbfaQ7outo3a4PYObs7wclVj647uyzCkObrjjqy",
          "created_at": "2017-07-24T13:29:11.369Z",
          "updated_at": "2017-07-25T20:10:10.459Z"
        }
    },
    {
      "id": 33,
      "name": "Jordan 30",
      "brand": null,
      "caption": "my favorite shoe",
      "user":
      {
        "id": 19,
        "email": "a",
        "token": "62f9a3f0daa1a77a316bc1b19e860776",
        "password_digest": "$2a$10$huAG0.NWORbUjWlbfaQ7outo3a4PYObs7wclVj647uyzCkObrjjqy",
        "created_at": "2017-07-24T13:29:11.369Z",
        "updated_at": "2017-07-25T20:10:10.459Z"
      }
    }
}
```


### GET /shoes/:id

Request:

```sh
ID='32'
API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/shoes/${ID}"
curl "${API}${URL_PATH}" \
  --include \
  --request GET \
```

Response:

```markdown
HTTP/1.1 200 OK
Content-Type: application/json; charset=utf-8

{
  "shoe": {
    "id": 32,
    "name": "Jordan 30",
    "brand": "Jordan",
    "caption": "my favorite shoe",
    "user":
      {
        "id": 19,
        "email": "a",
        "token": "62f9a3f0daa1a77a316bc1b19e860776",
        "password_digest": "$2a$10$huAG0.NWORbUjWlbfaQ7outo3a4PYObs7wclVj647uyzCkObrjjqy",
        "created_at": "2017-07-24T13:29:11.369Z",
        "updated_at": "2017-07-25T20:10:10.459Z"
      }
  }
}
```


## POST /shoes

Request:

```sh
TOKEN='BAhJIiUyYjIwNTc2Mjg4ZTQzOWE1MTI5MGJmNWI3OGZjMDcwNAY6BkVG--d414ad3aafa830fbd666263462e5e78a722f9b22'
NAME='Jordan 30'
BRAND='Jordan'
CAPTION='my favorite shoe'

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/shoes"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "shoe": {
      "name": "'"${NAME}"'",
      "brand": "'"${BRAND}"'",
      "caption": "'"${CAPTION}"'"
    }
  }'

```


Response:

```markdown
HTTP/1.1 201 Created
Content-Type: application/json; charset=utf-8

{
  "shoe":
    {
      "id":57,
      "name":"Baller",
      "brand":"Baller",
      "caption":"Baller",
      "user":
        {
          "id":19,
          "email":"a",
          "token":"62f9a3f0daa1a77a316bc1b19e860776",
          "password_digest":"$2a$10$huAG0.NWORbUjWlbfaQ7outo3a4PYObs7wclVj647uyzCkObrjjqy",
          "created_at":"2017-07-24T13:29:11.369Z",
          "updated_at":"2017-07-25T20:10:10.459Z"}
        }
}
```

## PATCH /shoes/:id

Request:

```sh
ID='14'
TOKEN='BAhJIiVmZDMxZmM5OGNkMWRjZGE5YTNiZDc0MTczMGI4MGVhZgY6BkVG--75053ac3cd8be8774cf47bcdf3fb5480391cdd9b'
CAPTION='love it'

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/shoes"
curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request PATCH \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \
  --data '{
    "shoe": {
      "caption": "'"${CAPTION}"'"
    }
  }'
```


Response:

```markdown
HTTP/1.1 204 No Content
```

## DELETE /shoes/:id

Request:

```sh
TOKEN='BAhJIiU3M2VhMGFhMmIwYWQxNjVjZmZmOWNhZTAwYWUxMGI0YQY6BkVG--43a97f6f6a14311a3dbf0636ea7095a99b43a915'
ID=7
API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/shoes"
curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request DELETE \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN"

```

Response:

```markdown
HTTP/1.1 204 No Content
```

# Collection

### GET /collections

Request:

```sh
API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/collections"
curl "${API}${URL_PATH}" \
  --include \
  --request GET \

```

Response:

```markdown
HTTP/1.1 200 OK
Content-Type: application/json; charset=utf-8

{
  "collections": [
  {
    "id": 31,
    "name": "ewqrqwerwq",
    "description": "kk",
    "shoes": []
  },
  {
    "id": 8,
    "name": "My Jordans",
    "description": "best shoes of jordan collection",
    "shoes": []
  },
  {
    "id": 32,
    "name": "asfasfads",
    "description": "asfdsa",
    "shoes": []
  }
}
```

### GET /collections/:id

Request:

```sh
ID='31'
API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/collections/${ID}"
curl "${API}${URL_PATH}" \
  --include \
  --request GET \
```

Response:

```markdown
HTTP/1.1 200 OK
Content-Type: application/json; charset=utf-8

{
  "collection":
  {
    "id": 31,
    "name": "ewqrqwerwq",
    "description": "kk",
    "shoes": []
  }
}
```

## POST /collections

Request:

```sh
TOKEN='BAhJIiU1MjM4ZjM2YWMzOWIxNTRhZTU3NjgwZjdhMGUxMjg2NQY6BkVG--377069f0d82c2c843cea8fc7711ffffd2ae0e1df'
DESCRIPTION='I love This'
NAME='Jordan King'

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/collections"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "collection": {
      "name": "'"${NAME}"'"
    }
  }'

```


Response:

```markdown
HTTP/1.1 201 Created
Content-Type: application/json; charset=utf-8

{
  "collection":
    {
      "id":33,
      "name":"Jordan King",
      "description":null,
      "shoes":[]
    }
}

```

## PATCH /collections/:id

Request:

```sh
ID='31'
TOKEN='BAhJIiUwOTNiZTZkODkyMWI0ZjFiMjUxMmFiNDg1ZWI1YjNmNwY6BkVG--85a809824ca4e12926f918f2c9c374edf7160b86'
DESCRIPTION='This is awesome'

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/collections"
curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request PATCH \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \
  --data '{
    "collection": {
      "description": "'"${DESCRIPTION}"'"
    }
  }'
```


Response:

```markdown
HTTP/1.1 204 No Content
```



## DELETE /collections/:id

Request:

```sh
TOKEN='BAhJIiVmZDMxZmM5OGNkMWRjZGE5YTNiZDc0MTczMGI4MGVhZgY6BkVG--75053ac3cd8be8774cf47bcdf3fb5480391cdd9b'
ID=14
API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/collections"
curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request DELETE \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN"

```

Response:

```markdown
HTTP/1.1 204 No Content
```

# Connect Shoe Collections
This part is unfinished and will be modified in the future


## POST /connect_shoe_collections

Request:

```sh
SHOEID='32'
COLLECTIONID='31'

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/connect_shoe_collections"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "connect_shoe_collection": {
      "shoe_id": "'"${SHOEID}"'",
      "collection_id": "'"${COLLECTIONID}"'"
    }
  }'
```


Response:

```markdown
HTTP/1.1 201 Created
Content-Type: application/json; charset=utf-8

{
  "connect_shoe_collection":
    {
      "id":1,
      "shoe":
        {
          "id":32,
          "name":"Jordan 30",
          "brand":"Jordan",
          "caption":"my favorite shoe",
          "user": {
            "id":19,
            "email":"a",
            "token":"5238f36ac39b154ae57680f7a0e12865",
            "password_digest":"$2a$10$huAG0.NWORbUjWlbfaQ7outo3a4PYObs7wclVj647uyzCkObrjjqy",
            "created_at":"2017-07-24T13:29:11.369Z",
            "updated_at":"2017-07-25T20:28:27.534Z"
            }
        },
      "collection":
        {
        "id":31,
        "name":"ewqrqwerwq",
        "description":"kk",
        "shoes":[
          {
            "id":32,
            "name":"Jordan 30",
            "brand":"Jordan",
            "caption":"my favorite shoe",
            "user_id":19,
            "created_at":"2017-07-24T14:21:18.422Z",
            "updated_at":"2017-07-24T14:21:18.422Z"
          }
          ]
        }
    }
}
```


## DELETE /connect_shoe_collections/:id

Request:

```sh
ID='8'
API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/connect_shoe_collections"
curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request DELETE \
```

Response:

```markdown
HTTP/1.1 204 No Content
```
