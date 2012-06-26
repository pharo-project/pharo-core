menu actions
selectMethodsForThisClass
	| name |
	self currentChange ifNil: [ ^self ].
	name := self currentChange methodClassName.
	name ifNil: [ ^self ].
	^self selectSuchThat: [ :change | change methodClassName = name ].