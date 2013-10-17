resume: value through: firstUnwindContext
	"Unwind thisContext to self and resume with value as result of last send.
	 Execute any unwind blocks while unwinding.
	 ASSUMES self is a sender of thisContext."

	| context unwindBlock |
	self isDead 
		ifTrue: [ self cannotReturn: value to: self ].
	context := firstUnwindContext.
	[ context isNil ] whileFalse: [	
		(context tempAt: 2) ifNil: [
			context tempAt: 2 put: true.
			unwindBlock := context tempAt: 1.
			thisContext terminateTo: context.
			unwindBlock value].
		context := context findNextUnwindContextUpTo: self].
	thisContext terminateTo: self.
	^value
