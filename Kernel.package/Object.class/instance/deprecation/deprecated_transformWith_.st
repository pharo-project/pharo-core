deprecated: anExplanationString transformWith: aRule
	| rewriteRule method context node |
	self class environment 
		at:  #RBParseTreeRewriter 
		ifAbsent: [ ^self deprecated: anExplanationString ].
	context := thisContext sender sender.
	method := context method.
	node := context sourceNodeExecuted.
	rewriteRule := (self class environment at: #RBParseTreeRewriter) new 
		replace: aRule key with: aRule value.
	(rewriteRule executeTree: node)
		ifFalse: [ ^ self ].
	node replaceWith: rewriteRule tree. 
	Author 
		useAuthor: 'AutoDeprecationRefactoring'
		during: [method methodClass compile: method ast formattedCode classified: method protocol].
		
	Transcript 
		nextPutAll: 'The method ';
		nextPutAll: node selector printString;
		nextPutAll: ' has been deprecated. ';
		nextPutAll: anExplanationString; 
		cr; 
		flush