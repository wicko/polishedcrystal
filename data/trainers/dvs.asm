TrainerClassDVsAndPersonality:
; entries correspond to trainer classes (see constants/trainer_constants.asm)
	table_width 6, TrainerClassDVsAndPersonality
	;  EVs  HP   Def  SAt  Ability  Gender
	;  *    Atk  Spd  SDf  Nature   Form
	db 127, $77, $77, $77, ABILITY_1 | QUIRKY, FEMALE ; carrie
	db 127, $77, $77, $77, ABILITY_1 | QUIRKY, MALE   ; cal
	db 127, $33, $33, $33, ABILITY_1 | QUIRKY, MALE   ; falkner
	db 127, $33, $33, $33, ABILITY_1 | QUIRKY, MALE   ; bugsy
	db 127, $44, $44, $44, ABILITY_1 | QUIRKY, FEMALE ; whitney
	db 127, $44, $44, $44, ABILITY_1 | QUIRKY, MALE   ; morty
	db 127, $55, $55, $55, ABILITY_1 | QUIRKY, MALE   ; chuck
	db 127, $55, $55, $55, ABILITY_1 | QUIRKY, FEMALE ; jasmine
	db 127, $66, $66, $66, ABILITY_1 | QUIRKY, MALE   ; pryce
	db 127, $66, $66, $66, ABILITY_1 | QUIRKY, FEMALE ; clair
	db 127, $77, $77, $77, ABILITY_1 | QUIRKY, MALE   ; will
	db 127, $77, $77, $77, ABILITY_1 | QUIRKY, MALE   ; koga
	db 127, $77, $77, $77, ABILITY_1 | QUIRKY, MALE   ; bruno
	db 127, $77, $77, $77, ABILITY_1 | QUIRKY, FEMALE ; karen
	db 127, $77, $77, $77, ABILITY_1 | QUIRKY, MALE   ; champion
	db 127, $77, $77, $77, ABILITY_1 | QUIRKY, MALE   ; brock
	db 127, $77, $77, $77, ABILITY_1 | QUIRKY, FEMALE ; misty
	db 127, $77, $77, $77, ABILITY_1 | QUIRKY, MALE   ; lt surge
	db 127, $77, $77, $77, ABILITY_1 | QUIRKY, FEMALE ; erika
	db 127, $77, $77, $77, ABILITY_1 | QUIRKY, FEMALE ; janine
	db 127, $77, $77, $77, ABILITY_1 | QUIRKY, FEMALE ; sabrina
	db 127, $77, $77, $77, ABILITY_1 | QUIRKY, MALE   ; blaine
	db 127, $77, $77, $77, ABILITY_1 | QUIRKY, MALE   ; blue
	db 127, $77, $77, $77, ABILITY_1 | QUIRKY, MALE   ; red
	db 127, $77, $77, $77, ABILITY_1 | QUIRKY, FEMALE ; leaf
	db   0, $77, $77, $77, ABILITY_1 | QUIRKY, MALE   ; rival0
	db  77, $77, $77, $77, ABILITY_1 | QUIRKY, MALE   ; rival1
	db 127, $77, $77, $77, ABILITY_1 | QUIRKY, MALE   ; rival2
	db   0, $33, $33, $33, ABILITY_1 | QUIRKY, FEMALE ; lyra1
	db 127, $33, $33, $33, ABILITY_1 | QUIRKY, FEMALE ; lyra2
	db   0, $00, $00, $00, ABILITY_1 | QUIRKY, MALE   ; youngster
	db   0, $00, $00, $00, ABILITY_1 | QUIRKY, MALE   ; bug catcher
	db   8, $00, $00, $00, ABILITY_1 | QUIRKY, MALE   ; camper
	db   8, $00, $00, $00, ABILITY_1 | QUIRKY, FEMALE ; picnicker
	db  16, $11, $11, $11, ABILITY_1 | QUIRKY, FEMALE ; twins
	db  16, $11, $11, $11, ABILITY_1 | QUIRKY, MALE   ; fisher
	db  16, $11, $11, $11, ABILITY_1 | QUIRKY, MALE   ; bird keeper
	db  24, $11, $11, $11, ABILITY_1 | QUIRKY, MALE   ; hiker
	db  32, $22, $22, $22, ABILITY_1 | QUIRKY, MALE   ; gruntm
	db  32, $22, $22, $22, ABILITY_1 | QUIRKY, FEMALE ; gruntf
	db  32, $22, $22, $22, ABILITY_1 | QUIRKY, MALE   ; pokefanm
	db  32, $22, $22, $22, ABILITY_1 | QUIRKY, FEMALE ; pokefanf
	db  48, $55, $33, $53, ABILITY_1 | QUIRKY, MALE   ; officerm
	db  48, $73, $53, $77, ABILITY_1 | QUIRKY, FEMALE ; officerf
	db  48, $65, $72, $56, ABILITY_1 | QUIRKY, FEMALE ; nurse
	db  40, $33, $33, $33, ABILITY_1 | QUIRKY, MALE   ; pokemaniac
	db  40, $33, $33, $33, ABILITY_1 | QUIRKY, FEMALE ; cosplayer
	db  40, $33, $33, $33, ABILITY_1 | QUIRKY, MALE   ; super nerd
	db  40, $33, $33, $33, ABILITY_1 | QUIRKY, FEMALE ; lass
	db  48, $44, $44, $44, ABILITY_1 | QUIRKY, FEMALE ; beauty
	db  48, $44, $44, $44, ABILITY_1 | QUIRKY, MALE   ; bug maniac
	db  48, $44, $44, $44, ABILITY_1 | QUIRKY, MALE   ; ruin maniac
	db  48, $44, $44, $44, ABILITY_1 | QUIRKY, MALE   ; firebreather
	db  48, $44, $44, $44, ABILITY_1 | QUIRKY, MALE   ; juggler
	db  48, $44, $44, $44, ABILITY_1 | QUIRKY, MALE   ; schoolboy
	db  48, $44, $44, $44, ABILITY_1 | QUIRKY, FEMALE ; schoolgirl
	db  48, $22, $44, $66, ABILITY_1 | QUIRKY, MALE   ; psychic
	db  48, $22, $44, $66, ABILITY_1 | QUIRKY, FEMALE ; hex maniac
	db  48, $44, $44, $44, ABILITY_1 | QUIRKY, MALE   ; sage
	db  48, $44, $44, $44, ABILITY_1 | QUIRKY, FEMALE ; medium
	db  56, $55, $55, $55, ABILITY_1 | QUIRKY, FEMALE ; kimono girl 1
	db  56, $55, $55, $55, ABILITY_1 | QUIRKY, FEMALE ; kimono girl 2
	db  56, $55, $55, $55, ABILITY_1 | QUIRKY, FEMALE ; kimono girl 3
	db  56, $55, $55, $55, ABILITY_1 | QUIRKY, FEMALE ; kimono girl 4
	db  56, $55, $55, $55, ABILITY_1 | QUIRKY, FEMALE ; kimono girl 5
	db  56, $55, $55, $55, ABILITY_1 | QUIRKY, MALE   ; elder
	db  48, $44, $44, $44, ABILITY_1 | QUIRKY, FEMALE ; sr&jr
	db  48, $44, $44, $44, ABILITY_1 | QUIRKY, MALE   ; couple
	db  48, $44, $44, $44, ABILITY_1 | QUIRKY, MALE   ; gentleman
	db  72, $44, $44, $44, ABILITY_1 | QUIRKY, MALE   ; rich boy (high EVs from vitamins)
	db  48, $44, $44, $44, ABILITY_1 | QUIRKY, FEMALE ; lady
	db  24, $55, $55, $55, ABILITY_1 | QUIRKY, FEMALE ; breeder (low EVs due to breeding)
	db  48, $44, $44, $44, ABILITY_1 | QUIRKY, FEMALE ; baker
	db  48, $44, $44, $44, ABILITY_1 | QUIRKY, FEMALE ; cowgirl
	db  48, $44, $44, $44, ABILITY_1 | QUIRKY, MALE   ; sailor
	db  48, $44, $44, $44, ABILITY_1 | QUIRKY, MALE   ; swimmerm
	db  48, $44, $44, $44, ABILITY_1 | QUIRKY, FEMALE ; swimmerf
	db  56, $55, $55, $55, ABILITY_1 | QUIRKY, MALE   ; burglar
	db  56, $55, $55, $55, ABILITY_1 | QUIRKY, MALE   ; pi
	db  56, $55, $55, $55, ABILITY_1 | QUIRKY, MALE   ; scientist
	db  56, $55, $55, $55, ABILITY_1 | QUIRKY, MALE   ; rocket scientist
	db  56, $55, $55, $55, ABILITY_1 | QUIRKY, MALE   ; boarder
	db  56, $55, $55, $55, ABILITY_1 | QUIRKY, FEMALE ; skier
	db  64, $77, $55, $55, ABILITY_1 | QUIRKY, MALE   ; blackbelt
	db  64, $77, $55, $55, ABILITY_1 | QUIRKY, FEMALE ; battle girl
	db  72, $57, $57, $55, ABILITY_1 | QUIRKY, MALE   ; dragon tamer
	db  72, $55, $55, $55, ABILITY_1 | QUIRKY, MALE   ; engineer
	db  72, $55, $55, $55, ABILITY_1 | QUIRKY, FEMALE ; teacher
	db  72, $55, $55, $55, ABILITY_1 | QUIRKY, MALE   ; guitaristm
	db  72, $55, $55, $55, ABILITY_1 | QUIRKY, FEMALE ; guitaristf
	db  72, $55, $55, $55, ABILITY_1 | QUIRKY, MALE   ; biker
	db  72, $55, $55, $55, ABILITY_1 | QUIRKY, MALE   ; roughneck
	db  72, $55, $55, $55, ABILITY_1 | QUIRKY, MALE   ; tamer
	db  72, $55, $55, $55, ABILITY_1 | QUIRKY, FEMALE ; artist
	db  72, $55, $55, $55, ABILITY_1 | QUIRKY, FEMALE ; aroma lady
	db  72, $55, $55, $55, ABILITY_1 | QUIRKY, MALE   ; waiter
	db  72, $55, $55, $55, ABILITY_1 | QUIRKY, FEMALE ; waitress
	db  72, $55, $55, $55, ABILITY_1 | QUIRKY, MALE   ; sightseerm
	db  72, $55, $55, $55, ABILITY_1 | QUIRKY, FEMALE ; sightseerf
	db  72, $66, $66, $66, ABILITY_1 | QUIRKY, MALE   ; sightseers
	db  64, $66, $66, $66, ABILITY_1 | QUIRKY, MALE   ; cooltrainerm
	db  64, $66, $66, $66, ABILITY_1 | QUIRKY, FEMALE ; cooltrainerf
	db  72, $66, $66, $66, ABILITY_1 | QUIRKY, MALE   ; ace duo
	db 128, $77, $77, $77, ABILITY_1 | QUIRKY, MALE   ; veteranm
	db 128, $77, $77, $77, ABILITY_1 | QUIRKY, FEMALE ; veteranf
	db  80, $33, $33, $33, ABILITY_1 | QUIRKY, MALE   ; proton
	db  96, $44, $44, $44, ABILITY_1 | QUIRKY, MALE   ; petrel
	db 128, $66, $66, $66, ABILITY_1 | QUIRKY, MALE   ; archer
	db 112, $55, $55, $55, ABILITY_1 | QUIRKY, FEMALE ; ariana
	db  80, $77, $77, $77, ABILITY_1 | QUIRKY, MALE   ; giovanni
	db 127, $77, $77, $77, ABILITY_1 | QUIRKY, MALE   ; prof oak
	db  80, $44, $44, $44, ABILITY_1 | QUIRKY, MALE   ; prof elm
	db 127, $77, $77, $77, ABILITY_1 | QUIRKY, FEMALE ; prof ivy
	db  88, $55, $55, $55, ABILITY_1 | QUIRKY, MALE   ; mysticalman
	db  88, $77, $77, $77, ABILITY_1 | QUIRKY, MALE   ; karate king
	db 127, $77, $77, $77, ABILITY_1 | QUIRKY, MALE   ; towertycoon
	db  88, $33, $38, $33, ABILITY_1 | QUIRKY, MALE   ; jessie&james
	db 127, $77, $77, $77, ABILITY_1 | QUIRKY, FEMALE ; lorelei
	db 127, $77, $77, $77, ABILITY_1 | QUIRKY, FEMALE ; agatha
	db 127, $77, $77, $77, ABILITY_1 | QUIRKY, MALE   ; steven
	db 127, $77, $77, $77, ABILITY_1 | QUIRKY, FEMALE ; cynthia
	db 127, $77, $77, $77, ABILITY_1 | QUIRKY, MALE   ; inver
	db  98, $66, $66, $66, ABILITY_1 | QUIRKY, FEMALE ; cheryl
	db  98, $66, $66, $66, ABILITY_1 | QUIRKY, MALE   ; riley
	db  98, $66, $66, $66, ABILITY_1 | QUIRKY, MALE   ; buck
	db  98, $66, $66, $66, ABILITY_1 | QUIRKY, FEMALE ; marley
	db  98, $66, $66, $66, ABILITY_1 | QUIRKY, FEMALE ; mira
	db  98, $66, $66, $66, ABILITY_1 | QUIRKY, FEMALE ; anabel
	db 127, $77, $77, $77, ABILITY_1 | QUIRKY, MALE   ; darach
	db 127, $77, $77, $77, ABILITY_1 | QUIRKY, FEMALE ; caitlin
	db 127, $77, $77, $77, ABILITY_1 | QUIRKY, FEMALE ; candela
	db 127, $77, $77, $77, ABILITY_1 | QUIRKY, FEMALE ; blanche
	db 127, $77, $77, $77, ABILITY_1 | QUIRKY, MALE   ; spark
	db 127, $77, $77, $77, ABILITY_1 | QUIRKY, FEMALE ; flannery
	db 127, $77, $77, $77, ABILITY_1 | QUIRKY, FEMALE ; maylene
	db 127, $77, $77, $77, ABILITY_1 | QUIRKY, FEMALE ; skyla
	db 127, $77, $77, $77, ABILITY_1 | QUIRKY, FEMALE ; valerie
	db 127, $77, $77, $77, ABILITY_1 | QUIRKY, MALE   ; kukui
	db  98, $66, $66, $66, ABILITY_1 | QUIRKY, MALE   ; victor
	db 127, $77, $77, $77, ABILITY_1 | QUIRKY, MALE   ; bill
	db 127, $66, $66, $66, ABILITY_1 | QUIRKY, FEMALE ; yellow
	db 127, $66, $66, $66, ABILITY_1 | QUIRKY, MALE   ; walker
	db  98, $66, $66, $66, ABILITY_1 | QUIRKY, MALE   ; imakuni
	db 127, $77, $77, $77, ABILITY_1 | QUIRKY, MALE   ; lawrence
	db 127, $66, $66, $66, ABILITY_1 | QUIRKY, FEMALE ; rei
	assert_table_length NUM_TRAINER_CLASSES
