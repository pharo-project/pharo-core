formRewriteRule
	| searchString oldKeywords oldArgs replaceString newKeywords newArgs |
	oldKeywords := (class methodFor: oldSelector) parseTree keywords asOrderedCollection ifNil: [ '' ].
	oldArgs := (class methodFor: oldSelector) parseTree arguments ifNil: [ '' ].
	newKeywords := (class methodFor: newSelector) parseTree keywords asOrderedCollection ifNil: [ '' ].
	newArgs := (class methodFor: newSelector) parseTree arguments ifNil: [ '' ].
	
	searchString := 'self '.
	
	(oldKeywords size >= 1 and: [ oldArgs size >= 1 ])
		ifTrue: [ 1 to: oldKeywords size do: [ :i | oldKeywords add: ' ``@arg' , i asString , ' ' afterIndex: 2 * i - 1 ] ].
	(oldKeywords size >= 1 and: [ oldArgs size >= 1 ])
		ifTrue: [ 1 to: oldKeywords size do: [ :i | searchString := searchString , (oldKeywords at: i) ] ]
		ifFalse: [ searchString := searchString , oldSelector asString ].
	replaceString := 'self '.
	(newKeywords size >= 1 and: [ newArgs size >= 1 ])
		ifTrue: [ 1 to: newKeywords size do: [ :i | newKeywords add: ' ``@arg' , i asString , ' ' afterIndex: 2 * i - 1 ] ].
	(newKeywords size >= 1 and: [ newArgs size >= 1 ])
		ifTrue: [ 1 to: newKeywords size do: [ :i | replaceString := replaceString , (newKeywords at: i) ] ]
		ifFalse: [ replaceString := replaceString , newSelector asString ].
	^ RBParseTreeRewriter new replace: searchString with: replaceString