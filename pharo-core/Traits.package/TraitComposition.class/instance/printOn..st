printing
printOn: aStream
	self transformations isEmptyOrNil
		ifFalse: [
			self transformations
				do: [:each | aStream print: each]
				separatedBy: [aStream nextPutAll: ' + '] ]
		ifTrue: [aStream nextPutAll: '{}']
		