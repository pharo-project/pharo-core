result
	result example: self example.
	self do: [ self value ] 
		on: Error
		do: [ :exception | result returnValue: nil; unexpectedError: exception ].
	^ result