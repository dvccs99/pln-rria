abstract ArmCommands = ArmLexicon ** {
    flags
        startcat = Command ;
    cat
        Command ;
    fun
        mkCommands : Quantity -> Medicine -> Command;
}