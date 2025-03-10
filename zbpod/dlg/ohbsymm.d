// creator  : weidu (version 24900)
// argument : OHBSYMM.DLG
// game     : ..
// source   : ../DATA/BLACKPITS.BIF
// dialog   : ..\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~OHBSYMM~

IF ~  NumberOfTimesTalkedTo(0)
Global("OHB_FINALE","GLOBAL",0)
~ THEN BEGIN 0
  SAY @3070 /* Eh? Talking instead of training? Typical amateur. You newcomers are always wasting time talking, eating, sleeping... plotting. Take a lesson from a professional—spend your time honing your combat skills. You'll live longer that way.  */
  IF ~~ THEN REPLY @363 /* Who are you? */ GOTO 3
  IF ~~ THEN REPLY @3071 /* Amateur? What do you mean by that? */ GOTO 8
  IF ~  Global("OHB_REBELLION","GLOBAL",1)
~ THEN REPLY @3072 /* What do you mean, plotting? */ GOTO 10
  IF ~~ THEN REPLY @1460 /* Never mind. I must be going. */ GOTO 1
  IF ~~ THEN REPLY @3073 /* You sure are arrogant. It's a wonder Dennaton could find a helmet to fit your enormous head. */ GOTO 2
END

IF ~~ THEN BEGIN 1
  SAY @3074 /* Do what you will. I must return to training. */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2
  SAY @3075 /* I will remember your words when we meet in the arena. You will find that my blade is much sharper than your tongue. */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3
  SAY @3076 /* I am Symm Haximus, though I'd bet you already knew that. A gladiator of my fame can hardly go anywhere without being noticed. Such is the price of greatness. */
  IF ~~ THEN DO ~AddJournalEntry(95873,QUEST)
~ GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY @3077 /* Don't think it came easily, though. I've spent every day of my life training for battle. That's why I'm here talking to you instead of rotting in an unmarked grave. You and the other amateurs here would do well to follow my example. */
  IF ~~ THEN REPLY @3078 /* Do you have any advice for me regarding the arena? */ GOTO 5
  IF ~~ THEN REPLY @3079 /* You spent every day of your life training? I find that hard to believe. */ GOTO 13
  IF ~~ THEN REPLY @3080 /* I would like to ask you something else. */ GOTO 15
  IF ~~ THEN REPLY @1460 /* Never mind. I must be going. */ GOTO 1
  IF ~~ THEN REPLY @3081 /* When you swing your axe, does your enormous ego get in the way? */ GOTO 2
END

IF ~~ THEN BEGIN 5
  SAY @3082 /* Try not to get hit. You'll live longer. */
  IF ~~ THEN REPLY @3083 /* That seems sort of... obvious. */ GOTO 6
  IF ~~ THEN REPLY @3084 /* Very... enlightening. I must be going. */ GOTO 1
  IF ~~ THEN REPLY @3085 /* Symm Haximus, master of the obvious! Thanks for nothing. */ GOTO 2
END

IF ~~ THEN BEGIN 6
  SAY @3086 /* You would think so, wouldn't you? I can't tell you the number of new gladiators I've battled who pay little attention to their own defense. They think that a strong sword arm will save them. Sometimes it does for a few fights. But eventually, they fall. */
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7
  SAY @3087 /* Pay attention to your defenses. If your enemy cannot strike you, it is just a matter of time before you defeat them. The more cautious gladiator usually wins. Remember that and you might walk out of here alive. That is, if you do not have to face me. */
  IF ~~ THEN REPLY @3088 /* Thank you for the information. Can I ask you something else? */ GOTO 15
  IF ~~ THEN REPLY @1073 /* I must be going. */ GOTO 1
  IF ~~ THEN REPLY @3089 /* Yes, if I faced you, I would be instantly crushed by your overwhelming ego. */ GOTO 2
END

IF ~~ THEN BEGIN 8
  SAY @3090 /* You and the other newcomers. You've never been gladiators before. You haven't spent your lives training to battle before the crowd. You lack the discipline and determination of a true master of the arena. */
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9
  SAY @3091 /* If you were a true professional, we wouldn't even be having this conversation. We would both be training in the gym, but since you are an amateur here, we stand talking and wasting valuable training time. */
  IF ~~ THEN REPLY @3092 /* Oh, I understand. May I ask you something else? */ GOTO 15
  IF ~~ THEN REPLY @1073 /* I must be going. */ GOTO 1
  IF ~~ THEN REPLY @3093 /* Talking to you is definitely a waste of time. */ GOTO 2
END

IF ~~ THEN BEGIN 10
  SAY @3094 /* Ha. What do I mean by "plotting"? Please. I spend almost all of my time training in the gym, and even I have heard the rumors of your plans to escape. It is the mark of an amateur to let your plans be so widely known. */
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 11
  SAY @3095 /* Be assured, I have made Dennaton aware of your intentions, and he has taken the necessary precautions to keep you in your place. You would be wise to cease your futile planning and focus on training for the arena. */
  IF ~~ THEN REPLY @3096 /* But... why are you helping Dennaton? You are his slave too. */ GOTO 12
  IF ~~ THEN REPLY @1460 /* Never mind. I must be going. */ GOTO 1
  IF ~~ THEN REPLY @3097 /* Dennaton certainly has you on a short leash. Do you ever think for yourself? */ GOTO 2
END

IF ~~ THEN BEGIN 12
  SAY @3098 /* SLAVE? I am no slave! I am a master gladiator. Crowds of thousands gather to watch me fight. I am desired by women and envied by men. I am more free than those who watch me in the arena to escape their boring lives. Now leave me. I must train. */
  IF ~~ THEN DO ~AddJournalEntry(95874,QUEST)
~ EXIT
END

IF ~~ THEN BEGIN 13
  SAY @3099 /* A typical attitude... for an amateur. You have no concept of the amount of work that is required to become a master of the arena. Many believe that strength of arm is all that is required to become a great gladiator. */
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 14
  SAY @3100 /* Nothing could be further from the truth. Battles are won in the training room, not the arena. To be great, you must dedicate your life to training. Determination is the key to victory. */
  IF ~~ THEN REPLY @3088 /* Thank you for the information. Can I ask you something else? */ GOTO 15
  IF ~~ THEN REPLY @3101 /* Gladiators are just slaves, Symm. It's not a glorious profession. */ GOTO 12
  IF ~~ THEN REPLY @1073 /* I must be going. */ GOTO 1
  IF ~~ THEN REPLY @3102 /* I would think that carrying your giant ego around would be enough training. */ GOTO 2
END

IF ~  NumTimesTalkedToGT(0)
Global("OHB_FINALE","GLOBAL",0)
~ THEN BEGIN 15
  SAY @3103 /* What is it? I suppose I can take a short break from training. Make it quick, though. I did not become the master of the arena by talking. Training is the key to success, and I am the greatest there has ever been. */
  IF ~~ THEN REPLY @1207 /* Who are you again? */ GOTO 3
  IF ~~ THEN REPLY @3104 /* I would like to ask you about something else. */ GOTO 16
  IF ~  Global("OHB_REBELLION","GLOBAL",1)
~ THEN REPLY @3105 /* I am planning an escape. Can I count on your help? */ GOTO 27
  IF ~  !Global("OHB_HIRE","GLOBAL",1)
Global("OHB_SYMM_HIRED","GLOBAL",0)
~ THEN REPLY @1975 /* Will you assist me in my next arena fight? */ GOTO 29
  IF ~~ THEN REPLY @1460 /* Never mind. I must be going. */ GOTO 1
END

IF ~~ THEN BEGIN 16
  SAY @3106 /* Typical amateur. Always thinking of talking instead of training. I'll answer your questions, but then it's back to the training room! */
  IF ~~ THEN REPLY @3107 /* Tell me a little about yourself. */ GOTO 17
  IF ~~ THEN REPLY @3108 /* How did you end up here? */ GOTO 20
  IF ~  Global("OHB_SYMM_ARENA","LOCALS",1)
~ THEN REPLY @3109 /* Could you give me some tips on winning in the arena? */ GOTO 23
  IF ~  !Global("OHB_SYMM_ARENA","LOCALS",1)
~ THEN REPLY @3109 /* Could you give me some tips on winning in the arena? */ GOTO 22
END

IF ~~ THEN BEGIN 17
  SAY @3110 /* Am I to spend the whole day standing around talking and losing valuable training time? Very well. As you probably already know, I am Symm Haximus, professional gladiator and master of the arena. */
  IF ~~ THEN GOTO 18
END

IF ~~ THEN BEGIN 18
  SAY @3111 /* I have been a gladiator from my childhood, and I am undefeated! I have fought in countless cities and nations. My fame has spread across the face of Faerûn. */
  IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 19
  SAY @3112 /* You would be wise to follow my example and train regularly. If you wish to master the arena, spend less time talking and more time training. */
  IF ~~ THEN REPLY @3088 /* Thank you for the information. Can I ask you something else? */ GOTO 15
  IF ~~ THEN REPLY @3101 /* Gladiators are just slaves, Symm. It's not a glorious profession. */ GOTO 12
  IF ~~ THEN REPLY @1073 /* I must be going. */ GOTO 1
  IF ~~ THEN REPLY @3102 /* I would think that carrying your giant ego around would be enough training. */ GOTO 2
END

IF ~~ THEN BEGIN 20
  SAY @3113 /* It was inevitable. Dennaton has created the greatest arena fights of all Faerûn. Obviously, he needed the greatest gladiator in all of Faerûn. He contacted my former employer and hired my talents for use here. */
  IF ~~ THEN GOTO 21
END

IF ~~ THEN BEGIN 21
  SAY @3114 /* I must say that I am impressed. The accommodations are superior to any other arena I've fought in. Dennaton runs the shows expertly. The opponents are challenging. You can imagine a professional such as myself is easily bored by the usual arena fodder. */
  IF ~~ THEN REPLY @3088 /* Thank you for the information. Can I ask you something else? */ GOTO 15
  IF ~~ THEN REPLY @3115 /* You sound like you like it here. Aren't you tired of being a slave? */ GOTO 12
  IF ~~ THEN REPLY @1073 /* I must be going. */ GOTO 1
  IF ~~ THEN REPLY @3116 /* And you can imagine that I am getting bored with your bragging. */ GOTO 2
END

IF ~~ THEN BEGIN 22
  SAY @3117 /* I don't share my secrets with amateurs. Prove yourself. Fight at my side. If you're worthy, I'll share some of my techniques with you. */
  IF ~~ THEN REPLY @3118 /* Very well. Can I ask you something else? */ DO ~EraseJournalEntry(95873)
EraseJournalEntry(95874)
AddJournalEntry(95875,QUEST_DONE)
~ GOTO 15
  IF ~~ THEN REPLY @1073 /* I must be going. */ DO ~EraseJournalEntry(95873)
EraseJournalEntry(95874)
AddJournalEntry(95875,QUEST_DONE)
~ GOTO 1
  IF ~~ THEN REPLY @3119 /* Forget it. I'm not fighting next to an egomaniac. */ DO ~EraseJournalEntry(95873)
EraseJournalEntry(95874)
AddJournalEntry(95875,QUEST_DONE)
~ GOTO 2
END

IF ~~ THEN BEGIN 23
  SAY @3120 /* Very well. You've proven yourself to be a proficient warrior. I would be happy to share some of my secrets with you. */
  IF ~~ THEN GOTO 24
END

IF ~~ THEN BEGIN 24
  SAY @3121 /* If you face a group of enemies, always look for the wizards or priests. Those who wield magic are very dangerous and can incapacitate you, putting you at the mercy of the other combatants. */
  IF ~~ THEN GOTO 25
END

IF ~~ THEN BEGIN 25
  SAY @3122 /* There are some monsters that can attack your mind. Umber hulks and illithids are two such creatures. If you face them in the arena, be sure to protect your mind from them or the battle will be very difficult. */
  IF ~~ THEN GOTO 26
END

IF ~~ THEN BEGIN 26
  SAY @3123 /* If you face an assassin or rogue, take care that they're not able to get behind you. They can inflict serious damage if they catch you unaware. That is all I will share with you. The rest you must figure out for yourself, like I did. */
  IF ~~ THEN REPLY @3088 /* Thank you for the information. Can I ask you something else? */ GOTO 15
  IF ~~ THEN REPLY @1073 /* I must be going. */ GOTO 1
  IF ~~ THEN REPLY @3124 /* Have any more common knowledge to share with me? Thanks for nothing. */ GOTO 2
END

IF ~~ THEN BEGIN 27
  SAY @3125 /* Of course, I already know of your plans. Like a typical amateur, you've let rumors of your plans circulate among the other performers. */
  IF ~~ THEN GOTO 28
END

IF ~~ THEN BEGIN 28
  SAY @3126 /* I have already notified Dennaton of your plans, and he has taken the necessary measures to prevent your escape. Accept your new profession. Spend your time training, not plotting. */
  IF ~~ THEN REPLY @3096 /* But... why are you helping Dennaton? You are his slave too. */ GOTO 12
  IF ~~ THEN REPLY @1460 /* Never mind. I must be going. */ GOTO 1
  IF ~~ THEN REPLY @3097 /* Dennaton certainly has you on a short leash. Do you ever think for yourself? */ GOTO 2
END

IF ~~ THEN BEGIN 29
  SAY @3127 /* Assist you? Certainly. I never miss an opportunity for more training or to study the combat style of my fellow gladiators. You never know when we will be facing each other. I will meet you in the arena for your next fight. */
  IF ~~ THEN DO ~SetGlobal("OHB_HIRE","GLOBAL",1)
SetGlobal("OHB_SYMM_HIRED","GLOBAL",1)
SetGlobal("OHB_SYMM_ARENA","LOCALS",1)
~ EXIT
END

IF ~~ THEN BEGIN 30
  SAY @3128 /* Of course not, <CHARNAME>. There's no such thing as equality in this world… except in the arena. Only in the struggle for life are all made equal. */
  IF ~~ THEN EXTERN ~OHBTARTL~ 62
END

IF ~~ THEN BEGIN 31
  SAY @3129 /* You are a fool, <CHARNAME>. There is no freedom but death, no life but combat. */
  IF ~~ THEN EXTERN ~OHBTARTL~ 63
END

IF ~~ THEN BEGIN 32
  SAY @3130 /* Yes, the time I have been waiting for has come! I've little doubt you shall prove a worthy foe, <CHARNAME>. Let us now test our mettle in glorious combat! */
  IF ~~ THEN EXTERN ~OHBTARTL~ 70
END

IF ~~ THEN BEGIN 33
  SAY @3131 /* Tartle is a weakling and a fool, but I shall not be cowed so easily, <CHARNAME>! We shall fight, you and I. One of us shall walk away, and the other shall be carried out on their shield. */
  IF ~~ THEN REPLY @3132 /* You have a choice now, Symm: Fight for your freedom or for your captor. It's time to decide who you really are. */ GOTO 35
  IF ~~ THEN REPLY @3133 /* Ah, Haximus. Dennaton's slave to the last. */ GOTO 36
  IF ~~ THEN REPLY @3134 /* Then let us get to our match, Haximus. Defend yourself! */ GOTO 37
END

IF ~~ THEN BEGIN 34
  SAY @3135 /* After all those pretty words, <CHARNAME>, we still stand where we were. Come, we shall fight. One of us will walk away; the other shall be carried out. */
  IF ~~ THEN REPLY @3132 /* You have a choice now, Symm: Fight for your freedom or for your captor. It's time to decide who you really are. */ GOTO 35
  IF ~~ THEN REPLY @3136 /* Ah, Haximus. Dennaton's slave to the bitter, bloody end. */ GOTO 36
  IF ~~ THEN REPLY @3134 /* Then let us get to our match, Haximus. Defend yourself! */ GOTO 37
END

IF ~~ THEN BEGIN 35
  SAY @3137 /* Who I really am, <CHARNAME>, is a gladiator. Now defend yourself. */
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
  SAY @3138 /* I am nobody's "fool"! And yet… there is something to what you say. If I take up arms in defense of Dennaton, I will have lived and died as his pawn. No, Dennaton will use me no longer. The next time I fight in an arena, it will be by my own choosing and for my own glory. Very well, <CHARNAME>, the field is yours. I shall hinder you no further. */
  IF ~~ THEN EXTERN ~OHBBERYL~ 7
  IF ~  Global("OHB_TARTLE_FIGHTS","GLOBAL",1)
~ THEN EXTERN ~OHBTARTL~ 71
END

IF ~~ THEN BEGIN 37
  SAY @3139 /* Gladly. Let us make our match one for the ages! */
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
  SAY @3140 /* This arena is no more, but others await. The crowds will chant my name again. */
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
