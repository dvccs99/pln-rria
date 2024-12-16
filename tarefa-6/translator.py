import pgf


class Translator:
    def __init__(self, grammar_name: str, grammar_path: str):
        self.GRAMMAR_PATH = grammar_path
        self.grammar_name = grammar_name

    def read_grammars(
            self,
            source_lang_name: str,
            target_lang_name: str
            ) -> None:
        gr = pgf.readPGF(self.GRAMMAR_PATH)
        self.source_lang = gr.languages[source_lang_name]
        self.target_lang = gr.languages[target_lang_name]

    def translate(self, phrase: str) -> None:
        try:
            parsed_phrase = self.source_lang.parse(phrase)
            p, e = parsed_phrase.__next__()
            print(f"Parsing tree: {e}")
            print(f"Unknown probability: {p}")
            print(f"A tradução é: {self.target_lang.linearize(e)}")
        except pgf.ParseError:
            print(f"Essa não é uma sentença válida do {self.grammar_name}.")


if __name__ == "__main__":
    translator = Translator(grammar_name="FoodsEngRGL",
                            grammar_path="tarefa-6/FoodsRGL.pgf")
    translator.read_grammars(source_lang_name="FoodsEngRGL",
                             target_lang_name="FoodsBraRGL")
    phrase = input("Escreva uma frase em inglês: ")
    running = True
    while running:
        translator.translate(phrase)
        phrase = input("Escreva uma frase em inglês: ")
        if phrase == "quit":
            running = False

