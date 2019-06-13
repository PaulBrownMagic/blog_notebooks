/** <module> Train Routes
*  Module to work out the routes between origin
*  and destination stations. Trains can travel
*  in each destination. Can be queried for route
*  or route_length.
*
* @author Paul Brown (Magic)
*
*/

:- module(trains,
    [ station/1
    , route_length/3
    ]
).


%! station(Station) is semidet.
%  Station is a known station.
station(albuquerque).
station(chicago).
station(denver).
station(dubuque).
station(kansas_city).
station(los_angeles).
station(milwaukee).
station(minneapolis).
station(oakland).
station(omaha).
station(portland).
station(sacramento).
station(salt_lake_city).
station(san_jose).
station(seattle).
station(spokane).
station(vancouver).

%! train(Station1, Station2) is semidet.
%  There exists a train that travels from Station1 to Station2
train(albuquerque, kansas_city).
train(chicago, milwaukee).
train(chicago, omaha).
train(dubuque, chicago).
train(kansas_city, chicago).
train(los_angeles, albuquerque).
train(minneapolis, milwaukee).
train(oakland, san_jose).
train(omaha, denver).
train(portland, spokane).
train(sacramento, oakland).
train(sacramento, portland).
train(salt_lake_city, denver).
train(salt_lake_city, sacramento).
train(san_jose, los_angeles).
train(seattle, portland).
train(spokane, minneapolis).
train(vancouver, seattle).

%! travel(Station1, Station2) is nondet.
%  It is possible to travel (by train) between Station1 and Station2.
%  Note, this differs from train as it allows travel in both directions.
travel(O, D) :- train(O, D).
travel(O, D) :- train(D, O).
travel(_, _) :- fail, !.

%!list(-List:list) is nondet.
% list is used to generate lists of increasing lengths
% consisting of unbound-variables. It's used to force
% breadth-first search.
list([]).
list([_|T]) :- list(T).

%! route(+Origin, +Destination, -Route:list) is nondet.
%  finds a route between the origin and the destination.
route(D, D, [D]).
route(O, D, [O|T]) :- list(T), travel(O, N), route(N, D, T).

%! route_length(+Origin, +Destination, -Length) is nondet.
%  finds the length of the route between the origin and destination.
route_length(O, D, L) :- route(O, D, R), !, length(R, RL), L is RL - 1.
