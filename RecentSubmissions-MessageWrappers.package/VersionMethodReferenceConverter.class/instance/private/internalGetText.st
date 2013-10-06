internalGetText
	
	^ String streamContents:[ :s |
			s << 'Version ' << (self versionOfAMethod: method) asString ]