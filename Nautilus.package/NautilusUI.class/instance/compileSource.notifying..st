source code area
compileSource: aText notifying: aController

	| source category method |
	source := aText asString.
	category := self selectedCategory.
	method := self selectedMethod.
	category ifNil: [ method ifNotNil: [ category := method protocol ]].
	(category isNil and: [ method isNil ])
		ifTrue: [ 
			source first isUppercase
				ifTrue: [ self compileAClassFrom: source notifying: aController ]
				ifFalse: [ self compileAMethodFromCategory: Categorizer default withSource: source notifying: aController ]]
		ifFalse: [ | cat |
			((category = self allLabel) and: [ self selectedMethod notNil ])
				ifTrue: [ cat := self selectedMethod protocol ]
				ifFalse: [ cat := category ].
			self compileAMethodFromCategory: cat withSource: source notifying: aController ]