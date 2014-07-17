addClassVariable: aGlobal
	"Add the argument, aString, as a class variable of the receiver.
	Signal an error if the first character of aString is not capitalized,
	or if it is already a variable named in the class."
	| symbol oldState |
	oldState := self copy.
	aGlobal name first canBeGlobalVarInitial
		ifFalse: [^self error: aGlobal name, ' class variable name should be capitalized; proceed to include anyway.'].
	symbol := aGlobal name asSymbol.
	self withAllSubclasses do: 
		[:subclass | 
		(subclass bindingOf: symbol) ifNotNil:[
			^ self error: symbol asString 
				, ' is already used as a variable name in class ' 
				, subclass name]].
	(self classPool includesKey: symbol) ifFalse: 
		["Pick up any refs in Undeclared"
		self classPool declareVariable: aGlobal from: Undeclared.
		SystemAnnouncer uniqueInstance classDefinitionChangedFrom: oldState to: self]