:- module(greetings,
    [ greet/2
    , add_salutation/1
    , add_adjective/1
    , remove_salutation/1
    , remove_adjective/1
    , random_greeting/2
    ]
).

:- use_module(library(persistency)).

:- persistent word(place:atom, word:atom).

:- db_attach('words_db.pl', []).

%%%
% Persistent predicates, adding a mutex to the db, syncing not handled.
%%%

add_salutation(Word) :-
    with_mutex(word_db,
        assert_word(salutation, Word)
    ).

add_adjective(Word) :-
    with_mutex(word_db,
        assert_word(adjective, Word)
    ).

remove_salutation(Word) :-
    with_mutex(word_db,
        retractall_word(salutation, Word)
    ).

remove_adjective(Word) :-
    with_mutex(word_db,
        retractall_word(adjective, Word)
    ).

%%%
% Greeting predicates, using the data.
%%%

greet(Name, Greeting) :-
    phrase(greeting(Name), Words),
    atomic_list_concat(Words, ' ', Greeting).

random_greeting(Name, Greeting) :-
    findnsols(20, G, greet(Name, G), Greetings),
    random_member(Greeting, Greetings).

%%%
% Greeting DCG
%%%

greeting(Name) --> salutation, [Name], ['you\'re'], adjective.

salutation --> { word(salutation, Word) }, [Word].

adjective --> { word(adjective, Word) }, [Word].
