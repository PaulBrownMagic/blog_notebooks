:- module(pengines_server,
    [ serve/1
    , serve/0
    ]).

% Web Server
:- use_module(library(http/thread_httpd)).
:- use_module(library(http/http_dispatch)).

serve(Port) :-
    http_server(http_dispatch, [port(Port)]).

serve :-
    serve(5050).

% File paths
:- dynamic user:file_search_path/2.
:- prolog_load_context(directory, Dir),
   asserta(user:file_search_path(app, Dir)).

% Pengines: register app
:- use_module(library(pengines)).
:- pengine_application(greet).
:- use_module(greet:app(greetings)).

% Sandbox the predicates deemed unsafe due to using a mutex.
:- use_module(library(sandbox)).
:- multifile sandbox:safe_primitive/1.
sandbox:safe_primitive(greetings:add_salutation(_)).
sandbox:safe_primitive(greetings:add_adjective(_)).
sandbox:safe_primitive(greetings:remove_salutation(_)).
sandbox:safe_primitive(greetings:remove_adjective(_)).

