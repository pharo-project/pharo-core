private
isBarStriped

	self flag: 'if absent?'.	
	^ (bar valueOfProperty: #useStripes) ifNil: [false].