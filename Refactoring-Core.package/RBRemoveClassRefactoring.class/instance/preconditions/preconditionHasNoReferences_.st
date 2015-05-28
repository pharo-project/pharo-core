preconditionHasNoReferences: aClass
	^ (RBCondition withBlock: [ (self hasReferencesTo: aClass asSymbol) not ])
		errorMacro: aClass , ' is referenced.<n>Browse references?';
		errorBlock: [ self openBrowserOn: (self environmentWithReferencesTo: aClass) ];
		yourself