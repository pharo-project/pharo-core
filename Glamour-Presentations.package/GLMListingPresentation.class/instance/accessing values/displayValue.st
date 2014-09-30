displayValue
	^ sortBlock 
		ifNil: [super displayValue]
		ifNotNil: [super displayValue sorted: sortBlock]