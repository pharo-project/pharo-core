accessing instances and variables
classVarNames
	"Answer a set of the names of the class variables defined in the receiver's instance."
	
	thisClass ifNil: [ ^ Set new ].
	^thisClass classVarNames