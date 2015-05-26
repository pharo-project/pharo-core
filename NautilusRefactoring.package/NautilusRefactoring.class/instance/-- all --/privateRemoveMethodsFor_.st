privateRemoveMethodsFor: aCollection
	| selectors class |

	selectors := aCollection collect: #selector.
	class := aCollection first origin.
	(aCollection allSatisfy: [:e | e origin == class ]) ifFalse: [ ^ nil ].
	
	^ RBRemoveMethodRefactoring
		model: environment
		removeMethods: selectors
		from: class