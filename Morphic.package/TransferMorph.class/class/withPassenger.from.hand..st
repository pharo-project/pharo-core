instance creation
withPassenger: anObject from: source hand: dragHand
	| ddm |
	ddm := self new.
	ddm passenger: anObject.
	ddm source: source.
	"If the client hasn't provided a hand use the currently active hand"
	ddm dragHand: (dragHand ifNil:[ActiveHand]).
	ddm shouldCopy: ddm dragHand shiftPressed.
	^ ddm