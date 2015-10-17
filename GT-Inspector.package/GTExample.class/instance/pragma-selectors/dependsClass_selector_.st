dependsClass: aClassOrClassName selector: aSelector
	self classNamed: aClassOrClassName do: [ :class | 
		children add: (GTExampleProxy new
			owner: self;
			provider: class gtExamplesProvider; " we have to resolve the kind of example again - it could be implemented in #class or in the provider of #class ! "
			selector: aSelector asSymbol;
			yourself) ]