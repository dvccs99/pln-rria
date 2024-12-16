import pgf

gr = pgf.readPGF("tarefa-6/FoodsRGL.pgf")
ptbr = gr.languages["FoodsBraRGL"]
eng = gr.languages["FoodsEngRGL"]
name = input("Escreva uma frase em inglês: ")
try:
    i = eng.parse(name)
    p, e = i.__next__()
    print(e)
    print(p)
    print("Você quis dizer: " + ptbr.linearize(e))
except pgf.ParseError:
    print("Essa não é uma sentença válida do FoodsEngRGL.")
