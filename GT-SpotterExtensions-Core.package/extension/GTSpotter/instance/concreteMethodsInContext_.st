concreteMethodsInContext: aContext
	" return the concrete methods described by the expression (Class >> #Selector) - evaluate it savely "
	| methods classAndSelectorStrings class selector |
	methods := OrderedCollection new.
	classAndSelectorStrings := (aContext textTrimmed splitOn: '>>') collect: [ :each | each trimBoth ].
	" check preconditions "
	classAndSelectorStrings size = 2 ifFalse: [ ^ methods ].
	classAndSelectorStrings second size < 2 ifTrue: [ ^ methods ].
	classAndSelectorStrings second first = $# ifFalse: [ ^ methods ].
	" retrieve concrete class and selector "
	(class := Smalltalk classNamed: classAndSelectorStrings first) ifNil: [ ^ methods ].
	selector := classAndSelectorStrings second allButFirst asSymbol.
	" retrieve the compiled method in the class and class hierarchy "
	class withAllSuperclassesDo: [ :aClass |
		([ aClass compiledMethodAt: selector ] on: Error do: [ nil ]) 
			ifNotNilDo: [ :compiledMethod | 
				aContext addItem: compiledMethod.
				methods add: compiledMethod ] ].
	^ methods