splitjoin
split: aSequenceableCollection
	
	"Split a collection by myself as a delimitier.
	see Object >> split: for optimized version for single delimiters.
	Example:
		'||' split: 'foo||bar||2'"
	
	| result position oldPosition |
	
	result := OrderedCollection new: (aSequenceableCollection size / 2) asInteger.
	position := 1.
	oldPosition := position.
	position := aSequenceableCollection indexOfSubCollection: self startingAt: position.
	
	[ position > 0 ] whileTrue: [
		result add: (aSequenceableCollection copyFrom: oldPosition to: position - 1).
		position := position + self size.
		oldPosition := position.
		position := aSequenceableCollection indexOfSubCollection: self startingAt: position.
	].

	result add: (aSequenceableCollection copyFrom: oldPosition to: aSequenceableCollection size).
	^ result

