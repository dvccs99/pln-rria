import pgf


class PrescriptionAnalyser:
    def __init__(self):
        self.GRAMMAR_PATH = "Prescription.pgf"
        self.grammar = pgf.readPGF(self.GRAMMAR_PATH)
        self.language = self.grammar.languages["PrescriptionBra"]

    def analyse(self, phrase: str) -> bool:
        try:
            self.language.parse(phrase)
            return True
        except pgf.ParseError:
            return False
