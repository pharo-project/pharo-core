allReifications
	| reifications |
	reifications := self arguments asSet. 
	self metaObject isSymbol ifTrue: [reifications add: self metaObject].
	self condition ifNotNil: [reifications addAll: (self reificationsFor: self condition)].
	^reifications