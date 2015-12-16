STEP 1:
  Register A User:
  URL: ```https://gigster-app.herokuapp.com/users ```
  	Method: POST
  	JSON:
  {
    "user": {
        "email": " ",
        "password": " ",
        "type": "Band" or "Fan"
    }
}


 STEP 2:
   Login A User
  URL: ```https://gigster-app.herokuapp.com/oauth/authorize```
  METHOD: POST
  JSON:
  {
      "grant_type": "password",
          "username": "User14",
          "password": "test"
  }

This will return an access token that needs to be added to the header of the website with an 
“Authorization” of “Bearer tokenyoureceived “



TO SHOW A CURRENT USER:
  MUST HAVE ACCESS TOKEN IN ORDER TO SHOW CURRENT USER

 URL: ``` https://gigster-app.herokuapp.com/me```
 JSON: 
 {
  "id": ,
  "email": " ",
  "location":  ,
  "type_of_user": " ",
  "band_id":  
}

 THIS WILL RETURN CURRENT USER INFORMATION ONLY IF YOU HAVE AN AUTHORIZED TOKEN




 To show a single band:
    URL: ``` https://gigster-app.herokuapp.com/bands/id```
     METHOD: GET
     Params:
      "id": 7,
      "name": null,
      "location": null,
      "avatar_url": null,
      "genre": null,
      "video_url": null,
      "audio_url": null


   To show a single fan:
   URL: ``` https://gigster-app.herokuapp.com/fans/id```
   METHOD: GET
   Params:

       "id": 1,
       "location": "Nashville"



* To Show All Users:
 URL: ``` https://gigster-app.herokuapp.com/users ```
 METHOD: GET
 Params:
    "id": 7,
    "email": "backpack@orange.com",
    "location": "Burbank",
    "type_of_user": "Fan",
    "band_id": null


* To Update a band
 URL ``` https://gigster-app.herokuapp.com/me/band ```
 METHOD: PUT
 JSON:
 {
    "band": {
      "id": 7,
      "name": null,
      "location": null,
      "avatar_url": null,
      "genre": null,
      "video_url": null,
      "audio_url": null
      "public": true
    }
}

-or-

URL: ``` https://gigster-app.herokuapp.com/bands/id```
   METHOD: PUT
   Params:
    "id": 7,
    "name": null,
    "location": null,
    "avatar_url": null,
    "genre": null,
    "video_url": null,
    "audio_url": null
    "public": true

  *  PUBLIC HAS TO BE SET TO TRUE IN ORDER FOR A BAND TO BE SHOWN ON THE INDEX (SHOW ALL BANDS) PAGE


* To show all bands
 URL: ``` https://gigster-app.herokuapp.com/bands ```
 METHOD: GET
  -this will return a list of bands that have their profile updated to public being true


* To have a fan update their profile:
 URL: ``` https://gigster-app.herokuapp.com/fans/id```
 METHOD: PUT
 Params:
 {
    "fan": {
      "id": 1,
      "location": "Nashville"
    }
}


* To show all fans:
 URL: ```https://gigster-app.herokuapp.com/fans ```
 METHOD: GET



 * To delete a band:
 URL: ``` https://gigster-app.herokuapp.com/bands/id```
 METHOD: DELETE


 * To delete a fan:
 URL: ``` https://gigster-app.herokuapp.com/fans/id```
 METHOD: DELETE



 * To show all concerts:
  URL: ``` https://gigster-app.herokuapp.com/concerts ```
  METHOD: GET
  Params:
  [
    {
    "id": 1,
    "location": "Nashville",
    "venue": "Mercy Lounge",
    "success": null,
    "band_id": 2
    }
]

  * In order to create a concert, the authorized token must belong to a band
   URL: ``` https://gigster-app.herokuapp.com/concerts  ```
   METHOD: POST
   JSON:
   {
    "concert": {
        "location": "Nashville",
        "venue": "Mercy Lounge"
    }
}

* To Update a concert:
  URL: ``` https://gigster-app.herokuapp.com/concerts/:id  ```
  METHOD: PUT


* To create a vote, the authorized token must belong to a fan
 URL: ``` https://gigster-app.herokuapp.com/concerts/:id/vote ```
 METHOD: PUT

* To unvote from a concert
 URL: ``` https://gigster-app.herokuapp.com/concerts/:id/unvote ```
 METHOD: DELETE
