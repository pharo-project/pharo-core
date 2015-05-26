examples
	"self examples"

	| tt |
	Smalltalk globals at: #STranscript ifAbsent: [ self installThreadSafeAsSTranscript ].
	tt := Smalltalk globals at: #STranscript.
	tt open.
	tt
		nextPutAll: 'Pharo';
		flush;
		cr;
		tab.
	tt
		show: ' is cool';
		cr.
	tt reset.
	tt clear.
	tt
		nextPutAll: 'Pharo';
		flush;
		cr;
		tab.
	tt
		show: ' is really cool';
		cr