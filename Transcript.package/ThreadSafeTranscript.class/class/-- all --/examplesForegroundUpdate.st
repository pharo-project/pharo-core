examplesForegroundUpdate
	"self examplesForegroundUpdate"

	| tt length |
	Smalltalk globals at: #STranscript ifAbsent: [ self installThreadSafeAsSTranscript ].
	tt := Smalltalk globals at: #STranscript.
	tt open.
	length := 20.
	tt
		cr;
		show: 'STARTING----->'.	"Foreground updates"
	1000 to: 1000 + length do: [ :i | 
		tt show: '---' , i printString , '---'.
		(Delay forSeconds: 1) wait ]