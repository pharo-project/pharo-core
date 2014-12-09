positionAtTextIndex: textIndex
	"Answer the position, which corresponds to given text index.
	This method is symmetrical to 
	TxBasicTextPosition>>#textIndex. 
	
	Please note that converting text index<->position does not takes constant time, 
	because it requires linear scan from the beginning of text.

	Also note that text index does not corresponds to some the character index in text, 
	but to index of unique insertion point in text, with the exception that endpoints of adjacent spans
	considered as same(single) insertion point, not two separate ones.
	"

	^ self startPosition moveRight: textIndex