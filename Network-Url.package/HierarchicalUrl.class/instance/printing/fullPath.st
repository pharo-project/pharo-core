fullPath
	| ans |
	ans := String new writeStream.
	path do: [ :pathElem |
		ans nextPut: $/.
		ans nextPutAll: pathElem urlEncoded ].
	self query ifNotNil: [ 
		ans nextPut: $?.
		ans nextPutAll: self query. ].
	self fragment ifNotNil: [
		ans nextPut: $#.
		ans nextPutAll: self fragment urlEncoded ].
	
	^ ans contents