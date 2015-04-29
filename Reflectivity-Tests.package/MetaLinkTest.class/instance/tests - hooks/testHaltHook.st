testHaltHook
	| link |
	link := MetaLink new 
	metaObject: Halt;
	selector: #now;
	level: 0.
	
	self assert: link hook class = RBMessageNode.
	self assert: link hook class = RBMessageNode.
	self assert: link hook arguments first class = RBBlockNode.