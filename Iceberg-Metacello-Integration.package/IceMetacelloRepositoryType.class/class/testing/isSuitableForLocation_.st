isSuitableForLocation: aLocationString
	^ self isSuitableForType: (self extractTypeOf: aLocationString) 