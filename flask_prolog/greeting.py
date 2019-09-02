from pengines.Builder import PengineBuilder
from pengines.Pengine import Pengine


class Greetings:
    """
    Interface to SWI-Prolog Pengine Server
    """

    def __init__(self):
        self.pengine_builder = PengineBuilder(urlserver="http://localhost:5050",
                                         application="greet")

    def new_pengine(self) :
            return Pengine(builder=self.pengine_builder)

    def add_salutation(self, salutation):
        pengine = self.new_pengine()
        query = pengine.ask(f"add_salutation('{salutation}')")
        pengine.doAsk(query)
        pengine.iAmFinished(query)

    def add_adjective(self, adjective):
        pengine = self.new_pengine()
        query = pengine.ask(f"add_adjective('{adjective}')")
        pengine.doAsk(query)
        pengine.iAmFinished(query)

    def remove_salutation(self, salutation):
        pengine = self.new_pengine()
        query = pengine.ask(f"remove_salutation('{salutation}')")
        pengine.doAsk(query)
        pengine.iAmFinished(query)

    def remove_adjective(self, adjective):
        pengine = self.new_pengine()
        query = pengine.ask(f"remove_adjective('{adjective}')")
        pengine.doAsk(query)
        pengine.iAmFinished(query)

    def greeting(self, name):
        pengine = self.new_pengine()
        query = pengine.ask(f"random_greeting('{name.title()}', Greet)")
        pengine.doAsk(query)
        greet = pengine.currentQuery.availProofs[0]['Greet']
        pengine.iAmFinished(query)
        return greet


