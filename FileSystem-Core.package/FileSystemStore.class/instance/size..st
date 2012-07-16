public
size: aPath
	^ self 
		nodeAt: aPath 
		ifPresent: [ :entry | ^ self basicSize: entry ] 
		ifAbsent: [ ^ false ]
	