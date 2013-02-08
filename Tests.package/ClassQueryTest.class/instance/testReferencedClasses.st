dependencies
testReferencedClasses
	"
	self debug: #testReferencedClasses
	"
	| refs |
	refs := Metaclass referencedClasses.
	self assert: (refs includes: ClassBuilder).

	refs := self class referencedClasses.
	self assert: (refs includesAllOf: {SoundService . Beeper})