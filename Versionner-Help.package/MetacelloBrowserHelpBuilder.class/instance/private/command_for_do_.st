command: aPragma for: class do: aBlock
	| factories |
	factories := class cmdNew perform: aPragma selector.
	factories isNil ifTrue: [ ^ self ].
	factories isCollection
		ifTrue: [ factories do: aBlock ]
		ifFalse: [ aBlock value: factories ]