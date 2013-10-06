buildItemFor: anAPIMethod
	| args first |
	
	args := (anAPIMethod pragmas detect: [ :e | e keyword beginsWith: 'api:' ] ifNone: [ ^ nil ]) arguments.
	first := args first.

	first = #boolean
		ifTrue: [ ^ self buildBooleanItemFor: anAPIMethod ].
	first = #string
		ifTrue: [ ^ self buildStringItemFor: anAPIMethod ].
	first = #block
		ifTrue: [ ^ self buildBlockItemFor: anAPIMethod ].
	first = #inspect
		ifTrue: [ ^ self buildInspectItemFor: anAPIMethod ].
	first = #do
		ifTrue: [ ^ self buildDoItemFor: anAPIMethod ].
	first = #st
		ifTrue: [ ^ self buildStItemFor: anAPIMethod ].
	first = #integer
		ifTrue: [ ^ self buildIntegerItemFor: anAPIMethod ].
	first = #color
		ifTrue: [ ^ self buildColorItemFor: anAPIMethod  ].
	first = #event
		ifTrue: [ ^ self buildEventItemFor: anAPIMethod  ].
		
	^ self error.