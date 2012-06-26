accessing
retract
	expanded := false.
	(self model isKindOf: NOCModel) ifTrue: [self model contract].