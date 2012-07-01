instance variables
instVarNamed: aString

	^instanceVariables detect:[ :v| v name = aString asSymbol ] ifNone:[ nil ]