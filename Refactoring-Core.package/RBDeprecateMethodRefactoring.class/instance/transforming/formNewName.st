formNewName
	| newMethod protocol selectorParts arguments name |
	newMethod := class methodFor: newSelector.
	protocol := newMethod protocols.
	arguments := newMethod parseTree arguments ifNil: [ '' ].
	selectorParts := newMethod parseTree selectorParts asOrderedCollection ifNil: [ '' ].
	(selectorParts size >= 1 and: [ arguments size >= 1 ])
		ifTrue: [ 1 to: selectorParts size do: [ :i | selectorParts add: (arguments at: i) token afterIndex: 2 * i - 1 ] ].
	name := String new.
	(selectorParts size >= 1 and: [ arguments size >= 1 ])
		ifTrue: [ 1 to: selectorParts size do: [ :i | name := name , (selectorParts at: i) value , ' ' ] ].
	name = ''
		ifTrue: [ name := newSelector asString ].
	^ name