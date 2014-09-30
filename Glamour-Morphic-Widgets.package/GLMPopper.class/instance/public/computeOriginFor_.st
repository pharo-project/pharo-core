computeOriginFor: aMorph	
	| desiredTop desiredLeft |
	"self halt."
	aMorph textArea scrollSelectionIntoView: nil.
	desiredTop := aMorph textArea cursor positionInWorld y - 6.
						"unclear why 6 is the magic number"
	desiredLeft := aMorph textArea cursor right + aMorph positionInWorld x + 6.
	^ desiredLeft @ desiredTop