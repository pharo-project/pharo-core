computeOriginFor: aMorph
	| desiredTop desiredLeft |
	"self halt."
	aMorph textArea scrollSelectionIntoView: nil.
	desiredTop := (self originMorphFor: aMorph) positionInWorld y - 6.
						"unclear why 6 is the magic number"
	desiredLeft := (self originMorphFor: aMorph) right + aMorph positionInWorld x + 6.
	^ desiredLeft @ desiredTop