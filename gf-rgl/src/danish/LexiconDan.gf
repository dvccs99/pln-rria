--# -path=.:../scandinavian:../common:../abstract:../../prelude


concrete LexiconDan of Lexicon = CatDan **
  open Prelude, ParadigmsDan, IrregDan in {

flags startcat=Phr ; lexer=textlit ; unlexer=text ;
    coding=utf8 ;
  optimize=values ;

lin
  airplane_N = mk2N "fly" "flyet" ;
  answer_V2S = mkV2S (regV "svare") (mkPrep "til") ;
  apartment_N = mk2N "værelse" "værelsen" ;
  apple_N = mk3N "æble" "æblet" "æbler" ;
  art_N = mk2N "kunst" "kunsten" ;
  ask_V2Q = mkV2Q spørge_V noPrep ;
  baby_N = mk2N "baby" "babyen" ; ---- babyen
  bad_A = regADeg "dårlig" ; ----
  bank_N = mk2N "bank" "banken" ;
  beautiful_A = mk3ADeg "smuk" "smukt" "smukke" ; ----
  become_VA = mkVA blive_V ;
  beer_N = mk2N "øl" "ølet" ;
  beg_V2V = mkV2V bede_V noPrep (mkPrep "at") ;
  big_A = irregADeg "stor" "større" "størst";
  bike_N = mkN "cykel" "cykeln" "cykler" "cyklerne" ; ----
  bird_N = mk2N "fugl" "fuglen" ;
  black_A = mk2ADeg "sort" "sort" ;
  blue_A = mk2ADeg "blå" "blått";
  boat_N = mk3N "båd" "båden" "både" ;
  book_N = mkN "bog" "bogen" "bøger" "bøgene" ;
  boot_N = mkN "støvle" "støvlen" "støvler" "støvlerne" ;
  boss_N = mk2N "chef" "chefen" ;
  boy_N = mk2N "dreng" "drengen" ;
  bread_N = mk2N "brød" "brødet" ;
  break_V2 = dirV2 (mk2V "knuse" "knuste") ;
  broad_A = regADeg "bred" ;
  brother_N2 = mkN2 (mk3N "broder" "brodren" "brødre") (mkPrep "til") ; ----
  brown_A = regADeg "brun" ;
  butter_N = mk2N "smør" "smøret" ;
  buy_V2 = dirV2 (mk2V "købe" "købte") ; ----
  camera_N = mk2N "kamera" "kameraen" ; ----
  cap_N = mk2N "hue" "huen" ;
  car_N = mk2N "bil" "bilen" ;
  carpet_N = mk2N "tæppe" "tæppen" ;
  cat_N = mk3N "kat" "katten" "katte" ;
  ceiling_N = mk2N "loft" "loftet" ;
  chair_N = mk3N "stol" "stolen" "stole" ;
  cheese_N = mk2N "ost" "osten" ;
  child_N = mk3N "barn" "barnet" "børn" ; ----
  church_N = mk2N "kirke" "kirken" ;
  city_N = mk2N "by" "byen" ;
  clean_A = regADeg "ren" ;
  clever_A = regADeg "flink" ;
  close_V2 = dirV2 (mk2V "lukke" "lukkede") ;
  coat_N = mk2N "frakke" "frakken" ;
  cold_A = regADeg "kold" ;
  come_V = vaereV komme_V ;
  computer_N = mk2N "datamaskine" "datamaskinen" ;
  country_N = mk2N "land" "landet" ;
  cousin_N = mk3N "fætter" "fættren" "fættre" ; ----
  cow_N = mk2N "ku" "kuen" ; ----
  die_V = vaereV dø_V ;
  dirty_A = regADeg "smudsig" ; ----
  distance_N3 = mkN3 (regGenN "afstand" utrum) (mkPrep "fra") (mkPrep "til") ;
  doctor_N = mk2N "læge" "lægen" ;
  dog_N = mk2N "hund" "hunden" ;
  door_N = mk2N "dør" "døren" ;
  drink_V2 = dirV2 drikke_V ;
  easy_A2V = mkA2V (regA "nem") (mkPrep "for") ; ----
  eat_V2 = dirV2 (mk2V "spise" "spiste") ;
  empty_A = mkADeg "tøm" "tømt" "tømme" "tømmere" "tømmest" ; ----
  enemy_N = mk2N "fjende" "fjenden" ;
  factory_N = mk2N "fabrik" "fabriken" ;
  father_N2 = mkN2 ( (mk3N "far" "fadren" "fædre")) (mkPrep "til") ; ----
  fear_VS = mkVS (regV "frygte") ;
  find_V2 = dirV2 (irregV "finde" "fand" "fundet") ; ----
  fish_N = mk2N "fisk" "fisken" ;
  floor_N = mk2N "gulv" "gulvet" ;
  forget_V2 = dirV2 (mkV "glemme" "glemmer" "glemmes" "glemte" "glemt" "glem") ; ----
  fridge_N = mk2N "køleskab"  "køleskabet" ;
  friend_N = mk3N "ven" "vennen" "venner" ; ----
  fruit_N = mk2N "frugt" "frugten" ;
  fun_AV = mkAV (mkA "morsom" "morsomt" "morsomme") ; ----
  garden_N = mk2N "have" "haven" ;
  girl_N = mk2N "pige" "pigen" ;
  glove_N = mk2N "handske" "handsken" ;
  gold_N = mk2N "guld" "guldet" ;
  good_A = mkADeg "god" "godt" "gode" "bedre" "bedst" ; ----
  go_V = vaereV gå_V ;
  green_A = mk3ADeg "grøn" "grønt" "grønne" ;
  harbour_N = mk2N "havn" "havnen" ;
  hate_V2 = dirV2 (regV "hade") ;
  hat_N = mk3N "hat" "hatten" "hatte" ;
  hear_V2 = dirV2 (mk2V "høre" "hørte") ;
  hill_N = mk2N "høj" "højen" ;
  hope_VS = mkVS (regV "håbe") ;
  horse_N = mk3N "hest" "hesten" "heste" ;
  hot_A = regADeg "hed" ;
  house_N = mk3N "hus" "huset" "huse" ;
  important_A = regADeg "vigtig" ;
  industry_N = mk2N "industri" "industrien" ;
  iron_N = mk2N "jern" "jernet" ;
  john_PN = mkPN "John" utrum ;
  king_N = mk2N "konge" "kongen" ;
  know_V2 = dirV2 (mkV "kende" "kendte") ;
  know_VQ = mkVQ vide_V ;
  know_VS = mkVS vide_V ;
  lake_N = mk2N "sø" "søen" ;
  lamp_N = mk2N "lampe" "lampen" ;
  learn_V2 = dirV2 (mk2V "lære" "lærte") ;
  leather_N = mk2N "læder" "lædret" ;
  leave_V2 = dirV2 forlade_V ;
  like_V2 = mkV2 holde_V (mkPrep "af") ;
  listen_V2 = dirV2 (regV "lytte") ;
  live_V = mk2V "leve" "levde" ;
  long_A = irregADeg "lang" "længere" "længst" ; ----
  lose_V2 = dirV2 (regV "tabe") ;
  love_N = mk2N "kærlighed" "kærligheden" ;
  love_V2 = dirV2 (regV "elske") ;
  man_N =  mkN "mand" "manden" "mænd" "mændene" ;
  married_A2 = mkA2 (mk2A "gift" "gift") (mkPrep "med") ;
  meat_N = mk2N "kød" "kødet" ;
  milk_N = mk2N "mælk" "mælken" ;
  moon_N = mk2N "måne" "månen" ;
  mother_N2 = mkN2 (mkN "moder" "moderen" "mødre" "mødrene") (mkPrep "til") ; ----
  mountain_N = mk2N "bjerg" "bjerget" ;
  music_N = mk2N "musik" "musiken" ;
  narrow_A = regADeg "smal" ;
  new_A = mkADeg "ny" "nytt" "nye" "nyere" "nyest" ;
  newspaper_N = mk2N "avis" "avisen" ;
  oil_N = mk2N "olie" "olien" ;
  old_A = mkADeg "gammel" "gammelt" "gamle" "ældre" "ældst" ; ----
  open_V2 = dirV2 (regV "åbne") ;
  paint_V2A = mkV2A (regV "male") noPrep ;
  paper_N = mk2N "papir" "papiret" ;
  paris_PN = mkPN "Paris" neutrum ;
  peace_N = mk2N "fred" "freden" ;
  pen_N = mk2N "pen" "penen" ;
  planet_N = mk2N "planet" "planeten" ;
  plastic_N = mk2N "plast" "plasten" ;
  play_V2 = dirV2 (mk2V "spille" "spilte") ;
  policeman_N = mk2N "politibetjent" "politibetjenten" ; ----
  priest_N = mk2N "præst" "præsten" ;
  probable_AS = mkAS (regA "sandsynlig") ;
  queen_N = mk2N "dronning" "dronningen" ;
  radio_N = mk2N "radio" "radioen" ;
  rain_V0 = mkV0 (regV "regne") ;
  read_V2 = dirV2 (mk2V "læse" "læste") ;
  red_A = regADeg "rød" ;
  religion_N = mk2N "religion" "religionen" ;
  restaurant_N = mk2N "restaurant" "restauranten" ;
  river_N = mk2N "flod" "floden" ;
  rock_N = mk2N "sten" "stenen" ;
  roof_N = mk2N "tag" "taget" ;
  rubber_N = mk2N "gummi" "gummien" ;
  run_V = vaereV (regV "løbe") ;
  say_VS = mkVS sige_V ;
  school_N = mk2N "skole" "skolen" ;
  science_N = mk2N "videnskab" "videnskaben" ;
  sea_N = mk2N "hav" "havet" ;
  see_V2 = dirV2 se_V ;
  seek_V2 = mkV2 (mk2V "søge" "søgte") (mkPrep "efter") ;
  sell_V3 = dirV3 sælge_V (mkPrep "til") ;
  send_V3 = dirV3 (mk2V "sende" "sendte") (mkPrep "til") ;
  sheep_N = mk2N "får" "fåret" ;
  ship_N = mk2N "skib" "skibet" ;
  shirt_N = mk2N "skjorte" "skjorten" ;
  shoe_N = mk2N "sko" "skoen" ;
  shop_N = mk2N "butik" "butiken" ;
  short_A = regADeg "kort" ;
  silver_N = mk2N "sølv" "sølvet";
  sister_N = mk3N "søster" "søstren" "søstrer" ; ----
  sleep_V = sove_V ;
  small_A = mkADeg "lille" "lille" "små" "mindre" "mindst" ; ----
  snake_N = mk2N "slange" "slangen" ;
  sock_N = mk2N "sok" "sokken" ;
  speak_V2 = dirV2 (regV "tale") ; ----
  star_N = mk2N "stjerne" "stjernen" ;
  steel_N = mk2N "stål" "stålet" ;
  stone_N = mk2N "sten" "stenen" ;
  stove_N = mk2N "komfur" "komfuren" ;
  student_N = mk2N "student" "studenten" ;
  stupid_A = mk3ADeg "dum" "dumt" "dumme" ;
  sun_N = mk2N "sol" "solen" ;
  switch8off_V2 = dirV2 (partV (regV "lukke") "for") ;
  switch8on_V2 = dirV2 (partV (regV "lukke") "op") ;
  table_N = mk2N "bord" "bordet" ;
  talk_V3 = mkV3 (regV "tale") (mkPrep "til") (mkPrep "om") ;
  teacher_N = mkN "lærer" "læreren" "lærere" "lærerne" ;
  teach_V2 = dirV2 (mk2V "undervise" "underviste") ;
  television_N = mk2N "fjernsyn" "fjernsynet" ;
  thick_A = mk3ADeg "tyk" "tykt" "tykke" ;
  thin_A = mk2ADeg "tynd" "tyndt" ; ----
  train_N = mk2N "tog" "toget" ;
  travel_V = vaereV (mk2V "rejse" "rejste") ;
  tree_N = mkN "træ" "træet" "træer" "træene" ; ----
  ----  trousers_N = regGenN "trousers" ; ---- pl t !
  ugly_A = mk3ADeg "grim" "grimt" "grimme" ;
  understand_V2 = dirV2 (irregV "forstå" "forstod" "forstått") ;
  university_N = mk2N "universitet" "universitetet" ;
  village_N = mk2N "landsby" "landsbyen" ;
  wait_V2 = mkV2 (regV "vente") (mkPrep "på") ;
  walk_V = vaereV gå_V ;
  warm_A = regADeg "varm" ;
  war_N = mk2N "krig" "krigen" ;
  watch_V2 = mkV2 se_V (mkPrep "på") ;
  water_N = mk2N "vand" "vandet" ;
  white_A = regADeg "hvid" ;
  window_N = mkN "vindue" "vinduet" "vinduer" "vinduene" ; ---- er?
  wine_N = mk2N "vin" "vinen" ;
  win_V2 = dirV2 (irregV "vinde" "vand" "vundet") ;
  woman_N = mk2N "kvinde" "kvinden" ;
  wonder_VQ = mkVQ (depV (regV "undre")) ;
  wood_N = mkN "træ" "træet" "træer" "træene" ; ----
  write_V2 = dirV2 (irregV "skrive" "skrev" "skrevet") ;
  yellow_A = regADeg "gul" ;
  young_A = irregADeg "ung" "yngre" "yngst" ; ----

  do_V2 = dirV2 gøre_V ;
  now_Adv = mkAdv "nu" ;
  already_Adv = mkAdv "allerede" ;
  song_N = mk2N "sang" "sangen" ;
  add_V3 = mkV3 (regV "tilføje") noPrep (mkPrep "til") ; ----
  number_N = mk2N "nummer" "numret" ; ----
  put_V2 = dirV2 sætte_V ;
  stop_V = vaereV (regV "standse") ;
  jump_V = regV "hoppe" ;

  left_Ord = {s = "venstre" ; isDet = True} ;
  right_Ord = {s = "højre" ; isDet = True} ;
  far_Adv = mkAdv "fjern" ;
  correct_A = regA "rigtig" ;
  dry_A = mk3ADeg "tør" "tørt" "tørre" ;
  dull_A = regA "sløv" ;
  full_A = regA "fuld" ;
  heavy_A = irregADeg "tung" "tyngre" "tyngst" ;
  near_A = mkADeg "nære" "nære" "nære" "nærmere" "nærmest" ;
  rotten_A = mk3ADeg "rådden" "råddent" "rådne" ; ----
  round_A = regA "rund" ;
  sharp_A = regA "skarp" ;
  smooth_A = regA "jævn" ;
  straight_A = mk3ADeg "ret" "rett" "rette" ; ----
  wet_A = regA "våd" ;
  wide_A = regA "bred" ;
  animal_N = mk2N "dyr" "dyret" ;
  ashes_N = mk2N "aske" "asken" ;
  back_N = mk2N "ryg" "ryggen" ; ----
  bark_N = mk2N "bark" "barken" ;
  belly_N = mk2N "mave" "maven" ;
  blood_N = mk2N "blod" "blodet" ;
  bone_N = mk2N "ben" "benet" ;
  breast_N = mk2N "bryst" "brystet" ;
  cloud_N = mk2N "sky" "skyen" ;
  day_N = mk3N "dag" "dagen" "dage" ;
  dust_N = mk2N "støv" "støvet" ;
  ear_N = mk3N "øre" "øret" "ører" ;
  earth_N = mk2N "jord" "jorden" ;
  egg_N = mk2N "æg" "æget" ;
  eye_N = mk3N "øje" "øjet" "øjne" ;
  fat_N = mk2N "fedt" "fedtet" ;
  feather_N = mk2N "fjer" "fjeren" ;
  fingernail_N = mk2N "negl" "neglen" ;
  fire_N = mk2N "ild" "ilden" ;
  flower_N = mk2N "blomst" "blomsten" ;
  fog_N = mk2N "tåge" "tågen" ;
  foot_N = mk2N "fod" "føder" ; ----
  forest_N = mk2N "skov" "skoven" ;
  grass_N = mk2N "græs" "græset" ;
  guts_N = mk2N "tarm" "tarmen" ; ---- indvolde
  hair_N = mk2N "hår" "håret" ;
  hand_N = mk2N "hånd" "hånden" ;
  head_N = mk2N "hoved" "hovedet" ;
  heart_N = mk3N "hjerte" "hjertet" "hjerter" ;
  horn_N = mk2N "horn" "hornet" ;
  husband_N = mk2N "ægtefælle" "ægtefællen" ; ----
  ice_N = mk2N "is" "isen" ;
  knee_N = mkN "knæ" "knæt" "knær" "knæne" ; ----
  leaf_N = mk2N "løv" "løvet" ;
  leg_N = mk2N "ben" "benet" ;
  liver_N = mkN "lever" "leveren" "levrer" "levrene" ; ----
  louse_N = mk3N "lus" "lusen" "lus" ;
  mouth_N = mk2N "mund" "munden" ;
  name_N = mk2N "navn" "navnet" ;
  neck_N = mk2N "hals" "halsen" ;
  night_N = mk3N "nat" "natten" "nætter" ; ----
  nose_N = mk2N "næse" "næsen" ;
  person_N = mk2N "person" "personen" ;
  rain_N = mk2N "regn" "regnet" ;
  road_N = mk2N "vej" "vejen" ;
  root_N = mk3N "rod" "roden" "røder" ; ----
  rope_N = mk2N "reb" "rebet" ;
  salt_N = mk2N "salt" "saltet" ;
  sand_N = mk2N "sand" "sanden" ;
  seed_N = mk2N "frø" "frøet" ;
  skin_N = mk2N "skind" "skindet" ;
  sky_N = mk3N "himmel" "himlen" "himler" ; ----
  smoke_N = mk2N "røg" "røgen" ;
  snow_N = mk2N "snø" "snøen" ;
  stick_N = mk2N "pind" "pinden" ;
  tail_N = mk2N "hale" "halen" ;
  tongue_N = mk2N "tunge" "tungen" ;
  tooth_N = mkN "tand" "tanden" "tænder" "tændene" ; ----
  wife_N = mk2N "kone" "konen" ;
  wind_N = mk2N "vind" "vinden" ;
  wing_N = mk2N "vinge" "vingen" ;
  worm_N = mk2N "orm" "ormen" ;
  year_N = mk2N "år" "året" ;
  bite_V2 = dirV2 bide_V ;
  blow_V = mk2V "blæse" "blæste" ;
  burn_V = brænde_V ;
  count_V2 = dirV2 tælle_V ;
  cut_V2 = dirV2 (skære_V) ;
  dig_V = mk2V "grave" "gravde" ;
  fall_V = vaereV falde_V ;
  fear_V2 = dirV2 (regV "frygte") ;
  fight_V2 = dirV2 (regV "kæmpe") ;
  float_V = flyde_V ;
  flow_V = regV "strømme" ;
  fly_V = vaereV flyve_V ;
  freeze_V = fryse_V ;
  give_V3 = dirV3 give_V (mkPrep "til");
  hit_V2 = dirV2 (slå_V) ;
  hold_V2 = dirV2 (holde_V) ;
  hunt_V2 = dirV2 (regV "jage") ;
  kill_V2 = dirV2 (regV "dræbe") ;
  laugh_V = le_V ;
  lie_V = ligge_V ;
  play_V = regV "spille" ;
  pull_V2 = dirV2 (regV "trække") ;
  push_V2 = dirV2 (regV "skubbe") ;
  rub_V2 = dirV2 (gnide_V) ;
  scratch_V2 = dirV2 (regV "kradse") ;
  sew_V = mk2V "sy" "sydde" ;
  sing_V = synge_V ;
  sit_V = sidde_V ;
  smell_V = regV "lugte" ;
  spit_V = regV "spytte" ;
  split_V2 = dirV2 (regV "splitte") ; ----
  squeeze_V2 = dirV2 (regV "presse") ;
  stab_V2 = dirV2 (stikke_V) ;
  stand_V = vaereV stå_V ;
  suck_V2 = dirV2 (regV "sutte") ; ----
  swell_V = regV "svulme" ;
  swim_V = regV "svømme" ;
  think_V = mk2V "tænke" "tænkte" ; ----
  throw_V2 = dirV2 (regV "kaste") ;
  tie_V2 = dirV2 binde_V ;
  turn_V = regV "dreje" ;
  vomit_V = partV (regV "kaste") "op" ;
  wash_V2 = dirV2 (regV "vaske") ;
  wipe_V2 = dirV2 (regV "viske") ;
  breathe_V = regV "ånde" ;

  grammar_N = regN "grammatik" ;
  language_N = mk2N "sprog" "sproget" ;
  rule_N = mkN "regel" "regeln" "regler" "reglerne" ;

    question_N = mk2N "spørgsmål" "spørgsmålet" ;

----    ready_A = regA "färdig" ;
----    reason_N = regN "anledning" ;
    today_Adv = mkAdv "idag" ;
----    uncertain_A = mk3A "osäker" "osäkert" "osäkra" ;

} ;
