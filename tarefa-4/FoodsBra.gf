    concrete FoodsBra of Foods = open Prelude in {
        param Number = Sg | Pl ;
        lincat
            Phrase = SS ;
            Quality, Kind = {s : Number => Str} ;
            Item = {s : Str ; n : Number} ;
        oper
            det : Number -> Str -> {s : Number => Str} ->
                {s : Str ; n : Number} = \n, d, cn -> {s = d ++ cn.s ! n ; n = n} ;
            word : Str -> Str -> {s : Number => Str} = \limao, limoes -> {s = table {Sg => limao ; Pl => limoes}} ;
            regWord : Str -> {s : Number => Str} = \nome -> word nome (nome+"s") ;
            copula : Number -> Str =
            \n -> case n of {Sg => "é" ; Pl => "são"} ;
        lin
            Is item quality = ss (item.s ++ copula item.n ++ quality.s ! item.n) ;
            This kind = det Sg "esse" kind ;
            That kind = det Sg "esse" kind ;
            These kind = det Pl "esses" kind ;
            Those kind = det Pl "aqueles" kind ;
            QKind quality kind = {s = table {n => kind.s ! n ++ quality.s ! n}} ;
            Wine = regWord "vinho" ;
            Cheese = regWord "queijo" ;
            Fish = regWord "peixe" ;
            Very quality = {s = table {n =>
                ("muito") ++ quality.s ! n
             }} ;
            Fresh = regWord "fresco" ;
            Warm = regWord "morno" ;
            Italian = regWord "italiano" ;
            Expensive = regWord "caro" ;
            Delicious = regWord "delicioso" ;
            Boring = regWord "maçante" ;
    }
