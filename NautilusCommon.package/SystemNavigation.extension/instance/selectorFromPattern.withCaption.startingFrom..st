*NautilusCommon
selectorFromPattern: pattern withCaption: aCaption startingFrom: aClass
	"I look after a selector matching the given pattern in the withSuperclasses of the given class"

	| toMatch potentialSelectorsList potentialSelectorsListNames methodsNames exactMatch index foundSelector separatorIndex className separatorName class |
	(toMatch := pattern
		copyWithoutAll:
			{(Character space).
			(Character cr).
			(Character tab)}) isEmpty
		ifTrue: [ ^ nil ].
	potentialSelectorsList := aClass withAllSuperclasses reverse gather: [:each | each methodDict ].
	Symbol
		hasInterned: toMatch
		ifTrue: [ :patternSymbol || result |
			"Exact symbol provided"
			result := OrderedCollection new.
			potentialSelectorsList do: [:each | 
				(each selector = patternSymbol)
				ifTrue: [result add: each]].
			result size = 1 ifTrue: [^ result first ]].
	toMatch := (toMatch copyWithout: $.) asLowercase.
	potentialSelectorsListNames := potentialSelectorsList collect: [:each | each methodClass name, '>>#', each selector ].
	methodsNames := pattern last = $.
		ifTrue: [ potentialSelectorsListNames select: [ :nm | nm asLowercase = toMatch ] ]
		ifFalse: [ potentialSelectorsListNames select: [ :n | n includesSubstring: toMatch caseSensitive: false ] ].
	methodsNames isEmpty
		ifTrue: [ ^ nil ].
	exactMatch := methodsNames detect: [ :each | each asLowercase = toMatch ] ifNone: [ nil ].
	index := methodsNames size = 1
		ifTrue: [ 1 ]
		ifFalse: [ 
			exactMatch
				ifNil: [ UIManager default chooseFrom: methodsNames lines: #() title: aCaption ]
				ifNotNil: [ 
					methodsNames addFirst: exactMatch.
					UIManager default chooseFrom: methodsNames lines: #(1) title: aCaption ] ].
	index = 0
		ifTrue: [ ^ nil ].
	foundSelector := methodsNames at: index.
	separatorIndex := foundSelector findString: '>>#'.
	className := foundSelector copyFrom: 1 to: separatorIndex-1.
	separatorName := foundSelector copyFrom: separatorIndex + 2 to: foundSelector size.
	class := Smalltalk at: className asSymbol.

	
	^ class methodDict at: (Symbol readFromString: separatorName)
"
	self default selectorFromPattern: 'op' withCaption: '' startingFrom: Boolean
	self default selectorFromPattern: 'zork' withCaption: '' startingFrom: Boolean
	self default selectorFromPattern: 'op' withCaption: '' startingFrom: NautilusWindow
	self default selectorFromPattern: 'openInWorld' withCaption: '' startingFrom: NautilusWindow
"