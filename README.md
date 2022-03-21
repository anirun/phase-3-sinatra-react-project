## Deliverables
  - **Create** a new assignment/student
  - **Read** a list of student's assignments, a list of students
  - **Update** an assignment with a grade
  - **Delete** a student

## OO Relationships

An `Assignment` _belongs to_ a `Student`.
A `Student` _has many_ `Assignments`.

## Server Setup

You can start your server with:
```console
$ bundle exec rake server
```
This will run your server on port [http://localhost:9292](http://localhost:9292).

## Developer Notes

- Use `binding.pry` to debug your requests on the server. It's very helpful to use a `binding.pry` in your controller within a route to see what `params` are being sent.
- Use the [Network Tab in the Dev Tools][network tab] in the frontend to debug your requests.

X Use Active Record to interact with a database.
X Have a minimum of two models with a one-to-many relationship.
X Create API routes in Sinatra that handles at least three different CRUD
  actions for at least one of your Active Record models.
X Build a separate React frontend application that interacts with the API to
  perform CRUD actions.
X Use good OO design patterns. You should have separate classes for each of your models, and create instance and class methods as necessary.
