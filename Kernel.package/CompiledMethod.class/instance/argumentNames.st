source code management
argumentNames
	"Return an array with the argument names of the method's selector"

	| keywords stream argumentNames delimiters |
	delimiters := {Character space. Character cr}.
	keywords := self selector keywords.
	stream := self getSource readStream.
	argumentNames := OrderedCollection new.
	keywords do: [ :each | | argumentName |
		stream match: each.
		[stream peekFor: Character space] whileTrue.
		argumentName := ReadWriteStream on: String new.
		[(delimiters includes: stream peek) or: [stream peek isNil]]
			whileFalse: [argumentName nextPut: stream next].
		argumentName isEmpty ifFalse: [
			argumentNames add: argumentName contents trimBoth]].
	^(argumentNames copyFrom: 1 to: self numArgs) asArray