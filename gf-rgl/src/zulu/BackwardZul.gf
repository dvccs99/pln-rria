concrete BackwardZul of Backward = CatZul ** open ResZul,Prelude,ParamX in {

  flags optimize=all_subs ;

  lin

-- A repository of obsolete constructs, needed for backward compatibility.
-- They create spurious ambiguities if used in combination with Lang.

-- from Verb 19/4/2008

    ComplV2 v2 np = let
      oc = objConc np.agr v2.r v2.syl ;
      longform = case np.heavy of {
        True => False ;
        False => True
      } ;
      obj = np.s!NFull
    in {
      s = table {
        MainCl => \\a,p,t,l => let
          vform = (VFIndic MainCl p t) ;
          vpref_no_oc = verb_prefix_no_oc vform l v2.r a ;
          vpref_with_oc = verb_prefix_with_oc vform l a ;
          tp = tensePref vform v2.r v2.syl ; -- [] / zo- / zuku-
          -- oc = objConc np.agr v2.r v2.syl ; -- [] / m -
          -- longform = case np.heavy of {
          --   True => False ;
          --   False => True
          -- } ;
          r = v2.s!(rform (VFIndic MainCl p t) longform) ; -- bona / boni
          -- obj = np.s!NFull -- [] / inkomo
        in case np.proDrop of {
          True => vpref_with_oc ++ tp ++ oc ++ r ++ obj ;
          False => vpref_no_oc ++ tp ++ r ++ obj
        } ;
        RelCl => \\a,p,t,l => let
          vform = (VFIndic RelCl p t) ;
          rc = relConc vform a v2.r ; -- o- / onga-
          tp = tensePref vform v2.r v2.syl ; -- [] / zo- / zuku-
          -- oc = objConc np.agr v2.r v2.syl ; -- [] / m -
          -- longform = case np.heavy of {
          --   True => False ;
          --   False => True
          -- } ;
          r = v2.s!(rform vform longform) ; -- bona / boni
          -- obj = np.s!NFull -- [] / inkomo
        in case np.proDrop of {
          True => rc ++ tp ++ oc ++ r ++ obj ;
          False => rc ++ tp ++ r ++ obj
        }
      } ;
      imp_s = table {
        Sg => table {
          Pos => case np.proDrop of {
            True => oc ++ v2.s!R_e ++ obj ;
            False => v2.s!R_a ++ obj
          } ;
          Neg => case np.proDrop of {
            True => "unga" ++BIND++ oc ++ v2.s!R_i ++ obj ;
            False => "unga" ++BIND++ v2.s!R_i ++ obj
          }
        } ;
        Pl => table {
          Pos => case np.proDrop of {
            True => oc ++ v2.s!R_e ++BIND++"ni" ++ obj ;
            False => v2.s!R_a ++BIND++"ni" ++ obj
          } ;
          Neg => case np.proDrop of {
            True => "ninga" ++BIND++ oc ++ v2.s!R_i ++ obj ;
            False => "ninga" ++BIND++ v2.s!R_i ++ obj
          }
        }
      } ;
      inf_s = let
        inf_oc = case np.proDrop of {
          True => oc ;
          False => []
        }
      in
      table {
        NFull => table {
          Pos => "uku" ++BIND++ inf_oc ++ v2.s!R_a ++ obj ;
          Neg => "uku" ++BIND++ "nga" ++BIND++ inf_oc ++ v2.s!R_i ++ obj
        } ;
        NReduced | NPoss => table {
          Pos => "ku" ++BIND++ inf_oc ++ v2.s!R_a ++ obj ;
          Neg => "ku" ++BIND++ "nga" ++BIND++ inf_oc ++ v2.s!R_i ++ obj
        } ;
        NLoc => table {
          Pos => "ku"++BIND++poss_pron_stem!(Third C15 Sg) ++ "uku"++BIND++inf_oc ++ v2.s!R_a ++ obj ;
          Neg => "ku"++BIND++poss_pron_stem!(Third C15 Sg) ++ "uku"++BIND++"nga"++BIND++inf_oc ++ v2.s!R_a ++ obj
        }
      } ;
      iadv, advs, comp = [] ;
      ap_comp = \\_ => [] ;
      hasComp = np.heavy ;
      r = v2.r ;
      syl = v2.syl ;
      vptype = VNPCompl
    } ;

    -- ComplV3 v3 np1 np2 = v3 ** {
    --   -- s = v3.s ;
    --   oc = case np1.proDrop of {
    --     True => objConc np1.agr v3.r v3.syl ;
    --     False => []
    --   } ;
    --   comp = case np1.proDrop of {
    --     True => case v3.voice of {
    --       Active => np2.s ! NFull ++ np2.desc ;
    --       Passive => (cop_pref np2.agr) ++BIND++ np2.s ! NFull ++ np2.desc
    --     } ;
    --     False => case v3.voice of {
    --       Active => np1.s ! NFull ++ np1.desc ++ np2.s ! NFull ++ np2.desc ;
    --       Passive => (cop_pref np1.agr) ++BIND++ np1.s ! NFull ++ np1.desc ++ np2.s ! NFull ++ np2.desc
    --     }
    --   } ;
    --   iadv = [] ;
    --   advs = [] ;
    --   hasComp = True ;
    --   -- r = v3.r ;
    --   -- syl = v3.syl ;
    --   asp = Null ;
    --   asp_pref = \\_ => [] ;
    --   vptype = VNPCompl ;
    --   comp_agr = np1.agr ; -- this could be anything...
    --   ap_comp = \\_ => [] ;
    --   ap_bool = False ;
    --   aux_root = [] ;
    --   hasAux = False
    -- } ;
--     ComplV2V v np vp =
--       insertObj (\\a => infVP v.isAux vp False Simul CPos a)
--         (insertObj (\\_ => v.c2 ++ np.s ! Acc) (predV v)) ;
--     ComplV2S v np s =
--       insertObj (\\_ => conjThat ++ s.s)
--         (insertObj (\\_ => v.c2 ++ np.s ! Acc) (predV v)) ;
--     ComplV2Q v np q =
--       insertObj (\\_ => q.s ! QIndir)
--         (insertObj (\\_ => v.c2 ++ np.s ! Acc) (predV v)) ;
--     ComplV2A v np ap =
--       insertObj (\\_ => v.c2 ++ np.s ! Acc ++ ap.s ! np.a) (predV v) ;
--
--     ReflV2 v = insertObj (\\a => v.c2 ++ reflPron ! a) (predV v) ;
--
-- -- from Sentence 19/4/2008
--
--     SlashV2 np v2 =
--       mkClause (np.s ! Nom) np.a (predV v2) ** {c2 = v2.c2} ;
--
--     SlashVVV2 np vv v2 =
--       mkClause (np.s ! Nom) np.a
--         (insertObj (\\a => infVP vv.isAux (predV v2) False Simul CPos a) (predVV vv))  **
--         {c2 = v2.c2} ;
--
-- -- from Noun 19/4/2008
--
--     NumInt n = {s = n.s ; n = Pl} ;
--     OrdInt n = {s = n.s ++ "th"} ; --- DEPRECATED
--
--     DetSg quant ord = {
--       s = quant.s ! Sg ++ ord.s ;
--       n = Sg
--       } ;
--
--     DetPl quant num ord = {
--       s = quant.s ! num.n ++ num.s ++ ord.s ;
--       n = num.n
--       } ;
--
--     NoNum = {s = []; n = Pl } ;
--
--     DefArt = {s = \\_ => artDef} ;
--
--     IndefArt = {
--       s = table {
--         Sg => artIndef ;
--         Pl => []
--         }
--       } ;
--
--     MassDet = {s = \\_ => []} ;
--
--
--
-- -- from Structural 19/4/2008
--
--     that_NP = regNP "that" Sg ;
--     these_NP = regNP "these" Pl ;
--     this_NP = regNP "this" Sg ;
--     those_NP = regNP "those" Pl ;

}
