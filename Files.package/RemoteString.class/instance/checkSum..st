private
checkSum: aString
	"Construct a checksum of the string.  A three byte number represented as Base64 characters."
	| sum shift bytes |
	sum := aString size.
	shift := 0.
	aString do: [:char |
		(shift := shift + 7) > 16 ifTrue: [shift := shift - 17].
			"shift by 7 to keep a change of adjacent chars from xoring to same value"
		sum := sum bitXor: (char asInteger bitShift: shift)
	].
	bytes := ByteArray new: 3.
	sum := sum + 16r10000000000.
	1 to: 3 do: [:ind | bytes at: ind put: (sum digitAt: ind)].
	^bytes base64Encoded