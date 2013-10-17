checkReferencesToAnyOf: aSelectorCollection 
	aSelectorCollection do: 
			[:each | 
			self model allReferencesTo: each
				do: 
					[:aRBMethod | 
					(aSelectorCollection includes: aRBMethod selector) 
						ifFalse: 
							[self 
								refactoringError: ('Possible call to <2s> in <1p><n>Browse references?' 
										expandMacrosWith: aRBMethod modelClass
										with: each)
								with: [self openBrowserOn: (RBBrowserEnvironment new referencesTo: each)]]]]