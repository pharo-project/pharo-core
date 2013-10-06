instanceVariableNames: instVarString 
	"Declare additional named variables for my instance."
	^thisClass classBuilder
		class: self
		instanceVariableNames: instVarString