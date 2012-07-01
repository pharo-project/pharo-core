*Polymorph-Widgets
myDependents: aCollectionOrNil
	"Improved performance dependents."
	
	aCollectionOrNil isNil 
		ifTrue: [self removeProperty: #myDependents]
		ifFalse: [self setProperty: #myDependents toValue: aCollectionOrNil]