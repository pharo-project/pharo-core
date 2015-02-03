meetsCondition: aCollection
	
	^ ((self condition phlowValue: self destination phlowObject withEnoughArguments: aCollection) = false) not