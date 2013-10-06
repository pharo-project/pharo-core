firedMouseUpCode
	"If the user has special mouseUpCodeToRun, then fire it once right now and return true, else return false"

	| evt |
	(self world isNil or: [self mouseUpCodeOrNil isNil]) ifTrue: [^false].
	evt := MouseEvent basicNew 
				setType: nil
				position: self center
				buttons: 0
				hand: self world activeHand.
	self programmedMouseUp: evt for: self.
	^true