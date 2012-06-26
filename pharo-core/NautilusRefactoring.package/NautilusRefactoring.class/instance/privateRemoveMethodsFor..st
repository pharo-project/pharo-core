private-method
privateRemoveMethodsFor: aCollection
	| selectors class |
	selectors := aCollection collect: #selector.
	class := aCollection first methodClass.
	(aCollection allSatisfy: [:e | e methodClass == class ]) ifFalse: [ ^ nil ].
	
	^ RBRemoveMethodRefactoring
		model: environment
		removeMethods: selectors
		from: class