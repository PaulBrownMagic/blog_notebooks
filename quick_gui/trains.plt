:- begin_tests(route_lengths).

:- use_module(trains).
    test(station) :- station(chicago).
    test(station, [fail]) :- station(mars).

    test(route_length) :- route_length(albuquerque, chicago, 2).
    test(route_length) :- route_length(albuquerque, denver, 4).
    test(route_length) :- route_length(albuquerque, dubuque, 3).
    test(route_length) :- route_length(albuquerque, kansas_city, 1).
    test(route_length) :- route_length(albuquerque, los_angeles, 1).
    test(route_length) :- route_length(albuquerque, milwaukee, 3).
    test(route_length) :- route_length(albuquerque, minneapolis, 4).
    test(route_length) :- route_length(albuquerque, oakland, 3).
    test(route_length) :- route_length(albuquerque, omaha, 3).
    test(route_length) :- route_length(albuquerque, portland, 5).
    test(route_length) :- route_length(albuquerque, sacramento, 4).
    test(route_length) :- route_length(albuquerque, salt_lake_city, 5).
    test(route_length) :- route_length(albuquerque, san_jose, 2).
    test(route_length) :- route_length(albuquerque, seattle, 6).
    test(route_length) :- route_length(albuquerque, spokane, 5).
    test(route_length) :- route_length(albuquerque, vancouver, 7).
    test(route_length) :- route_length(chicago, denver, 2).
    test(route_length) :- route_length(chicago, dubuque, 1).
    test(route_length) :- route_length(chicago, kansas_city, 1).
    test(route_length) :- route_length(chicago, los_angeles, 3).
    test(route_length) :- route_length(chicago, milwaukee, 1).
    test(route_length) :- route_length(chicago, minneapolis, 2).
    test(route_length) :- route_length(chicago, oakland, 5).
    test(route_length) :- route_length(chicago, omaha, 1).
    test(route_length) :- route_length(chicago, portland, 4).
    test(route_length) :- route_length(chicago, sacramento, 4).
    test(route_length) :- route_length(chicago, salt_lake_city, 3).
    test(route_length) :- route_length(chicago, san_jose, 4).
    test(route_length) :- route_length(chicago, seattle, 5).
    test(route_length) :- route_length(chicago, spokane, 3).
    test(route_length) :- route_length(chicago, vancouver, 6).
    test(route_length) :- route_length(denver, dubuque, 3).
    test(route_length) :- route_length(denver, kansas_city, 3).
    test(route_length) :- route_length(denver, los_angeles, 5).
    test(route_length) :- route_length(denver, milwaukee, 3).
    test(route_length) :- route_length(denver, minneapolis, 4).
    test(route_length) :- route_length(denver, oakland, 3).
    test(route_length) :- route_length(denver, omaha, 1).
    test(route_length) :- route_length(denver, portland, 3).
    test(route_length) :- route_length(denver, sacramento, 2).
    test(route_length) :- route_length(denver, salt_lake_city, 1).
    test(route_length) :- route_length(denver, san_jose, 4).
    test(route_length) :- route_length(denver, seattle, 4).
    test(route_length) :- route_length(denver, spokane, 4).
    test(route_length) :- route_length(denver, vancouver, 5).
    test(route_length) :- route_length(dubuque, kansas_city, 2).
    test(route_length) :- route_length(dubuque, los_angeles, 4).
    test(route_length) :- route_length(dubuque, milwaukee, 2).
    test(route_length) :- route_length(dubuque, minneapolis, 3).
    test(route_length) :- route_length(dubuque, oakland, 6).
    test(route_length) :- route_length(dubuque, omaha, 2).
    test(route_length) :- route_length(dubuque, portland, 5).
    test(route_length) :- route_length(dubuque, sacramento, 5).
    test(route_length) :- route_length(dubuque, salt_lake_city, 4).
    test(route_length) :- route_length(dubuque, san_jose, 5).
    test(route_length) :- route_length(dubuque, seattle, 6).
    test(route_length) :- route_length(dubuque, spokane, 4).
    test(route_length) :- route_length(dubuque, vancouver, 7).
    test(route_length) :- route_length(kansas_city, los_angeles, 2).
    test(route_length) :- route_length(kansas_city, milwaukee, 2).
    test(route_length) :- route_length(kansas_city, minneapolis, 3).
    test(route_length) :- route_length(kansas_city, oakland, 4).
    test(route_length) :- route_length(kansas_city, omaha, 2).
    test(route_length) :- route_length(kansas_city, portland, 5).
    test(route_length) :- route_length(kansas_city, sacramento, 5).
    test(route_length) :- route_length(kansas_city, salt_lake_city, 4).
    test(route_length) :- route_length(kansas_city, san_jose, 3).
    test(route_length) :- route_length(kansas_city, seattle, 6).
    test(route_length) :- route_length(kansas_city, spokane, 4).
    test(route_length) :- route_length(kansas_city, vancouver, 7).
    test(route_length) :- route_length(los_angeles, milwaukee, 4).
    test(route_length) :- route_length(los_angeles, minneapolis, 5).
    test(route_length) :- route_length(los_angeles, oakland, 2).
    test(route_length) :- route_length(los_angeles, omaha, 4).
    test(route_length) :- route_length(los_angeles, portland, 4).
    test(route_length) :- route_length(los_angeles, sacramento, 3).
    test(route_length) :- route_length(los_angeles, salt_lake_city, 4).
    test(route_length) :- route_length(los_angeles, san_jose, 1).
    test(route_length) :- route_length(los_angeles, seattle, 5).
    test(route_length) :- route_length(los_angeles, spokane, 5).
    test(route_length) :- route_length(los_angeles, vancouver, 6).
    test(route_length) :- route_length(milwaukee, minneapolis, 1).
    test(route_length) :- route_length(milwaukee, oakland, 5).
    test(route_length) :- route_length(milwaukee, omaha, 2).
    test(route_length) :- route_length(milwaukee, portland, 3).
    test(route_length) :- route_length(milwaukee, sacramento, 4).
    test(route_length) :- route_length(milwaukee, salt_lake_city, 4).
    test(route_length) :- route_length(milwaukee, san_jose, 5).
    test(route_length) :- route_length(milwaukee, seattle, 4).
    test(route_length) :- route_length(milwaukee, spokane, 2).
    test(route_length) :- route_length(milwaukee, vancouver, 5).
    test(route_length) :- route_length(minneapolis, oakland, 4).
    test(route_length) :- route_length(minneapolis, omaha, 3).
    test(route_length) :- route_length(minneapolis, portland, 2).
    test(route_length) :- route_length(minneapolis, sacramento, 3).
    test(route_length) :- route_length(minneapolis, salt_lake_city, 4).
    test(route_length) :- route_length(minneapolis, san_jose, 5).
    test(route_length) :- route_length(minneapolis, seattle, 3).
    test(route_length) :- route_length(minneapolis, spokane, 1).
    test(route_length) :- route_length(minneapolis, vancouver, 4).
    test(route_length) :- route_length(oakland, omaha, 4).
    test(route_length) :- route_length(oakland, portland, 2).
    test(route_length) :- route_length(oakland, sacramento, 1).
    test(route_length) :- route_length(oakland, salt_lake_city, 2).
    test(route_length) :- route_length(oakland, san_jose, 1).
    test(route_length) :- route_length(oakland, seattle, 3).
    test(route_length) :- route_length(oakland, spokane, 3).
    test(route_length) :- route_length(oakland, vancouver, 4).
    test(route_length) :- route_length(omaha, portland, 4).
    test(route_length) :- route_length(omaha, sacramento, 3).
    test(route_length) :- route_length(omaha, salt_lake_city, 2).
    test(route_length) :- route_length(omaha, san_jose, 5).
    test(route_length) :- route_length(omaha, seattle, 5).
    test(route_length) :- route_length(omaha, spokane, 4).
    test(route_length) :- route_length(omaha, vancouver, 6).
    test(route_length) :- route_length(portland, sacramento, 1).
    test(route_length) :- route_length(portland, salt_lake_city, 2).
    test(route_length) :- route_length(portland, san_jose, 3).
    test(route_length) :- route_length(portland, seattle, 1).
    test(route_length) :- route_length(portland, spokane, 1).
    test(route_length) :- route_length(portland, vancouver, 2).
    test(route_length) :- route_length(sacramento, salt_lake_city, 1).
    test(route_length) :- route_length(sacramento, san_jose, 2).
    test(route_length) :- route_length(sacramento, seattle, 2).
    test(route_length) :- route_length(sacramento, spokane, 2).
    test(route_length) :- route_length(sacramento, vancouver, 3).
    test(route_length) :- route_length(salt_lake_city, san_jose, 3).
    test(route_length) :- route_length(salt_lake_city, seattle, 3).
    test(route_length) :- route_length(salt_lake_city, spokane, 3).
    test(route_length) :- route_length(salt_lake_city, vancouver, 4).
    test(route_length) :- route_length(san_jose, seattle, 4).
    test(route_length) :- route_length(san_jose, spokane, 4).
    test(route_length) :- route_length(san_jose, vancouver, 5).
    test(route_length) :- route_length(seattle, spokane, 2).
    test(route_length) :- route_length(seattle, vancouver, 1).
    test(route_length) :- route_length(spokane, vancouver, 3).

    test(route_length, [fail]) :- route_length(albuquerque, chicago, 3).
    test(route_length, [fail]) :- route_length(albuquerque, denver, 5).
    test(route_length, [fail]) :- route_length(albuquerque, dubuque, 2).
    test(route_length, [fail]) :- route_length(albuquerque, kansas_city, 2).
    test(route_length, [fail]) :- route_length(albuquerque, los_angeles, 3).
    test(route_length, [fail]) :- route_length(albuquerque, milwaukee, 0).
    test(route_length, [fail]) :- route_length(albuquerque, minneapolis, -9).
    test(route_length, [fail]) :- route_length(albuquerque, oakland, -3).
    test(route_length, [fail]) :- route_length(albuquerque, omaha, 4).
    test(route_length, [fail]) :- route_length(albuquerque, portland, 6).
    test(route_length, [fail]) :- route_length(albuquerque, sacramento, 2).
    test(route_length, [fail]) :- route_length(albuquerque, salt_lake_city, 4).
    test(route_length, [fail]) :- route_length(albuquerque, san_jose, 7).
    test(route_length, [fail]) :- route_length(albuquerque, seattle, 8).
    test(route_length, [fail]) :- route_length(albuquerque, spokane, 1).
    test(route_length, [fail]) :- route_length(albuquerque, vancouver, 6).
    test(route_length, [fail]) :- route_length(chicago, denver, 4).
    test(route_length, [fail]) :- route_length(chicago, dubuque, 3).
    test(route_length, [fail]) :- route_length(chicago, kansas_city, 9).
    test(route_length, [fail]) :- route_length(chicago, los_angeles, 8).
    test(route_length, [fail]) :- route_length(chicago, milwaukee, 4).

:- end_tests(route_lengths).
