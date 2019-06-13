#!/usr/bin/env python3
from argparse import ArgumentParser

from gooey import Gooey
from pyswip import Prolog

swipl = Prolog()
swipl.consult("trains.pl")

STATIONS = [ans["S"] for ans in swipl.query("station(S)")]

def route_length(From, To):
    return next(swipl.query(f"route_length({From}, {To}, L)"))["L"]

@Gooey
def main():
    parser = ArgumentParser(description="Find the length of a route between two stations")
    parser.add_argument("-o", "--origin", choices=STATIONS, required=True)
    parser.add_argument("-d", "--destination", choices=STATIONS, required=True)
    args = parser.parse_args()
    print(route_length(args.origin, args.destination))

if __name__ == "__main__":
    main()
