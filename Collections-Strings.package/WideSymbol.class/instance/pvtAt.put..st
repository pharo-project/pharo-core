private
pvtAt: index put: aCharacter
	"Primitive. Store the Character in the field of the receiver indicated by
	the index. Fail if the index is not an Integer or is out of bounds, or if
	the argument is not a Character. Essential. See Object documentation
	whatIsAPrimitive."

	self
		deprecated: 'use privateAt:put:'
		on: '2012-09-23'
		in: 'Pharo 2.0'.
	self privateAt: index put: aCharacter