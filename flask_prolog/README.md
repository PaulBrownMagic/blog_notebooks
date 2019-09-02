# Flask and Pengines Example App

Demonstrating how to query SWI-Prolog via pengines from a Flask app.

## To Run

You have to start two processes. First the SWI-Prolog server:

```
swipl -g serve -s pengine_server.pl
```

Then the flask application

```
pipenv run flask run
```

Navigate to [localhost:5000/greet/pat](http://localhost:5000/greet/pat)
and Flask will send a query to a pengine for a custom greeting for
'Pat'.

## Files

### SWI-Prolog

- `pengine_server.pl` Run the webserver, pengines, and sandbox
- `greetings.pl` Use `library(persistency)` to store dynamic word data
  and provide some greeting predicates using this data.
- `word_db.pl` The database of words, shouldn't need to edit this
  manually, but you can read it because we're in Prolog!

### Python

- `app.py` The flask application with routes
- `greeting.py` A model providing a proxy to the pengine
