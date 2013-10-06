createStringStartingAt: index for: bytes

	| results candidate data |
	data := String new: bytes*2.
	results := data writeStream.
	index to: index+bytes -1 do: 
		[:i |
		candidate := ((self at: i) printStringBase: 16) last: 2.
		candidate first = $r ifTrue: [candidate := String with: $0 with: candidate last].
		results nextPutAll: candidate].
	^data asLowercase