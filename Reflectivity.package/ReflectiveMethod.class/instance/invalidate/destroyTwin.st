destroyTwin
	self methodClass basicAddSelector: self selector withMethod: compiledMethod.
	compiledMethod reflectiveMethod: nil.