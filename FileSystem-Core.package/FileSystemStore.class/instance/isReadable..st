public
isReadable: aPath
	self nodeAt: aPath 
		ifPresent: [ :entry | ^ self basicIsReadable: entry ] 
		ifAbsent: [ ^ false ].
	