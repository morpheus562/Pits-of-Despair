BEGIN ~OHBSYMM~

IF ~  NumTimesTalkedTo(0)
Global("OHB_FINALE","GLOBAL",0)
~ THEN BEGIN 0
  SAY #95791
  IF ~~ THEN REPLY #95792 GOTO 3
  IF ~~ THEN REPLY #95793 GOTO 8
  IF ~  Global("OHB_REBELLION","GLOBAL",1)
~ THEN REPLY #95794 GOTO 10
  IF ~~ THEN REPLY #95795 GOTO 1
  IF ~~ THEN REPLY #95796 GOTO 2
END

IF ~~ THEN BEGIN 1
  SAY #95797
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2
  SAY #95798
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3
  SAY #95799
  IF ~~ THEN DO ~AddJournalEntry(95873,QUEST)
~ GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY #95800
  IF ~~ THEN REPLY #95801 GOTO 5
  IF ~~ THEN REPLY #95802 GOTO 13
  IF ~~ THEN REPLY #95803 GOTO 15
  IF ~~ THEN REPLY #95804 GOTO 1
  IF ~~ THEN REPLY #95805 GOTO 2
END

IF ~~ THEN BEGIN 5
  SAY #95806
  IF ~~ THEN REPLY #95807 GOTO 6
  IF ~~ THEN REPLY #95808 GOTO 1
  IF ~~ THEN REPLY #95809 GOTO 2
END

IF ~~ THEN BEGIN 6
  SAY #95810
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7
  SAY #95811
  IF ~~ THEN REPLY #95812 GOTO 15
  IF ~~ THEN REPLY #95813 GOTO 1
  IF ~~ THEN REPLY #95814 GOTO 2
END

IF ~~ THEN BEGIN 8
  SAY #95815
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9
  SAY #95816
  IF ~~ THEN REPLY #95817 GOTO 15
  IF ~~ THEN REPLY #95818 GOTO 1
  IF ~~ THEN REPLY #95819 GOTO 2
END

IF ~~ THEN BEGIN 10
  SAY #95820
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 11
  SAY #95821
  IF ~~ THEN REPLY #95822 GOTO 12
  IF ~~ THEN REPLY #95823 GOTO 1
  IF ~~ THEN REPLY #95824 GOTO 2
END

IF ~~ THEN BEGIN 12
  SAY #95825
  IF ~~ THEN DO ~AddJournalEntry(95874,QUEST)
~ EXIT
END

IF ~~ THEN BEGIN 13
  SAY #95826
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 14
  SAY #95827
  IF ~~ THEN REPLY #95828 GOTO 15
  IF ~~ THEN REPLY #95829 GOTO 12
  IF ~~ THEN REPLY #95830 GOTO 1
  IF ~~ THEN REPLY #95831 GOTO 2
END

IF ~  NumTimesTalkedToGT(0)
Global("OHB_FINALE","GLOBAL",0)
~ THEN BEGIN 15
  SAY #95832
  IF ~~ THEN REPLY #95833 GOTO 3
  IF ~~ THEN REPLY #95834 GOTO 16
  IF ~  Global("OHB_REBELLION","GLOBAL",1)
~ THEN REPLY #95835 GOTO 27
  IF ~  !Global("OHB_HIRE","GLOBAL",1)
Global("OHB_SYMM_HIRED","GLOBAL",0)
~ THEN REPLY #95836 GOTO 29
  IF ~~ THEN REPLY #95837 GOTO 1
END

IF ~~ THEN BEGIN 16
  SAY #95838
  IF ~~ THEN REPLY #95839 GOTO 17
  IF ~~ THEN REPLY #95840 GOTO 20
  IF ~  Global("OHB_SYMM_ARENA","LOCALS",1)
~ THEN REPLY #95841 GOTO 23
  IF ~  !Global("OHB_SYMM_ARENA","LOCALS",1)
~ THEN REPLY #95841 GOTO 22
END

IF ~~ THEN BEGIN 17
  SAY #95842
  IF ~~ THEN GOTO 18
END

IF ~~ THEN BEGIN 18
  SAY #95843
  IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 19
  SAY #95844
  IF ~~ THEN REPLY #95845 GOTO 15
  IF ~~ THEN REPLY #95846 GOTO 12
  IF ~~ THEN REPLY #95847 GOTO 1
  IF ~~ THEN REPLY #95848 GOTO 2
END

IF ~~ THEN BEGIN 20
  SAY #95849
  IF ~~ THEN GOTO 21
END

IF ~~ THEN BEGIN 21
  SAY #95850
  IF ~~ THEN REPLY #95851 GOTO 15
  IF ~~ THEN REPLY #95852 GOTO 12
  IF ~~ THEN REPLY #95853 GOTO 1
  IF ~~ THEN REPLY #95854 GOTO 2
END

IF ~~ THEN BEGIN 22
  SAY #95855
  IF ~~ THEN REPLY #95856 DO ~EraseJournalEntry(95873)
EraseJournalEntry(95874)
AddJournalEntry(95875,QUEST_DONE)
~ GOTO 15
  IF ~~ THEN REPLY #95857 DO ~EraseJournalEntry(95873)
EraseJournalEntry(95874)
AddJournalEntry(95875,QUEST_DONE)
~ GOTO 1
  IF ~~ THEN REPLY #95858 DO ~EraseJournalEntry(95873)
EraseJournalEntry(95874)
AddJournalEntry(95875,QUEST_DONE)
~ GOTO 2
END

IF ~~ THEN BEGIN 23
  SAY #95859
  IF ~~ THEN GOTO 24
END

IF ~~ THEN BEGIN 24
  SAY #95860
  IF ~~ THEN GOTO 25
END

IF ~~ THEN BEGIN 25
  SAY #95861
  IF ~~ THEN GOTO 26
END

IF ~~ THEN BEGIN 26
  SAY #95862
  IF ~~ THEN REPLY #95863 GOTO 15
  IF ~~ THEN REPLY #95864 GOTO 1
  IF ~~ THEN REPLY #95865 GOTO 2
END

IF ~~ THEN BEGIN 27
  SAY #95866
  IF ~~ THEN GOTO 28
END

IF ~~ THEN BEGIN 28
  SAY #95867
  IF ~~ THEN REPLY #95868 GOTO 12
  IF ~~ THEN REPLY #95869 GOTO 1
  IF ~~ THEN REPLY #95870 GOTO 2
END

IF ~~ THEN BEGIN 29
  SAY #95871
  IF ~~ THEN DO ~SetGlobal("OHB_HIRE","GLOBAL",1)
SetGlobal("OHB_SYMM_HIRED","GLOBAL",1)
SetGlobal("OHB_SYMM_ARENA","LOCALS",1)
~ EXIT
END

IF ~~ THEN BEGIN 30
  SAY #100510
  IF ~~ THEN EXTERN ~OHBTARTL~ 62
END

IF ~~ THEN BEGIN 31
  SAY #100511
  IF ~~ THEN EXTERN ~OHBTARTL~ 63
END

IF ~~ THEN BEGIN 32
  SAY #100512
  IF ~~ THEN EXTERN ~OHBTARTL~ 70
END

IF ~~ THEN BEGIN 33
  SAY #100522
  IF ~~ THEN REPLY #100550 GOTO 35
  IF ~~ THEN REPLY #100551 GOTO 36
  IF ~~ THEN REPLY #100552 GOTO 37
END

IF ~~ THEN BEGIN 34
  SAY #100523
  IF ~~ THEN REPLY #100553 GOTO 35
  IF ~~ THEN REPLY #100554 GOTO 36
  IF ~~ THEN REPLY #100552 GOTO 37
END

IF ~~ THEN BEGIN 35
  SAY #100524
  IF ~~ THEN DO ~SetGlobal("ohb_finale_arena","oh8300",2)
SetGlobal("OHB_SYMM_FIGHTS","GLOBAL",1)
ActionOverride("ohbtartl",EscapeArea())
ActionOverride("ohbarzol",Enemy())
ActionOverride("ohbberyl",Enemy())
Enemy()
~ EXIT
  IF ~  Global("OHB_TARTLE_FIGHTS","GLOBAL",1)
~ THEN DO ~SetGlobal("ohb_finale_arena","oh8300",2)
SetGlobal("OHB_SYMM_FIGHTS","GLOBAL",1)
ActionOverride("ohbtartl",Enemy())
ActionOverride("ohbarzol",Enemy())
ActionOverride("ohbberyl",Enemy())
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 36
  SAY #100525
  IF ~~ THEN EXTERN ~OHBBERYL~ 7
  IF ~  Global("OHB_TARTLE_FIGHTS","GLOBAL",1)
~ THEN EXTERN ~OHBTARTL~ 71
END

IF ~~ THEN BEGIN 37
  SAY #100526
  IF ~~ THEN DO ~SetGlobal("ohb_finale_arena","oh8300",2)
SetGlobal("OHB_SYMM_FIGHTS","GLOBAL",1)
ActionOverride("ohbtartl",EscapeArea())
ActionOverride("ohbarzol",Enemy())
ActionOverride("ohbberyl",Enemy())
Enemy()
~ EXIT
  IF ~  Global("OHB_TARTLE_FIGHTS","GLOBAL",1)
~ THEN DO ~SetGlobal("ohb_finale_arena","oh8300",2)
SetGlobal("OHB_SYMM_FIGHTS","GLOBAL",1)
ActionOverride("ohbtartl",Enemy())
ActionOverride("ohbarzol",Enemy())
ActionOverride("ohbberyl",Enemy())
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 38
  SAY #100619
  IF ~~ THEN EXTERN ~OHBBRODL~ 89
  IF ~  InMyArea("ohblea")
!Dead("ohblea")
~ THEN EXTERN ~OHBLEA~ 17
  IF ~  InMyArea("ohbdulf")
!Dead("ohbdulf")
~ THEN EXTERN ~OHBDULF~ 66
  IF ~  InMyArea("ohbtimmo")
!Dead("ohbtimmo")
~ THEN EXTERN ~OHBTIMMO~ 61
  IF ~  InMyArea("ohbgerro")
!Dead("ohbgerro")
~ THEN EXTERN ~OHBGERRO~ 40
  IF ~  InMyArea("ohbfeldr")
!Dead("ohbfeldr")
~ THEN EXTERN ~OHBFELDR~ 39
  IF ~  InMyArea("ohbmercy")
!Dead("ohbmercy")
~ THEN EXTERN ~OHBMERCY~ 42
  IF ~  InMyArea("ohbhort")
!Dead("ohbhort")
~ THEN EXTERN ~OHBHORT~ 45
END
