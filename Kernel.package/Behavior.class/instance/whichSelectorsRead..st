queries
whichSelectorsRead: instVarName 
	"Answer a Set of selectors whose methods access the argument, 
	instVarName, as a named instance variable."
	^self whichSelectorsAccess: instVarName