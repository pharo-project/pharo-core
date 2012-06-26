enumerating
select: aBlock 
	"Use copyEmpty instead of self species new to give subclasses a chance to initialize additional inst vars."

	"Note: this code could be moved to super"
	
	| newCollection |
	newCollection := self copyEmpty.
	self do: [:each | (aBlock value: each) ifTrue: [newCollection add: each]].
	^newCollection