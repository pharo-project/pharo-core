growTo: anInteger	
	| array |
	anInteger <= self table size ifTrue: [ self error: 'oops' ].
	array := Array new: anInteger.
	self table do: [ :each |
		self addAllOf: each to: array ].
	self table: array.
	self capacity: (anInteger * self loadfactor) asInteger