fullPath
	| ans |
	ans := String new writeStream.
	path do: [ :pathElem |
		ans nextPut: $/.
		ans nextPutAll: pathElem encodeForHTTP. ].
	self query ifNotNil: [ 
		ans nextPut: $?.
		ans nextPutAll: self query. ].
	self fragment ifNotNil: [
		ans nextPut: $#.
		ans nextPutAll: self fragment encodeForHTTP. ].
	
	^ans contents