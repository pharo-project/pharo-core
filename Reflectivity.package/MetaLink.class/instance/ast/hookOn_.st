hookOn: aNode
	^(HookGenerator new 
		initForNode: aNode;
		link: self;
		hook) parent: aNode