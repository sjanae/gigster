LOGIN:
  URL: ```oauth/authorize```
  METHOD: POST
  PAYLOAD: payload: {
"grant_type":
"username":
"password": 
}



SIGNUP:
 * For a band -
   URL: ```  ```
   METHOD: POST
   PAYLOAD: {

   }

* For a fan -
  URL: ``` ```
  METHOD: POST
  PAYLOAD: {

  }


* BANDS:
PAYLOAD: {
  band_id
  name
  genre
  avatar_url
  location
  password_digest
}
 To Show All Bands:
  URL: ``` /bands ```
  METHOD: GET

  For A Band To Update Their Profile:
  URL: ``` /bands/id ```
  METHOD: POST

  For A Band To Delete Their Profile:
  URL: ``` /bands/id ```
  METHOD: DELETE

* FANS
PAYLOAD: {
  fan_id
  email
  location
  avatar_url
  username
  password_digest
}

  To Show A List of Users:
  URL: ``` /fans ```
  METHOD: GET

  For A Fan To View Their Profile:
  URL: ``` /fans/id ```
  METHOD: POST
