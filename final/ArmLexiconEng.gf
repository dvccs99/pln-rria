concrete ArmLexiconEng of ArmLexicon = open AuxiliaryOperations in {
    lincat
        Medicine = {s: Str ; p: Presentation} ;
        Quantity = {s: Str ; n: Number} ;
    lin
        Aspirin = mkMedicine "Aspirin" Tablet ;
        Paracetamol = mkMedicine "Paracetamol" Tablet ;
        Amoxicillin = mkMedicine "Amoxicillin" Capsule ;
        Ibuprofen = mkMedicine "Ibuprofen" Capsule ;
        One = mkQuantity "one" Sg ;
        Two = mkQuantity "two" Pl ;
        Three = mkQuantity "three" Pl ;
        Four = mkQuantity "four" Pl ;
        Five = mkQuantity "five" Pl ;
}