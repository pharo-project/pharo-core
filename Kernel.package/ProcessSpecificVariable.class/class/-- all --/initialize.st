initialize
	"Add Process::env if it is missing"
	
	(Process instVarNames includes: 'env')
	ifFalse: [ Process addInstVarNamed: 'env'].
	
	self resetSoleInstance.