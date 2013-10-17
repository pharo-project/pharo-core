checkForInstVarsOK: instVarString
	"Return true if instVarString does no include any names used in a subclass"
	| instVarArray |
	instVarArray := instVarString subStrings: ' '.
	self allSubclasses do:
		[:cl | cl instVarNames do:
			[:n | (instVarArray includes: n)
				ifTrue: [self error: n , ' is already used in ' , cl name.
						^ false]]].
	^ true