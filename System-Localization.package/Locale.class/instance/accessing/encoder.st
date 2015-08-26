encoder
	"This is a best effort.
	We should actually extend the primitives to be able to recover the encoding from the system instead of guessing it."
	Smalltalk os isWin32
		ifTrue: [ ^ UTF8TextConverter new ].
	Smalltalk os isMacOSX
		ifTrue: [ ^ UTF8TextConverter new ].
	Smalltalk os isMacOS
		ifTrue: [ ^ MacRomanTextConverter new ].
	Smalltalk os isUnix
		ifTrue: [ ^ UTF8TextConverter new ].
	^ UTF8TextConverter new