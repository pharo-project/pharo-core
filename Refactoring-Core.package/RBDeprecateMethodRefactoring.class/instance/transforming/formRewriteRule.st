formRewriteRule
	| searchString oldSelectorParts oldArgs replaceString newSelectorParts newArgs |
	oldSelectorParts := (class methodFor: oldSelector) parseTree selectorParts ifNil: [ '' ].
	oldArgs := (class methodFor: oldSelector) parseTree arguments ifNil: [ '' ].
	newSelectorParts := (class methodFor: newSelector) parseTree selectorParts ifNil: [ '' ].
	newArgs := (class methodFor: newSelector) parseTree arguments ifNil: [ '' ].
	searchString := 'self '.
	(oldSelectorParts size >= 1 and: [ oldArgs size >= 1 ])
		ifTrue: [ 1 to: oldSelectorParts size do: [ :i | oldSelectorParts add: ' ``@arg' , i asString , ' ' afterIndex: 2 * i - 1 ] ].
	(oldSelectorParts size >= 1 and: [ oldArgs size >= 1 ])
		ifTrue: [ 1 to: oldSelectorParts size do: [ :i | searchString := searchString , (oldSelectorParts at: i) value ] ]
		ifFalse: [ searchString := searchString , oldSelector asString ].
	replaceString := 'self '.
	(newSelectorParts size >= 1 and: [ newArgs size >= 1 ])
		ifTrue: [ 1 to: newSelectorParts size do: [ :i | newSelectorParts add: ' ``@arg' , i asString , ' ' afterIndex: 2 * i - 1 ] ].
	(newSelectorParts size >= 1 and: [ newArgs size >= 1 ])
		ifTrue: [ 1 to: newSelectorParts size do: [ :i | replaceString := replaceString , (newSelectorParts at: i) value ] ]
		ifFalse: [ replaceString := replaceString , newSelector asString ].
	^ RBParseTreeRewriter new replace: searchString with: replaceString