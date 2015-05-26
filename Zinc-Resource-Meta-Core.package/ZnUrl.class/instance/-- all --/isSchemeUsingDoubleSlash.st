isSchemeUsingDoubleSlash
	^ (self class schemesNotUsingDoubleSlash includes: self scheme) not