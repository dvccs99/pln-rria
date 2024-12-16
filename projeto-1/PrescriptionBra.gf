    concrete PrescriptionBra of Prescription = open Prelude in {
      lincat Prescricao, Medicamento, Dose, Tempo, Turno = SS ;
      lin
        Durante Dose Turno Tempo = ss (Dose.s ++ "durante" ++ AlgunsMeses.s ++ Turno.s) ;
        Qtd Medicamento = ss ("50 mg" ++ Medicamento.s) ;
        Insulina = ss "insulina" ;
        Diazepam = ss "diazepam" ;
        Cefalexina = ss "cefalexina" ;
        Ciprofloxacino = ss "ciprofloxacino" ;
        DeManha Tempo = ss "pela manhã" ;
        DeNoite Tempo = ss "pela noite" ;
        DeTarde Tempo = ss "pela tarde" ;
        DoisTurnos Turno Turno = ss (Turno.s ++ Turno.s) ;
        QualquerHorario Tempo = ss "a qualquer horário" ;
        AlgunsMeses = ss "alguns meses" ;
    }
