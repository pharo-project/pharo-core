blockClosureEnsure: aBlockClosure message: aMessage
	| result ensureBlockReturnValue firstGotoContext |
	
	"evaluate the block without arguments"
	result := self blockClosureValue: aBlockClosure. 
	firstGotoContext := gotoContext.
	gotoContext := false.
	
	"evluate the passed in ensure block"
	ensureBlockReturnValue := self blockClosureValue: aMessage arguments first.
	self isExplicitelyReturning
		ifTrue: [ ^ ensureBlockReturnValue ]
		ifFalse: [ gotoContext := firstGotoContext ].
	
	^ result