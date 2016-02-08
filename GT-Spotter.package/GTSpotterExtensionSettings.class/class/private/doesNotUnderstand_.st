doesNotUnderstand: aMessage
	aMessage arguments isEmpty
		ifTrue: [ ^ (self disabledExtensions includes: aMessage selector) not ].
	aMessage arguments size = 1
		ifTrue: [ ^ 
			aMessage arguments first 
				ifTrue: [ self disabledExtensions remove: aMessage selector allButLast ]
				ifFalse: [ self disabledExtensions add: aMessage selector allButLast ] ].
	^ super doesNotUnderstand: aMessage