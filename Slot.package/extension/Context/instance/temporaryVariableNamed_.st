temporaryVariableNamed: aName
	(self hasTemporaryVariableNamed: aName) ifFalse: [ ^nil ].
	^TemporaryVariable new name: aName