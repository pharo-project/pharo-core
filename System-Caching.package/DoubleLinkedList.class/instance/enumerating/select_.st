select: block
	| result |
	result := self class new.
	self do: [ :each |
		(block value: each)
			ifTrue: [ result add: each ] ].
	^ result