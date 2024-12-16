abstract PrescriptionsRGL =
    PrescriptionsRGLLexicon **
{
    flags startcat = Phrase ;
    cat Phrase ; Medication ; Administration ; Condition ;
fun
    DeManha, DeTarde, DeNoite : Medication -> Administration -> Condition -> Phrase ;
}