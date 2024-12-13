import pgf

gr = pgf.readPGF("python_rgl/FoodsRGL.pgf")
ptbr = gr.languages["FoodsBraRGL"]
name = input("Write a sentence in portuguese: ")
try:
    i = ptbr.parse(name)
    p, e = i.__next__()
    print(e)
    print("You have written: " + ptbr.linearize(e))
except pgf.ParseError:
    print("This is not a valid sentence of FoodsBraRGL.")
