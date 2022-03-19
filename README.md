## Deliverables
  - **Create** a new assignment/student
  - **Read** a list of student's assignments, a list of students
  - **Update** an assignment with a grade, a student's name
  - **Delete** an assignment, a student, a grade

## OO Relationships

An `Assignment` _belongs to_ a `Student` and a `Teacher`.
A `Student` _has many_ `Assignments`, and _has many_ `Teachers` _through_ `Assignments`.
A `Teacher` _has many_ `Assignments`, and _has many_ `Students` _through_ `Assignments`.

## Server Setup

You can start your server with:

```console
$ bundle exec rake server
```

This will run your server on port [http://localhost:9292](http://localhost:9292).

## Project Tips

- This project is intended to focus more on the backend than the frontend, so try and keep the React side of things relatively simple. Focus on working with Active Record and performing CRUD actions. What are some interesting queries you can write? What kinds of questions can you ask of your data?
- Once you have a project idea, come up with a domain model and decide what
relationships exist between the models in your application. Use a tool like [dbdiagram.io][] to help visualize your models.

## Developer Notes

- Use `binding.pry` to debug your requests on the server. It's very helpful to use a `binding.pry` in your controller within a route to see what `params` are being sent.
- Use the [Network Tab in the Dev Tools][network tab] in the frontend to debug your requests.

- Use Active Record to interact with a database.
- Have a minimum of two models with a one-to-many relationship.
- Create API routes in Sinatra that handles at least three different CRUD
  actions for at least one of your Active Record models.
- Build a separate React frontend application that interacts with the API to
  perform CRUD actions.
- Use good OO design patterns. You should have separate classes for each of your models, and create instance and class methods as necessary.