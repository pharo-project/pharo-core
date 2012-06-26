running
debug
	[ (self class selector: testSelector) runCase ]
		ensure: [ self classForTestResource resetResources: self resources ]