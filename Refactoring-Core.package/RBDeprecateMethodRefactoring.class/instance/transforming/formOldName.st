formOldName
	| oldMethod protocol selectorParts arguments name |
	oldMethod := class methodFor: oldSelector.
	protocol := oldMethod protocols.
	selectorParts := oldMethod parseTree selectorParts asOrderedCollection ifNil: [ '' ].
	arguments := oldMethod parseTree arguments ifNil: [ '' ].
	(selectorParts size >= 1 and: [ arguments size >= 1 ])
		ifTrue: [ 1 to: selectorParts size do: [ :i | selectorParts add: (arguments at: i) token afterIndex: 2 * i - 1 ] ].
	name := String new.
	(selectorParts size >= 1 and: [ arguments size >= 1 ])
		ifTrue: [ 1 to: selectorParts size do: [ :i | name := name , (selectorParts at: i) value , ' ' ] ].
	name = ''
		ifTrue: [ name := oldSelector asString ].
	^ name