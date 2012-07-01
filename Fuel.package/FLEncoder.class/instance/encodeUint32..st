encoding
encodeUint32: aSmallInteger 
	"Append to the receiver an Integer as the next 4 bytes."
	1 to: 4 do: [:i | stream nextPut: (aSmallInteger digitAt: 4+1-i)].