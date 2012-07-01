instance variables
instVarNames
	"Answer an Array of the receiver's instance variable names."

	instanceVariables == nil
		ifTrue: [^#()]
		ifFalse: [^instanceVariables]