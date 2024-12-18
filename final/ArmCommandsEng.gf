concrete ArmCommandsEng of ArmCommands = ArmLexiconEng ** open AuxiliaryOperations in {
    lincat
        Command = {s: Str} ; 
    lin
        mkCommands Quantity Medicine = {s = "Grasp"++Quantity.s++(numberInflection (presentation2String(Medicine.p)) Quantity.n)++"of"++Medicine.s} ;
}