depends: aSelector
	children add: (GTExampleProxy new
		owner: self;
		provider: self provider;
		selector: aSelector asSymbol;
		yourself)