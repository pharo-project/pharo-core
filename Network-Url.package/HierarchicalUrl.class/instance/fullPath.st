printing
fullPath
	| ans |
	ans := String new writeStream.
	path do: [ :pathElem |
		ans nextPut: $/.
		ans nextPutAll: pathElem encodeForHTTP. ].
	self query isNil ifFalse: [ 
		ans nextPut: $?.
		ans nextPutAll: self query. ].
	self fragment isNil ifFalse: [
		ans nextPut: $#.
		ans nextPutAll: self fragment encodeForHTTP. ].
	
	^ans contents