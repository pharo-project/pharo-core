testing
isAbstractClass
	^ (self allMethods anySatisfy: [:cm | cm sendsSelector: #subclassResponsibility ])
		or: [ self class allMethods anySatisfy: [:cm | cm sendsSelector: #subclassResponsibility ] ]