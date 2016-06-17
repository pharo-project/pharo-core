deprecated: anExplanationString transformWith: aRule
	| rewriteRule method context node |
	(Smalltalk globals hasClassNamed: #RBParseTreeRewriter) 
		ifFalse: [ ^self deprecated: anExplanationString ].
	context := thisContext sender sender.
	method := context method.
	node := context sourceNodeExecuted.
	rewriteRule := (Smalltalk globals classNamed: #RBParseTreeRewriter) new replace: aRule key with: aRule value.
	(rewriteRule executeTree: node)
		ifFalse: [ ^ self ].
	node replaceWith: rewriteRule tree. 
	Author 
		useAuthor: 'AutoDeprecationRefactoring'
		during: [method methodClass compile: method ast formattedCode classified: method protocol]