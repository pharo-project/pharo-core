private
makeSureSuperClassExists: aString
	| theClass |
	theClass := Smalltalk globals at: aString asSymbol ifAbsent: [ nil ].
	theClass ifNotNil: [ ^ true ].
	^ self confirm: 'The super class ' , aString , ' does not exist in the system. Use nil instead?'