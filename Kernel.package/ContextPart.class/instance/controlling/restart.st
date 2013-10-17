restart
	"Unwind thisContext to self and resume from beginning.  Execute unwind blocks when unwinding.  ASSUMES self is a sender of thisContext"

	| context unwindBlock |
	self isDead ifTrue: [self cannotReturn: nil to: self].
	self privRefresh.
	context := thisContext.
	[	context := context findNextUnwindContextUpTo: self.
		context isNil
	] whileFalse: [
		(context tempAt: 2) ifNil:[
			context tempAt: 2 put: true.
			unwindBlock := context tempAt: 1.
			thisContext terminateTo: context.
			unwindBlock value ]].
	
	thisContext terminateTo: self.
	self jump.
