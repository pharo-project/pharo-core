accessing
ascent
	ascent ifNil:[ascent := ttcDescription ascender * self pixelSize // (ttcDescription ascender - ttcDescription descender) * Scale y].
	^ (fallbackFont notNil
			and: [fallbackFont ascent > ascent])
		ifTrue: [fallbackFont ascent]
		ifFalse: [ascent]