copying
copy 
	"Answer a copy of the receiver without a list of subclasses.
	 This copy is used by the ClassBuilder when mutating classes on redefinition.
	 (SystemNavigation new browseAllCallsOn: #copy localTo: ClassBuilder)"
	| newClass |
	newClass := self class copy new
		superclass: superclass
		methodDict: self methodDict copy
		format: format
		name: name
		organization: self organization copy
		instVarNames: instanceVariables copy
		classPool: classPool copy
		sharedPools: sharedPools copy.
	Class instSize+1 to: self class instSize do:
		[:offset | newClass instVarAt: offset put: (self instVarAt: offset)].
	^ newClass