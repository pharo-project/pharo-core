collect: block
	| result |
	result := self class new.
	self do: [ :each |
		result add: (block value: each) ].
	^ result