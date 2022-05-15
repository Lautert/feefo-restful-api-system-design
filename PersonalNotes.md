## Problem
Create a simple note web app, where a user can write a note, save a note, view a list of their notes, and delete a note. The user’s notes are
saved so that they are available via any web-capable device. 

## Stakeholders
- User - anyone that want to write a note

## Out of scope
- The user already logged in the system and can access the resource
- The system already control the user token and session

## Functionalities
- List
- Create
- Get
- Edit
- Delete

## Requirement
- Run in any web device
- Saved and can access in any device
- Only in web, don't need to develop an mobile App (but with Rest API you can do it).

## Solution
- You can check an example frontend APP in `note-web-app.drawio (tab: Frontend - example)`
- You can check a table in `note-web-app.drawio (tab: Table)`
    - and a script of Postgres in `script.sql`
- You can check the user happy way actions in `note-web-app.drawio (tab: User - Actions)`
- All the notes user was saves in a Database (Postgres, Mysql, Oracle, NoSQL, ...).


## Rest API
Notes: 
- All the request need to have the user token in the header of the request
- If something went wrong during the request, use HTTP verbs to say the reason and the body to give the message.
- All transfers data need to by in JSON

### List Notes
request:    GET /api/note
response:   200 body: {json_witch_all_user_notes}

### Create Note
request:    POST /api/note body:{json_all_new_note_data}
response:   200 body:

### Get a Note Data
request:    GET /api/note/{note_id:number}
response:   200 body:{json_all_note_data}

### Edit Note
request:    PUT /api/note/{note_id:number} body:{json_all_note_data}
response:   200 body:

### Delete Note
request:    DELETE /api/note/{note_id:number}
response:   200 body:


## Extra Notes

- It might be better to use frontend features like SWR ou React Query to build a better user solution.
- If something goes wrong on the frontend or backend and you need to show a message to the user, consider using [React Toast](https://fkhadra.github.io/react-toastify/introduction)
- The backend could use the stack request to Save, Update and Delete user notes.
- To scaling the solution and turn more simple to deploy is better use Docker container.