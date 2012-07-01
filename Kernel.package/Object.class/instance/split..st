splitjoin
split: aSequenceableCollection
	"optimized version for single delimiters:
	Example:
		$/ split: '/foo/bar'"
		
	| result position oldPosition |
	
	result := OrderedCollection new: (aSequenceableCollection size / 2) asInteger.
	position := 1.
	oldPosition := position.
	
	position := aSequenceableCollection indexOf: self startingAt: position.
	[ position > 0 ] whileTrue: [
		result add: (aSequenceableCollection copyFrom: oldPosition to: position - 1).
		position := position + 1.
		oldPosition := position.
		position := aSequenceableCollection indexOf: self startingAt: position.
	].

	result add: (aSequenceableCollection copyFrom: oldPosition to: aSequenceableCollection size).
	^ result
