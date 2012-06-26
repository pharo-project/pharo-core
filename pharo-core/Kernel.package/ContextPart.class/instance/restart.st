controlling
restart
	"Unwind thisContext to self and resume from beginning.  Execute unwind blocks when unwinding.  ASSUMES self is a sender of thisContext"

	| ctxt unwindBlock |
	self isDead ifTrue: [self cannotReturn: nil to: self].
	self privRefresh.
	ctxt := thisContext.
	[	ctxt := ctxt findNextUnwindContextUpTo: self.
		ctxt isNil
	] whileFalse: [
		(ctxt tempAt: 2) ifNil:[
			ctxt tempAt: 2 put: true.
			unwindBlock := ctxt tempAt: 1.
			thisContext terminateTo: ctxt.
			unwindBlock value].
	].
	thisContext terminateTo: self.
	self jump.
