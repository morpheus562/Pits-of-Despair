// creator  : weidu (version 24900)
// argument : OHBWING.DLG
// game     : ..
// source   : ../DATA/BLACKPITS.BIF
// dialog   : ..\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~OHBWING~

IF ~~ THEN BEGIN 0
  SAY ~I tire of this prattle. Take them!~ [OH90460]
  IF ~~ THEN DO ~SetGlobal("OHB_BP2_CAPTURE","GLOBAL",4)
SetGlobalTimer("ohb_suzail_delay","oh8000",60)
SetGlobalTimer("ohb_najim_intro","oh8000",5)
Enemy()
ActionOverride("ohbbanno",Enemy())
ActionOverride("ohbthass",Enemy())
ActionOverride("ohbdorma",Enemy())
ActionOverride("ohbjoker",Enemy())
ActionOverride("ohbpol",Enemy())
ChangeEnemyAlly("ohbnajim",GOODCUTOFF)
ReallyForceSpellRES("ohbsuza1","ohbnajim")
~ EXIT
END

IF ~~ THEN BEGIN 1
  SAY ~Such a creature is beyond even our power. Send us on a suicide mission like that again and our relationship—to say nothing of your life—will be at an end.~ [OH100573]
  IF ~~ THEN REPLY ~You fought a tarrasque and lived? Impressive!~ EXTERN ~OHBDENNA~ 246
  IF ~~ THEN REPLY ~If you agreed to hunt a tarrasque, you got what you deserved.~ EXTERN ~OHBDENNA~ 246
  IF ~~ THEN REPLY ~I'll end your relationship with him right now.~ EXTERN ~OHBDENNA~ 246
  IF ~~ THEN REPLY ~I'm glad you made it. All scores will be settled this <DAYNIGHTALL>!~ EXTERN ~OHBDENNA~ 246
END

IF ~~ THEN BEGIN 2
  SAY ~It will be done.~ [OH100575]
  IF ~~ THEN DO ~SetGlobal("ohb_finale","global",8)
Enemy()
ActionOverride("ohbjoker",Enemy())
ActionOverride("ohbdorma",Enemy())
ActionOverride("ohbbanno",Enemy())
ActionOverride("ohbthass",Enemy())
ActionOverride("ohbpol",Enemy())
~ EXIT
END

IF ~  Global("OHB_START_BATTLE","GLOBAL",3)
Global("OHB_105","GLOBAL",1)
~ THEN BEGIN 3
  SAY ~Hold, Dennaton. These drow have not yet been paid for.~ [OH94236]
  IF ~~ THEN EXTERN ~OHBDENNA~ 272
END

IF ~~ THEN BEGIN 4
  SAY ~Yes. I will get my money now.~ [OH94238]
  IF ~~ THEN EXTERN ~OHBDENNA~ 273
END

IF ~~ THEN BEGIN 5
  SAY ~See that I receive every last copper coming to me. Or we will see how well YOU fare in these pits of yours.~ [OH94240]
  IF ~~ THEN EXTERN ~OHBDENNA~ 274
END
