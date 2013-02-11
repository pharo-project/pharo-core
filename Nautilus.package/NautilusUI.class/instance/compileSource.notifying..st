shortcuts from text morph
compileSource: aText notifying: aController

	| source category method |
	
	source := aText asString.
	category := self selectedCategory.
	method := self selectedMethod.
	category ifNil: [ method ifNotNil: [ category := method protocol ]].
	
	(category isNil and: [ method isNil ])
		ifTrue: [ 
			source first isUppercase
				ifTrue: [ ^ self compileAClassFrom: source notifying: aController ].
			category := Categorizer default ]
		ifFalse: [
			((category = self allLabel) and: [ self selectedMethod notNil ])
				ifTrue: [ category := self selectedMethod protocol ]].
	
	self compileAMethodFromCategory: category withSource: source notifying: aController