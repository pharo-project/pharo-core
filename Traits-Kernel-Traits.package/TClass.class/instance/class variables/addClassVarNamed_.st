addClassVarNamed: aString 
	"Add the argument, aString, as a class variable of the receiver.
	Signal an error if the first character of aString is not capitalized,
	or if it is already a variable named in the class."
	| symbol oldState |
	oldState := self copy.
	aString first canBeGlobalVarInitial
		ifFalse: [^self error: aString, ' class variable name should be capitalized; proceed to include anyway.'].
	symbol := aString asSymbol.
	self withAllSubclasses do: 
		[:subclass | 
		(subclass bindingOf: symbol) ifNotNil:[
			^ self error: aString 
				, ' is already used as a variable name in class ' 
				, subclass name]].
	(self classPool includesKey: symbol) ifFalse: 
		["Pick up any refs in Undeclared"
		self classPool declare: symbol from: Undeclared.
		SystemAnnouncer uniqueInstance classDefinitionChangedFrom: oldState to: self]