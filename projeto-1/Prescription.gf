abstract Prescription = {
    flags
        startcat = Prescricao ;
    cat
        Prescricao ; Medicamento ; Tempo ; Turno ; Dose ;
    fun
        Durante : Dose -> Tempo -> Turno -> Prescricao ;
        Qtd :  Medicamento -> Dose ;
        DeManha, DeTarde, DeNoite : Tempo -> Turno ;
        DoisTurnos : Turno -> Turno -> Turno ;
        QualquerHorario : Turno -> Tempo ;
        Diazepam, Insulina, Cefalexina, Ciprofloxacino : Medicamento ;
        AlgunsMeses: Tempo ;
}