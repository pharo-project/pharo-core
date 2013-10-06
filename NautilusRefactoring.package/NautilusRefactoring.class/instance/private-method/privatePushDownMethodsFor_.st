privatePushDownMethodsFor: aCollection
	| selectors class |
	selectors := aCollection collect: #selector.
	class := aCollection first methodClass.
	(aCollection allSatisfy: [:e | e methodClass == class ]) ifFalse: [ ^ nil ].
	
	^ RBPushDownMethodRefactoring
		model: environment
		pushDown: selectors
		from: class