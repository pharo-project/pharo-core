primCreate: size
	self 
		ffiCall: #( #FFICalloutObjectForTest malloc( size_t size ) )
		module: 'libc'	