testHaltHook
	| link |
	link := MetaLink new 
	metaObject: Halt;
	selector: #now.
	self assert: link hook class = RBMessageNode.
	self assert: link metaAwareHook class = RBMessageNode.
	self assert: link metaAwareHook arguments first class = RBBlockNode.