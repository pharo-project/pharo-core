instance creation
for: globalSymbols

	^ self basicNew
		initializeWith: (self valuesFor: globalSymbols);
		yourself.