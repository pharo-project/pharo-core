rewriteTempsForContext: aContext
	
	| rewriter  |
	rewriter := RBParseTreeRewriter new.
	aContext tempNames withIndexDo: [ :tempName :index | 
		rewriter 
			replace: tempName, ' := ``@object'
			with: 'ThisContext namedTempAt:', index asString,  'put: ``@object';
			replace: tempName
			with: 'ThisContext namedTempAt:', index asString ].
	^ rewriter
		executeTree: self;
		tree