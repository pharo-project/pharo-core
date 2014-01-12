reject: block
	| result |
	result := self class new.
	self do: [ :each |
		(block value: each)
			ifFalse: [ result add: each ] ].
	^ result