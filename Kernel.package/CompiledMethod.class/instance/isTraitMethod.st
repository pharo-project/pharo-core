testing
isTraitMethod
	^ (self origin ~= self methodClass) and: [  self origin isTrait ]