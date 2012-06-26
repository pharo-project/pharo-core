*FuelPackageLoader
rebindMethodDictionary

	self methodDict valuesDo: [ :aCompiledMethod | 
		aCompiledMethod 
			methodClass: self;
			rebindLiterals. ]