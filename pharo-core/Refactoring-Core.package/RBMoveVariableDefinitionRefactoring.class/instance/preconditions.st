preconditions
preconditions
	^(RBCondition definesSelector: selector in: class) 
		& (RBCondition withBlock: 
					[| methodSource |
					interval first <= interval last 
						ifFalse: [self refactoringError: 'Invalid variable name'].
					methodSource := class sourceCodeFor: selector.
					methodSource size >= interval last 
						ifFalse: [self refactoringError: 'Invalid range for variable'].
					name := methodSource copyFrom: interval first to: interval last.
					(self checkInstanceVariableName: name in: class) 
						ifFalse: 
							[self 
								refactoringError: name , ' does not seem to be a valid variable name.'].
					parseTree := class parseTreeFor: selector.
					self checkParseTree.
					true])