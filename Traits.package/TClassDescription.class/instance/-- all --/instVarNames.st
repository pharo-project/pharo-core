instVarNames
	"Answer an Array of the receiver's instance variable names."

	self instanceVariables
		ifNil: [^#()]
		ifNotNil: [^self instanceVariables]