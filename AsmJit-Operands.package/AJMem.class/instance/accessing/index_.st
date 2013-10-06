index: anIndex
	"Set the value of index, must be a general purpose register"
	self assert: (anIndex isGeneralPurpose).
	index := anIndex