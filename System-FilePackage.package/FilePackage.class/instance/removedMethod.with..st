private
removedMethod: string with: chgRec
	| class tokens |
	tokens := Scanner new scanTokens: string.
	(tokens size = 3 and:[(tokens at: 2) == #removeSelector: ]) ifTrue:[
		class := self getClass: (tokens at: 1).
		^class removeSelector: (tokens at: 3).
	].
	(tokens size = 4 and:[(tokens at: 2) == #class and:[(tokens at: 3) == #removeSelector:]]) ifTrue:[
		class := self getClass: (tokens at: 1).
		^class metaClass removeSelector: (tokens at: 4).
	].
	doIts add: chgRec