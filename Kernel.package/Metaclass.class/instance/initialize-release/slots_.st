slots: slotsDefinition 
	"Declare additional named variables for my instance."
	^thisClass classBuilder
		class: self
		slots: slotsDefinition