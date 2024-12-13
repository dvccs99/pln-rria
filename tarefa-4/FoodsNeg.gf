abstract FoodsNeg = Foods ** {
    flags
        startcat = Phrase ;
    fun
        NIs : Item -> Quality -> Phrase ; 
}