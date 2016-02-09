ffiToLower: c
	^ self ffiCall: #( char tolower (char c) )