from flask import Flask
from greeting import Greetings

app = Flask(__name__)

greetings = Greetings()

@app.route("/")
def hello():
    return "Hello World!"

###
#  These routes demonstrate querying via Pengines
#  including dynamic data updates
###

@app.route("/greet/<name>")
def greet(name):
    return greetings.greeting(name)


@app.route("/salutation/add/<word>")
def add_salutation(word):
    greetings.add_salutation(word)
    return f"Added saluation {word}"

@app.route("/adjective/add/<word>")
def add_adjective(word):
    greetings.add_adjective(word)
    return f"Added adjective {word}"

@app.route("/salutation/remove/<word>")
def remove_salutation(word):
    greetings.remove_salutation(word)
    return f"Removed saluation {word}"

@app.route("/adjective/remove/<word>")
def remove_adjective(word):
    greetings.remove_adjective(word)
    return f"Removed adjective {word}"



if __name__ == "__main__":
    app.run()
