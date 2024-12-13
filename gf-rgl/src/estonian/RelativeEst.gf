concrete RelativeEst of Relative = CatEst ** open Prelude, ResEst, MorphoEst in {

  flags optimize=all_subs ; coding=utf8;

  lin

    RelCl cl = {
      s = \\t,a,p,_ => "nii" ++ "et" ++ cl.s ! t ! a ! p ;
      ---- sellainen
      c = NPCase Nom
      } ;

    RelVP rp vp = {
      s = \\t,ant,b,ag =>
        let
          agr = case rp.a of {
            RNoAg => ag ;
            RAg a => a
            } ;
          cl = mkClause
                  (subjForm
                        (emptyNP ** {s = rp.s ! complNumAgr agr ; a = agr})
                        vp.sc)
                      agr vp
        in
        cl.s ! t ! ant ! b ;
      c = NPCase Nom
      } ;

    RelSlash rp slash = {
      s = \\t,a,p,ag =>
            let
              cls = slash.s ! t ! a ! p ;
              who = appCompl True p slash.c2 (rp2np (complNumAgr ag) rp)
            in
            who ++ cls ;
      c = slash.c2.c.npf
      } ;

    FunRP p np rp = {
      s = \\n,c => appCompl True Pos p (rp2np n rp) ++ linNP c np ; --- is c OK?
      a = RAg np.a
      } ;

    IdRP = {
      s = \\n,c => relPron ! NCase n (npform2case n c) ;
      a = RNoAg
      } ;



}
