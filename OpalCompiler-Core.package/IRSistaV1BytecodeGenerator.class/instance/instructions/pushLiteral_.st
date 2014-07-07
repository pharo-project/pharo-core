pushLiteral: object

	| index interval |
	stack push.
	(index := SpecialConstants identityIndexOf: object ifAbsent: 0) > 0 ifTrue: [
		^ self nextPut: (Bytecodes at: #pushConstantTrue) + index - 1].

	object class == SmallInteger ifTrue: [ 
		(object > -32768 and: [object < 32767]) ifTrue: [ ^ self pushSmallInteger: object ] ].
	"object class == Character ifTrue: [ ^ self pushCharacter: object ]."
	"object class == SmallFloat ifTrue: [ ^ self pushSmallFloat: object ]."

	(index := literals literalIndexOf: object ifAbsent: 0) > 0 ifFalse: [
		index := self addLiteral: object].

	"single push"
	interval := Bytecodes at: #pushLiteralConstant.
	(index <= interval size) ifTrue: [
		^ self nextPut: (interval at: index)
	].
	" extended push"
	index <=  65536 ifFalse: [self tooManyVars: 'literals'].
	self pushExtA: index - 1 // 256.
	self nextPut: (Bytecodes at: #extendedPushLiteralConstant).
	self nextPut: index - 1 \\ 256.