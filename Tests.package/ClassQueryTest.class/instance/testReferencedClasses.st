dependencies
testReferencedClasses
	"
	self debug: #testReferencedClasses
	"
	| refs |
	refs := Beeper referencedClasses.
	self assert: (refs includes: SoundService).

	refs := self class referencedClasses.
	self assert: (refs includesAllOf: {SoundService . Beeper})