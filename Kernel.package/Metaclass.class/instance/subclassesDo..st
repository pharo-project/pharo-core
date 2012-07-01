class hierarchy
subclassesDo: aBlock
	"Evaluate aBlock for each of the receiver's immediate subclasses."
	thisClass subclassesDo:[:aSubclass|
		"The following test is for Class class which has to exclude
		the Metaclasses being subclasses of Class."
		aSubclass isMeta ifFalse:[aBlock value: aSubclass class]].