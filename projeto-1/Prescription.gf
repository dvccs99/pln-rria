abstract Prescription = {
    flags
        startcat = Prescricao ;
    cat
        Medicamento ; Dose ; Administracao ; Duracao ; Frequencia ; TempFreq ; Prescricao ;
    fun
        Aplicacao : Administracao -> TempFreq -> Prescricao ;
        Tempo: Duracao -> Frequencia -> TempFreq ;
        f6Horas, f12Horas, f24Horas : Frequencia ;
        t1Semana, t2Semanas, t1Mes, t2Meses : Duracao ;
        Aplicar, Tomar, Injetar : Dose -> Administracao ;
        Qtd :  Medicamento -> Dose ;
        Diazepam, Insulina, Cefalexina, Ciprofloxacino : Medicamento ;
}
