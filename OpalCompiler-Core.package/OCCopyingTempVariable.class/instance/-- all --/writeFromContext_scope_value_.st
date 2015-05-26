writeFromContext: aContext scope: contextScope value: aValue
	| myContext myScope |
	"take care to set the copy correctly up to the definition"
	
	myContext := aContext. myScope := contextScope.
	[myScope hasCopyingTempNamed: name] whileTrue:  [ 
		super writeFromContext: myContext scope: myScope value: aValue.
		myContext := myContext outerContext.
		myScope := myScope outerScope.
		myScope isInstanceScope ifTrue: [^aValue]
		].
	^aValue.
	
	