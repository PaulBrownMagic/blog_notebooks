from pengines.Builder import PengineBuilder
from pengines.Pengine import Pengine


class Greetings:
    """
    Interface to SWI-Prolog Pengine Server
    """

    def __init__(self):
        pengine_builder = PengineBuilder(urlserver="http://localhost:5050",
                                         application="greet",
                                         destroy=False)
        self.pengine = Pengine(builder=pengine_builder)

    def add_salutation(self, salutation):
        query = self.pengine.ask(f"add_salutation('{salutation}')")
        self.pengine.doAsk(query)
        self.pengine.iAmFinished(query)

    def add_adjective(self, adjective):
        query = self.pengine.ask(f"add_adjective('{adjective}')")
        self.pengine.doAsk(query)
        self.pengine.iAmFinished(query)

    def remove_salutation(self, salutation):
        query = self.pengine.ask(f"remove_salutation('{salutation}')")
        self.pengine.doAsk(query)
        self.pengine.iAmFinished(query)

    def remove_adjective(self, adjective):
        query = self.pengine.ask(f"remove_adjective('{adjective}')")
        self.pengine.doAsk(query)
        self.pengine.iAmFinished(query)

    def greeting(self, name):
        query = self.pengine.ask(f"random_greeting('{name.title()}', Greet)")
        self.pengine.doAsk(query)
        greet = self.pengine.currentQuery.availProofs[0]['Greet']
        self.pengine.iAmFinished(query)
        return greet


