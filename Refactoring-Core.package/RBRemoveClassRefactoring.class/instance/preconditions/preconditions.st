preconditions
	^classNames inject: RBCondition empty
		into: 
			[:sum :each | 
			| aClass |
			aClass := self model classNamed: each asSymbol.
			aClass isNil ifTrue: [self refactoringFailure: 'No such class'].
			sum 
				& (((RBCondition isMetaclass: aClass) 
						errorMacro: 'Cannot remove just the metaclass') not 
						& ((RBCondition withBlock: [(self hasReferencesTo: each asSymbol) not])
								errorMacro: each , ' is referenced.<n>Browse references?';
								errorBlock: 
										[self openBrowserOn: (RBBrowserEnvironment new 
													referencesTo: (Smalltalk globals associationAt: each ifAbsent: [each]))];
								yourself) 
							& ((RBCondition hasSubclasses: aClass) not 
									| ((RBCondition isEmptyClass: aClass) 
											& ((RBCondition withBlock: [aClass superclass notNil])
													errorMacro: 'Cannot remove top level class<n>when it has subclasses';
													yourself))))]