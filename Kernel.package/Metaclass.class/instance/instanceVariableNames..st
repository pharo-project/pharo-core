initialize-release
instanceVariableNames: instVarString 
	"Declare additional named variables for my instance."
	^(ClassBuilder new)
		class: self
		instanceVariableNames: instVarString