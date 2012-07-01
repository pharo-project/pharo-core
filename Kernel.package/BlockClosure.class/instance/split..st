splitjoin
split: aSequenceableCollection 
	"Example:
		[ :char| char isSeparator ] split: 'aa bb cc dd'"
	
	| result position |
	
	result := OrderedCollection new: (aSequenceableCollection size / 2) asInteger.
	position := 1.
	
	aSequenceableCollection withIndexDo: [:element :idx |
		(self value: element) 
			ifTrue: [
				result add: (aSequenceableCollection copyFrom: position to: idx - 1).
				position := idx + 1 ]].
		
	result add: (aSequenceableCollection copyFrom: position to: aSequenceableCollection size).
	^ result