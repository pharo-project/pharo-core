adding/removing methods
addSelector: selectorName classified: protocolName sourced: source

	self addMethod: ((self factory createMethodNamed: selectorName parent: self)
							protocol: protocolName;
							sourceCode: source;
							yourself)