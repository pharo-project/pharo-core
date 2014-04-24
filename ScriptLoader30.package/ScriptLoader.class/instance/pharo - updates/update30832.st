update30832
	"self new update30832"
	self withUpdateLog: 'Postscript:

Smalltalk allClassesDo: [ :c | c superclass addSubclass: c ]'.
	self loadTogether: self script485 merge: false.
	Smalltalk allClassesDo: [ :c | c superclass addSubclass: c ].
	self flushCaches.
