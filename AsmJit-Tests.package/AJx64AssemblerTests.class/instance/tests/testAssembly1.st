testAssembly1

	
	self 
		assert: [ :a|
			a 
				push: a RBP;
				mov: a RSP -> a RBP;
				mov: 1024 -> a RAX;
				mov: a RBP -> a RSP;
				pop: a RBP;
				ret.]	
		bytes: #[
			85 
			72 139 236 
			72	199	192	0	4	0	0
			72 139 229 
			93 
			195]