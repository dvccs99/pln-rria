--# -path=.:../prelude:../common
--# -coding=utf8

-- This file is automaticaly generated by generate_tables_sgjp.
-- That program copies part of its source code to the output,
-- therefore this file is covered by the LGPLv3 as well as the
-- program itself. 
-- It is also possible that the input of the program was distributed
-- under some license. If it is GPL or similar my interpretation is that
-- this file is _not_ a copy of an input and is covered by LGPLv3, while 
-- the dictionary paired with this file is covered by both LGPLv3 and 
-- the license of the input.
-- Be careful not to violate the copyright low!
-- For details see http://www.mimuw.edu.pl/~asl/tabeleusz/ .

resource ParadigmsNounLit = ResLit ** open Prelude, (Predef=Predef) in {

     flags  coding=utf8;

--    oper mkN: (SubstForm => Str) -> Gender -> CommNoun;
--    oper mkN tab gen = { s = tab; g = gen };
    oper mkN : overload {
      mkN : Str -> CommNoun ; -- One argument: singular nominative
      mkN : (SubstForm => Str) -> Gender -> CommNoun ;-- Two arguments: singular nom, gender
      mkN : (SubstForm => Str) -> Number -> CommNoun ;-- Two arguments: singular nom, number
    } ;

    oper mkN = overload {
      mkN : Str -> CommNoun 
        = \lemma -> mkNoun lemma ;
      mkN : Str -> Gender -> CommNoun 
        = \lemma, gen ->  mkNounWithGender lemma gen ;-- Two arguments: singular nom, gender
      mkN : Str -> Number -> CommNoun 
        = \lemma, num ->  mkNounWithNumber lemma num ;-- Two arguments: singular nom, gender
      } ;

    mkNoun : Str -> CommNoun 
      = \lemma ->
        let nounInfo = guessParadigm lemma in
        lin N ({ s = nounInfo.p1; g = nounInfo.p2 ; nomType = Reg}) ; -- we make a CommNoun with Table and Gender

    mkNounWithGender : Str -> Gender -> CommNoun 
      = \lemma, gender ->
        let nounInfo = guessParadigmWithGender lemma gender in
        lin N ({ s = nounInfo.p1; g = nounInfo.p2 ; nomType = Reg }) ; -- we make a CommNoun with Table and Gender

    mkNounWithNumber : Str -> Number -> CommNoun 
      = \lemma, number ->
        let nounInfo = guessParadigmWithNumber lemma number in
        lin N ({ s = nounInfo.p1; g = nounInfo.p2 ; nomType = Reg }) ;

    -- Pluralia tantum not processed
    guessParadigm : Str -> (SubstForm => Str) * NounAgrCat
    = \lemma -> case lemma of {
        _ + "as" => <mkNTable1a lemma, SingPlur Masc> ;
        _ + "ai" => <mkNTable1a lemma, PlurOnly Masc> ;
        _ + "is" => <mkNTable1c lemma, SingPlur Masc> ;
        _ + "ys" => <mkNTable1d lemma, SingPlur Masc> ;
        _ + "us" => <mkNTable2 lemma, SingPlur Masc> ;
        _ + "uo" => <mkNTable_uo lemma, SingPlur Masc> ;
        _ + "a"  => <mkNTable_a lemma, SingPlur Fem> ;
        _ + "os" => <mkNTable_a lemma, PlurOnly Fem> ;
        _ + "ė"  => <mkNTable_e lemma, SingPlur Fem> ;
        _ + "ės" => <mkNTable_e lemma, PlurOnly Fem> ;
        _        => <mkNTable0 lemma, SingPlur Masc>} ;

    guessParadigmWithGender : Str -> Gender -> (SubstForm => Str) * NounAgrCat
    = \lemma, gender -> case <lemma,gender> of {
        <_ + "as",Masc> => <mkNTable1a lemma, SingPlur Masc> ;
        <_ + "ai",Masc> => <mkNTable1a lemma, PlurOnly Masc> ;
        <_ + "is",Masc> => <mkNTable1c lemma, SingPlur Masc> ;
        <_ + "is",Fem>  => <mkNTable_is lemma, SingPlur Fem> ;
        <_ + "ys",Masc> => <mkNTable1d lemma, SingPlur Masc> ;
        <_ + "ys",Fem>  => <mkNTable_is lemma, PlurOnly Fem> ;
        <_ + "us",Masc> => <mkNTable2 lemma, SingPlur Masc> ;
        <_ + "uo",_>    => <mkNTable_uo lemma, SingPlur gender> ;
        <_ + "a",_>     => <mkNTable_a lemma, SingPlur gender> ;
        <_ + "os",_>    => <mkNTable_a lemma, PlurOnly gender> ;
        <_ + "ė",_>     => <mkNTable_e lemma, SingPlur gender> ;
        <_ + "ės",_>    => <mkNTable_e lemma, PlurOnly gender> ;
        _               => <mkNTable0 lemma, SingPlur gender>} ;

    -- Is it very useful?
    guessParadigmWithNumber : Str -> Number -> (SubstForm => Str) * NounAgrCat
    = \lemma, number -> case <lemma,number> of {
        <_ + "as",_> => <mkNTable1a lemma, SingPlur Masc> ;
        <_ + "ai",_> => <mkNTable1a lemma, PlurOnly Masc> ;
        <_ + "is",_> => <mkNTable1c lemma, SingPlur Masc> ;
        <_ + "ys",Sing> => <mkNTable1d lemma, SingPlur Masc> ;
        <_ + "us",_> => <mkNTable2 lemma, SingPlur Masc> ;
        <_ + "ys",Plur> => <mkNTable_is lemma, PlurOnly Fem> ;
        <_ + "uo",_> => <mkNTable_uo lemma, SingPlur Masc> ;
        <_ + "a",_>  => <mkNTable_a lemma, SingPlur Fem> ;
        <_ + "os",_> => <mkNTable_a lemma, PlurOnly Fem> ;
        <_ + "ė",_>  => <mkNTable_e lemma, SingPlur Fem> ;
        <_ + "ės",_> => <mkNTable_e lemma, PlurOnly Fem> ;
        _            => <mkNTable0 lemma, SingPlur Masc>} ;


    oper nounPN : (SubstForm => Str) -> GenNum -> NounPhrase;
    oper nounPN forms gn = 
      { nom = forms!SF Sg Nom;
        voc = forms!SF Sg VocL;
        dep = table {
                GenC => forms!SF Sg Gen;
                AccC => forms!SF Sg Acc;
                DatC => forms!SF Sg Dat;
                InsC => forms!SF Sg Ins;
                LocC => forms!SF Sg Loc
              };
        gn = gn ;
        p  = P3 ;
        nomType = Reg
      } ;

    oper mkNTable0: Str -> SubstForm => Str; --%
    oper mkNTable0 lemma = 
--      let w = lemma in
    table { 
      _ => lemma
    };

    oper mkNTable1a: Str -> SubstForm => Str; --%
    oper mkNTable1a lemma = 
      case lemma of {
        s + "ai" =>
          table { 
            SF Sg Nom => s + "as"; -- Does not exist (Polish grammar double all plur forms)
            SF Sg Acc => s + "ą"; -- Does not exist (Polish grammar double all plur forms)
            SF Sg Gen => s + "o"; -- Does not exist (Polish grammar double all plur forms)
            SF Sg Ins => s + "u"; -- Does not exist (Polish grammar double all plur forms)
            SF Sg Dat => s + "ui"; -- Does not exist (Polish grammar double all plur forms)
            SF Sg Loc => s + "e"; -- Does not exist (Polish grammar double all plur forms)
            SF Sg VocL => s + "ai";  -- Does not exist (Polish grammar double all plur forms)

            SF Pl Nom => s + "ai";
            SF Pl Acc => s + "us";
            SF Pl Gen => s + "ų";
            SF Pl Ins => s + "ais";
            SF Pl Dat => s + "ams";
            SF Pl Loc => s + "uose";
            SF Pl VocL => s + "ai"
          } ;
        s + "as" =>
          table { 
            SF Sg Nom => s + "as";
            SF Sg Acc => s + "ą";
            SF Sg Gen => s + "o";
            SF Sg Ins => s + "u";
            SF Sg Dat => s + "ui";
            SF Sg Loc => s + "e";
            SF Sg VocL => s + "ai"; -- variante e

            SF Pl Nom => s + "ai";
            SF Pl Acc => s + "us";
            SF Pl Gen => s + "ų";
            SF Pl Ins => s + "ais";
            SF Pl Dat => s + "ams";
            SF Pl Loc => s + "uose";
            SF Pl VocL => s + "ai"
          } ;
        _ => Predef.error ("Error: " + lemma + " is not a 1st declension Noun")
      };

    oper mkNTable1c: Str -> SubstForm => Str; --%
    oper mkNTable1c lemma = 
      let s = Predef.tk 2 lemma in
    table { 
      SF Sg Nom => s + "is";
      SF Sg Acc => s + "į";
      SF Sg Gen => (soften s) + "io";
      SF Sg Ins => (soften s) + "iu";
      SF Sg Dat => (soften s) + "iui";
      SF Sg Loc => s + "yje"; -- variante iuje
      SF Sg VocL => s + "i"; 

      SF Pl Nom => (soften s) + "iai";
      SF Pl Acc => (soften s) + "ius";
      SF Pl Gen => (soften s) + "ių";
      SF Pl Ins => (soften s) + "iais";
      SF Pl Dat => (soften s) + "iams";
      SF Pl Loc => (soften s) + "iuose";
      SF Pl VocL => (soften s) + "iai"
    };

    oper mkNTable1d: Str -> SubstForm => Str; --%
    oper mkNTable1d lemma = 
      let s = Predef.tk 2 lemma in
    table { 
      SF Sg Nom => s + "ys";
      SF Sg Acc => s + "į";
      SF Sg Gen => (soften s) + "io";
      SF Sg Ins => (soften s) + "iu";
      SF Sg Dat => (soften s) + "iui";
      SF Sg Loc => s + "yje";
      SF Sg VocL => s + "y"; 

      SF Pl Nom => (soften s) + "iai";
      SF Pl Acc => (soften s) + "ius";
      SF Pl Gen => (soften s) + "ių";
      SF Pl Ins => (soften s) + "iais";
      SF Pl Dat => (soften s) + "iams";
      SF Pl Loc => (soften s) + "iuose";
      SF Pl VocL => (soften s) + "iai"
    };

    oper mkNTable2: Str -> SubstForm => Str; --%
    oper mkNTable2 lemma = 
      let s = Predef.tk 2 lemma in
    table { 
      SF Sg Nom => s + "us";
      SF Sg Acc => s + "ų";
      SF Sg Gen => s + "aus";
      SF Sg Ins => s + "umi";
      SF Sg Dat => s + "ui";
      SF Sg Loc => s + "uje";
      SF Sg VocL => s + "au"; 

      SF Pl Nom => s + "ūs";
      SF Pl Acc => s + "us";
      SF Pl Gen => s + "ų";
      SF Pl Ins => s + "umis";
      SF Pl Dat => s + "ums";
      SF Pl Loc => s + "uose";
      SF Pl VocL => s + "ūs"
    };

    oper mkNTable_is: Str -> SubstForm => Str; --%
    oper mkNTable_is lemma = 
      let s = Predef.tk 2 lemma in
    table { 
      SF Sg Nom => s + "is";
      SF Sg Acc => s + "į";
      SF Sg Gen => s + "ies";
      SF Sg Ins => s + "imi";
      SF Sg Dat => (soften s) + "iai";
      SF Sg Loc => s + "yje"; -- variante iuje
      SF Sg VocL => s + "ie"; 

      SF Pl Nom => s + "ys";
      SF Pl Acc => s + "is";
      SF Pl Gen => (soften s) + "ių"; -- There are exceptions
      SF Pl Ins => s + "imis";
      SF Pl Dat => s + "ims";
      SF Pl Loc => s + "yse";
      SF Pl VocL => s + "ys"
    };

    oper mkNTable_uo: Str -> SubstForm => Str; --%
    oper mkNTable_uo lemma = 
      case lemma of {
        s + "enys" =>
          table { 
            SF Sg Nom => s + "uo"; -- Does not exist (Polish grammar double all plur forms)
            SF Sg Acc => s + "enį"; -- Does not exist (Polish grammar double all plur forms)
            SF Sg Gen => s + "ens"; -- Does not exist (Polish grammar double all plur forms)
            SF Sg Ins => s + "eniu"; -- Does not exist (Polish grammar double all plur forms)
            SF Sg Dat => s + "eniui"; -- Does not exist (Polish grammar double all plur forms)
            SF Sg Loc => s + "enyje"; -- Does not exist (Polish grammar double all plur forms)
            SF Sg VocL => s + "enie";  -- Does not exist (Polish grammar double all plur forms)

            SF Pl Nom => s + "enys";
            SF Pl Acc => s + "enis";
            SF Pl Gen => s + "enų";
            SF Pl Ins => s + "enimis";
            SF Pl Dat => s + "enims";
            SF Pl Loc => s + "enyse";
            SF Pl VocL => s + "enys"
          } ;
        "šuo" =>
          table { 
            SF Sg Nom => "šuo"; 
            SF Sg Acc => "šunį"; 
            SF Sg Gen => "šuns"; 
            SF Sg Ins => "šuniu"; 
            SF Sg Dat => "šuniui";
            SF Sg Loc => "šunyje";
            SF Sg VocL => "šunie";

            SF Pl Nom => "šunys";
            SF Pl Acc => "šunis";
            SF Pl Gen => "šunų";
            SF Pl Ins => "šunimis";
            SF Pl Dat => "šunims";
            SF Pl Loc => "šunyse";
            SF Pl VocL => "šunys"
          } ;
        "sesuo" =>
          table { 
            SF Sg Nom => "sesuo"; 
            SF Sg Acc => "seserį"; 
            SF Sg Gen => "sesers"; 
            SF Sg Ins => "seserimi"; -- seseria 
            SF Sg Dat => "seseriai";
            SF Sg Loc => "seseryje";
            SF Sg VocL => "seserie";

            SF Pl Nom => "seserys";
            SF Pl Acc => "seseris";
            SF Pl Gen => "seserų";
            SF Pl Ins => "seserimis";
            SF Pl Dat => "seserims";
            SF Pl Loc => "seseryse";
            SF Pl VocL => "seserys"
          } ;
        s + "uo" =>
          table { 
            SF Sg Nom => s + "uo"; 
            SF Sg Acc => s + "enį"; 
            SF Sg Gen => s + "ens"; 
            SF Sg Ins => s + "eniu"; 
            SF Sg Dat => s + "eniui";
            SF Sg Loc => s + "enyje";
            SF Sg VocL => s + "enie";

            SF Pl Nom => s + "enys";
            SF Pl Acc => s + "enis";
            SF Pl Gen => s + "enų";
            SF Pl Ins => s + "enimis";
            SF Pl Dat => s + "enims";
            SF Pl Loc => s + "enyse";
            SF Pl VocL => s + "enys"
          } ;
        _ => Predef.error ("Error: " + lemma + " is not a 4th declension Noun")
    };

    oper mkNTable_a: Str -> SubstForm => Str; --%
    oper mkNTable_a lemma = 
      case lemma of {
        s + "os" =>
          table { 
            SF Sg Nom => s + "a"; -- Does not exist (Polish grammar double all plur forms)
            SF Sg Acc => s + "ą"; -- Does not exist (Polish grammar double all plur forms)
            SF Sg Gen => s + "os"; -- Does not exist (Polish grammar double all plur forms)
            SF Sg Ins => s + "a"; -- Does not exist (Polish grammar double all plur forms)
            SF Sg Dat => s + "ai"; -- Does not exist (Polish grammar double all plur forms)
            SF Sg Loc => s + "oje"; -- Does not exist (Polish grammar double all plur forms)
            SF Sg VocL => s + "a";  -- Does not exist (Polish grammar double all plur forms)

            SF Pl Nom => s + "os";
            SF Pl Acc => s + "as";
            SF Pl Gen => s + "ų";
            SF Pl Ins => s + "omis";
            SF Pl Dat => s + "oms";
            SF Pl Loc => s + "ose";
            SF Pl VocL => s + "os"
          } ;
        "marti" =>
          table { 
            SF Sg Nom => "marti";
            SF Sg Acc => "marčią";
            SF Sg Gen => "marčios";
            SF Sg Ins => "marčia";
            SF Sg Dat => "marčiai";
            SF Sg Loc => "marčioje";
            SF Sg VocL => "marčia"; -- Correct

            SF Pl Nom => "marčios";
            SF Pl Acc => "marčias";
            SF Pl Gen => "marčių";
            SF Pl Ins => "marčiomis";
            SF Pl Dat => "marčioms";
            SF Pl Loc => "marčiose";
            SF Pl VocL => "marčios"
          } ;
        s + "a" =>
          table { 
            SF Sg Nom => s + "a";
            SF Sg Acc => s + "ą";
            SF Sg Gen => s + "os";
            SF Sg Ins => s + "a";
            SF Sg Dat => s + "ai";
            SF Sg Loc => s + "oje";
            SF Sg VocL => s + "a"; 

            SF Pl Nom => s + "os";
            SF Pl Acc => s + "as";
            SF Pl Gen => s + "ų";
            SF Pl Ins => s + "omis";
            SF Pl Dat => s + "oms";
            SF Pl Loc => s + "ose";
            SF Pl VocL => s + "os"
          } ;
        _ => Predef.error ("Error: " + lemma + " is not a 4th declension Noun")
    };

    oper mkNTable_e: Str -> SubstForm => Str; --%
    oper mkNTable_e lemma = 
      case lemma of {
        s + "ės" =>
          table { 
            SF Sg Nom => s + "ė"; -- Does not exist (Polish grammar double all plur forms)
            SF Sg Acc => s + "ę"; -- Does not exist (Polish grammar double all plur forms)
            SF Sg Gen => s + "ės"; -- Does not exist (Polish grammar double all plur forms)
            SF Sg Ins => s + "e"; -- Does not exist (Polish grammar double all plur forms)
            SF Sg Dat => s + "ei"; -- Does not exist (Polish grammar double all plur forms)
            SF Sg Loc => s + "ėje"; -- Does not exist (Polish grammar double all plur forms)
            SF Sg VocL => s + "e";  -- Does not exist (Polish grammar double all plur forms)
      
            SF Pl Nom => s + "ės";
            SF Pl Acc => s + "es";
            SF Pl Gen => (soften s) + "ių";
            SF Pl Ins => s + "ėmis";
            SF Pl Dat => s + "ėms";
            SF Pl Loc => s + "ėse";
            SF Pl VocL => s + "ės"
          } ;
        "duktė" =>
          table { 
            SF Sg Nom => "duktė"; 
            SF Sg Acc => "dukterį"; 
            SF Sg Gen => "dukters"; 
            SF Sg Ins => "dukterimi"; -- dukteria 
            SF Sg Dat => "dukteriai";
            SF Sg Loc => "dukteryje";
            SF Sg VocL => "dukterie";

            SF Pl Nom => "dukterys";
            SF Pl Acc => "dukteris";
            SF Pl Gen => "dukterų";
            SF Pl Ins => "dukterimis";
            SF Pl Dat => "dukterims";
            SF Pl Loc => "dukteryse";
            SF Pl VocL => "dukterys"
          } ;
        s + "ė" =>
          table { 
            SF Sg Nom => s + "ė";
            SF Sg Acc => s + "ę";
            SF Sg Gen => s + "ės";
            SF Sg Ins => s + "e";
            SF Sg Dat => s + "ei";
            SF Sg Loc => s + "ėje";
            SF Sg VocL => s + "e"; 
      
            SF Pl Nom => s + "ės";
            SF Pl Acc => s + "es";
            SF Pl Gen => (soften s) + "ių";
            SF Pl Ins => s + "ėmis";
            SF Pl Dat => s + "ėms";
            SF Pl Loc => s + "ėse";
            SF Pl VocL => s + "ės"
          } ;
         _ => Predef.error ("Error: " + lemma + " is not a 4th declension Noun")
   };


}