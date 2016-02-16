rewriteTempsForContext: aContext
	
	| rewriter contextOnlyTemps |
	rewriter := RBParseTreeRewriter new.
	contextOnlyTemps := self notShadowedTemporaryNamesFrom: aContext.
	contextOnlyTemps withIndexDo: [ :tempName :index | 
		rewriter 
			replace: tempName, ' := ``@object'
			with: 'ThisContext namedTempAt:', index asString,  'put: ``@object';
			replace: tempName
			with: 'ThisContext namedTempAt:', index asString ].
	^ rewriter
		executeTree: self;
		tree