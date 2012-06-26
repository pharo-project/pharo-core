preconditions
preconditions
	| selector method |
	method := RBParser parseMethod: source
				onError: 
					[:string :position | 
					^RBCondition 
						withBlock: [self refactoringError: 'The sources could not be parsed']].
	selector := method selector.
	selector isNil ifTrue: [self refactoringError: 'Invalid source.'].
	^(RBCondition canUnderstand: selector in: class) not