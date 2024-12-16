concrete PrescriptionsBraRGL of PrescriptionsRGL =
    PrescriptionsBraRGLLexicon **
open
    SyntaxPor,
    StructuralPor
in {
    lincat
        Phrase = Phr ;
        Medication = NP ;
        Kind = CN ;
        Quality = AP ;
    lin
        Is Medication Phrase = mkPhr (mkCl Medication quality) ;
        Quando Administration, Condition = mkPhr
}