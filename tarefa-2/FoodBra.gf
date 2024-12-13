    concrete FoodBra of Food = {
  
      lincat
        Phrase, Item, Kind, Quality = {s : Str} ;
  
      lin
        Is item quality = {s = item.s ++ "está" ++ quality.s} ;
        This kind = {s = "esse" ++ kind.s} ;
        That kind = {s = "esse" ++ kind.s} ;
        QKind quality kind = {s = kind.s ++ quality.s} ;
        Wine = {s = "vinho"} ;
        Cheese = {s = "queijo"} ;
        Fish = {s = "peixe"} ;
        Very quality = {s = "muito" ++ quality.s} ;
        Fresh = {s = "fresco"} ;
        Warm = {s = "morno"} ;
        Italian = {s = "italiano"} ;
        Expensive = {s = "caro"} ;
        Delicious = {s = "delicioso"} ;
        Boring = {s = "chato"} ;
    }

{-
 Para gerar 5 frases aleatórias em inglês e traduzidas para português, use o comando abaixo:
 gr -number=5 | linearize
  -}