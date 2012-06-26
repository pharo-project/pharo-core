accessing
expand
	
	expanded := true.
	(self model isKindOf: NOCModel) ifTrue: [self model expand].