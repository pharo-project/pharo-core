pathOn: builder
	
	builder absolute.
		
	self points do: [ :each |
		each = self points	first
			ifTrue: [ builder moveTo: each ]
			ifFalse: [ builder lineTo: each ] ].
		
	self points isEmpty ifFalse: [ builder lineTo: self points first ]