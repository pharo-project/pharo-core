printElementsOn: aStream
	aStream nextPut: $(.
	self size > 100
		ifTrue: [
			aStream nextPutAll: 'size '.
			self size printOn: aStream]
		ifFalse: [
			self associations doWithIndex: [:associaiton :i |
				aStream
					print: associaiton key;
					nextPutAll: '->';
					print: associaiton value.
				(i < self size)
					ifTrue: [aStream space]]].
	aStream nextPut: $).