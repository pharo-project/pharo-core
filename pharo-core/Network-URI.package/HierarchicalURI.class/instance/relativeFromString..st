private
relativeFromString: aString
	| remainder authorityEnd |
	remainder := (aString beginsWith: '//')
		ifTrue: [
			authorityEnd := aString indexOf: $/ startingAt: 3.
			authorityEnd = 0
				ifTrue: [authorityEnd := aString size+1].
			self extractAuthority: (aString copyFrom: 3 to: authorityEnd-1)]
		ifFalse: [aString].
	self extractSchemeSpecificPartAndFragment: remainder