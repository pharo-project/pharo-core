enumerating
withAllSubclassesDo: aBlock 
	"Evaluate the argument, aBlock, for the receiver and each of its 
	subclasses."

	aBlock value: self.
	self allSubclassesDo: aBlock