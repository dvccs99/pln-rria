    concrete PrescriptionBra of Prescription = open Prelude in {
      lincat Prescricao, Medicamento, Dose, TempFreq, Turno = SS ;
      lin
        Aplicacao Administracao TempFreq = ss(Administracao.s ++ "durante" ++ TempFreq.s) ;
        Tempo Duracao Frequencia = ss(Duracao.s ++ "a cada" ++ Frequencia.s) ;
        f6Horas = ss "6 horas" ;
        f12Horas = ss "12 horas" ;
        f24Horas = ss "24 horas" ;
        t1Semana = ss "1 semana" ;
        t2Semanas = ss "2 semanas" ;
        t1Mes = ss "1 mes" ;
        t2Meses = ss "2 meses" ;
        Aplicar Dose = ss ("aplicar" ++ Dose.s) ;
        Tomar Dose = ss ("tomar" ++ Dose.s) ;
        Injetar Dose = ss ("injetar" ++ Dose.s) ;
        Qtd Medicamento = ss ("5mg de" ++ Medicamento.s) ;
        Insulina = ss "insulina" ;
        Diazepam = ss "diazepam" ;
        Cefalexina = ss "cefalexina" ;
        Ciprofloxacino = ss "ciprofloxacino" ;
    }
