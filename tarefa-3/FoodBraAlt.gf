    concrete FoodBraAlt of Food = open StringOper in {
      lincat Phrase, Item, Kind, Quality = SS ;
      lin
        Is item quality = cc item (prefix "está" quality) ;
        This kind = prefix "esse" kind ;
        That kind = prefix "esse" kind ;
        QKind quality kind = cc kind quality ;
        Wine = ss "vinho" ;
        Cheese = ss "queijo" ;
        Fish = ss "peixe" ;
        Very = prefix "muito" ;
        Fresh = ss "fresco" ;
        Warm = ss "morno" ;
        Italian = ss "italiano" ;
        Expensive = ss "caro" ;
        Delicious = ss "delicioso" ;
        Boring = ss "chato" ;
    }
