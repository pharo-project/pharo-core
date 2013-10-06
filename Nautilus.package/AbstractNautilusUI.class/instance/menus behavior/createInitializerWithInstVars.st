createInitializerWithInstVars
	"Create a default initializer on the class side for a chosen list of instance variables"

	self createInitializerWithInstVarsOf: (self showInstance ifTrue: [ self selectedClass theNonMetaClass ] ifFalse: [ self selectedClass theMetaClass ])