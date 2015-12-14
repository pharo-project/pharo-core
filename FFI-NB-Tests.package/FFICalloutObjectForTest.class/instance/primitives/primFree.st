primFree
	^ self 
		ffiCall: #( void free ( self ) )
		module: 'libc'