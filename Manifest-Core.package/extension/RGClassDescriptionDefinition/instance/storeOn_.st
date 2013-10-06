storeOn: aStream

	aStream nextPutAll: '('; nextPutAll: self class name; 
			nextPutAll: ' named: #'; nextPutAll: name;
			nextPut: $).
			