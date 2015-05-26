createExampleForMethod: aMethod from: anExampleProvider
	| newExample |

	newExample := self exampleClass new
		selector: aMethod selector;
		extractionStrategy: self;
		provider: anExampleProvider.
	newExample parentExample: (self parentExampleFor: newExample).
	^ newExample