testGlobals
	{ Smalltalk . RBMessageNode . Trait . TClass . TBehavior . GTInspector . Object . Class . CompiledMethod } 
		do: [ :each | self checkAllPresentationsOf: each ]
		displayingProgress: 'Testing GTInspector globals (#testGlobals)'