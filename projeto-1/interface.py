from prescription_analyser import PrescriptionAnalyser


analyser = PrescriptionAnalyser()
running_program = True
while running_program:
    print("\nSelecione o modo de ativação: ")
    choice = input("\n[1] Tabelado\n[2] Livre\n[Outro] Sair\n\n")
    if choice not in ["1", "2"]:
        running_program = False
    else:
        running_analysis = True
        if choice == "1":
            while running_analysis:
                print("Como o medicamento deve ser administrado?: ")
                print("\n[1] Via oral\n[2] Injetado\n[3] Aplicação\n")
                print("[Outro] Sair\n\n")
                choice = input()
                if choice not in ["1", "2", "3"]:
                    running_analysis = False
        if choice == "2":
            while running_analysis:
                user_text = input("\nDigite a prescrição ou digite sair para deixar o programa: \n")
                correct_prescription = analyser.analyse(user_text)
                if correct_prescription:
                    print("A prescrição dada é aceitável.")
                elif user_text == "sair":
                    running_analysis = False
                else:
                    print("A prescrição dada é inaceitável.")
