testHaltHook
	| link node |
	link := MetaLink new 
	metaObject: Halt;
	selector: #now;
	level: 0.
	
	node := (Object>>#halt) ast copy.
	
	self assert: (link hookOn: node) class = RBMessageNode.
	self assert: (link hookOn: node) arguments first class = RBBlockNode.