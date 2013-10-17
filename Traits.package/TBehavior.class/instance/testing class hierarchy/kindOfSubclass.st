kindOfSubclass
	"Answer a String that is the keyword that describes the receiver's kind 
	of subclass, either a regular subclass, a variableSubclass, a  
	variableByteSubclass, a variableWordSubclass, or a weakSubclass."
	self isWeak
		ifTrue: [^ ' weakSubclass: '].
	^ self isVariable
		ifTrue: [self isBits
				ifTrue: [self isBytes
						ifTrue: [ ' variableByteSubclass: ']
						ifFalse: [ ' variableWordSubclass: ']]
				ifFalse: [ ' variableSubclass: ']]
		ifFalse: [ ' subclass: ']