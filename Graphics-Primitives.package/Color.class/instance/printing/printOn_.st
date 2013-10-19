printOn: aStream
	| name |
	(name := self name).
	name = #unnamed
		ifFalse: [ 
			^ aStream
				nextPutAll: 'NewColor ';
				nextPutAll: name ].
	self storeOn: aStream