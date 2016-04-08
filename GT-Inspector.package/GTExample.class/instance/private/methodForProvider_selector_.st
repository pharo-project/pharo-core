methodForProvider: aProvider selector: aSelector
	^ GTExampleMethod new
		provider: aProvider;
		selector: aSelector asSymbol;
		yourself