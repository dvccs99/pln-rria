resource AuxiliaryOperations = {
    param Number = Sg | Pl ;
    param Presentation = Tablet | Capsule ;
    oper presentation2String: Presentation -> Str = \pres -> case pres of {Tablet => "tablet" ; Capsule => "capsule"} ;
    oper numberInflection: Str -> Number -> Str = \tablet, n -> case n of {Sg => tablet ; Pl => tablet+"s"} ;
    oper mkMedicine: Str -> Presentation -> {s: Str ; p: Presentation} = \tablet, pres -> {s = tablet ; p = pres} ;
    oper mkQuantity: Str -> Number -> {s: Str ; n: Number} = \tablet, num -> {s = tablet ; n = num} ;
}

