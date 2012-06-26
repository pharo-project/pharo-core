as yet unclassified
newWithInternalBehaviors: internals internalMethods: methods globalSymbols: globalSymbols

	^self basicNew
		initializeWithInternalBehaviors: internals
		internalMethods: methods 
		globalSymbols: globalSymbols;
		yourself 
		