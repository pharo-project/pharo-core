invalidate
	self reflectiveMethod ifNil: [^self "do nothing"].
	self methodClass basicAddSelector: self selector withMethod: self reflectiveMethod.